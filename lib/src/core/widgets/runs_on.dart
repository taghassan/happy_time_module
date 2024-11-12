import 'dart:io';

import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' as intl;
import 'package:happy_time_module/src/core/controller/base_controller.dart';
import 'package:happy_time_module/src/core/injectable/configuration.dart';
import 'package:happy_time_module/src/core/utils/extensions.dart';
import 'package:happy_time_module/src/core/widgets/input_widget.dart';
import 'package:happy_time_module/src/core/widgets/primary_button.dart';

import '../../routes/routes.dart';
import '../injectable/injection.dart';
import '../storage/user_session_storage.dart';
import '../utils/logger_utils.dart';
import '../utils/snack_alert.dart';

//ignore: must_be_immutable
class InspectorsModel extends Equatable {
  String? _id, _name;

  InspectorsModel({
    final String? name,
    final String? id,
  }) {
    _id = id;
    _name = name;
  }

  InspectorsModel.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
  }

  String? get name => _name;

  String? get id => _id;

  @override
  List<Object?> get props => [];
}

class RunsOnController extends BaseController with StateMixin {
  String selectedEnv = UserSessionStorage.getEnvironment;
  InspectorsModel? selectedUser;
  InspectorsModel? selectedItem;
  String? selectedUserId;

  GlobalKey<FormState> developerPasswordForm = GlobalKey<FormState>();
  TextEditingController developerPasswordController = TextEditingController();
  TextEditingController inspectorIDController = TextEditingController();
  bool obscureText = false;

  @override
  void onInit() {
    selectedEnv = happyTimeGetIt<Configuration>().appEnvironment;

    update();

    change(null, status: RxStatus.success());
    super.onInit();
  }

  @override
  void onClose() {
    developerPasswordController.dispose();
    inspectorIDController.dispose();

    super.onClose();
  }

  void closeApp() {
    exit(0);
  }

  selectEnvironment() async {
    try {
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Form(
            key: developerPasswordForm,
            child: Column(
              children: [
                GetBuilder<RunsOnController>(
                    init: this,
                    builder: (logic) => Directionality(
                          textDirection: TextDirection.ltr,
                          child: InputWidget(
                            hintText: 'enter_developer_password'.tr,
                            controller: developerPasswordController,
                            validator: (p0) {
                              if (p0 == null || p0.isEmpty) {
                                return 'required'.tr;
                              }

                              return null;
                            },
                            obscureText: obscureText,
                            maxLines: 1,
                            showDefaultSuffixIcon: false,
                            suffixIcon: obscureText
                                ? Icons.visibility_off_outlined
                                : Icons.visibility_outlined,
                            onTap: () {
                              obscureText = !obscureText;
                              update();
                            },
                          ),
                        ))
              ],
            ),
          ),
        ],
      ).animatedDialog(
        onConfirm: () {
          if (developerPasswordForm.currentState != null &&
              developerPasswordForm.currentState!.validate()) {
            DateTime now = DateTime.now();
            String formattedDate = intl.DateFormat('ddMM', 'en').format(now);

            String code=kDebugMode?"12345": "$formattedDate@102030@$formattedDate";

            AppLogger.it.logInfo(
                "userInput ${developerPasswordController.text} --- \nformattedDate $code => \n${developerPasswordController.text == code}");

            if (developerPasswordController.text == code) {
              Get.back();
              developerPasswordController.clear();
              Get.to(() => const SelectEnvDialogWidget());
            } else {
              SnackAlert.showError(title: '', message: 'wrong_password');
            }
            //
          }
        },
        onCancel: () => Get.back(),
      );
    } catch (e) {
      if (kDebugMode) {
        AppLogger.it.logError(e.toString());
      }
    }
  }
}

class RunsOnWidget extends GetView<RunsOnController> {
  RunsOnWidget({super.key}) {
    if (!Get.isRegistered<RunsOnController>()) {
      Get.lazyPut(() => RunsOnController(), fenix: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (state) => RawGestureDetector(
        gestures: <Type, GestureRecognizerFactory>{
          LongPressGestureRecognizer:
              GestureRecognizerFactoryWithHandlers<LongPressGestureRecognizer>(
            () => LongPressGestureRecognizer(
              debugOwner: this,
              duration: const Duration(seconds: kDebugMode ? 1 : 10),
            ),
            (LongPressGestureRecognizer instance) {
              instance.onLongPress = () {
                controller.selectEnvironment();
              };
            },
          ),
        },
        child: Column(
          children: [
            const Divider(),
            Text(
              "${"runs_on".tr}\n${happyTimeGetIt<Configuration>().name.tr} - ${kDebugMode ? 'Debug 🐞' : 'release 🚀'}"
                  .tr,
              textAlign: TextAlign.center,
            ).toCenter(),
            if (happyTimeGetIt<Configuration>().name != 'production' || kDebugMode) ...[
              Text(happyTimeGetIt<Configuration>().getBaseUrl),
            ],
            Text("version ${UserSessionStorage.version} ")
          ],
        ),
      ),
    );
  }
}

class SelectEnvDialogWidget extends GetView<RunsOnController> {
  const SelectEnvDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (state) => Scaffold(
          appBar: AppBar(
            title: Text('select_environment'.tr),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [

                Get.context!.sizedBoxHeightExtraSmall,
                const Divider(),
                Get.context!.sizedBoxHeightExtraSmall,
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: listOfEnv.map((env) {
                    return SizedBox(
                      width: Get.width,
                      child: RadioListTile<String>(
                        title: Text(env.tr),
                        value: env,
                        groupValue: controller.selectedEnv,
                        onChanged: (String? value) {
                          if (value != null) {
                            controller.selectedEnv = value;
                            controller.update();
                          }
                        },
                      ),
                    );
                  }).toList(),
                ),
                Get.context!.sizedBoxHeightExtraSmall,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    PrimaryButton(
                      onPressed: () => Get.back(),
                      text: 'close'.tr,
                    ).size(width: Get.width * 0.4),
                    PrimaryButton(
                      onPressed: () async {
                        if (controller.selectedEnv != "") {
                          await happyTimeGetIt.reset();
                          configureDependencies(controller.selectedEnv);
                          UserSessionStorage.setEnvironment(
                              controller.selectedEnv);
                          AppLogger.it.logInfo(happyTimeGetIt<Configuration>().getBaseUrl);
                          // setState(() {});
                        }
                        controller.update();
                        Get.back();

                        if (Get.currentRoute == Routs.homeRoute) {
                          Get.offAllNamed(Routs.homeRoute);
                        } else {
                          Get.offAllNamed(Routs.loginRoute);
                        }

                        // await Get.deleteAll(force: true); //deleting all controllers
                        // Phoenix.rebirth(Get.context!); // Restarting app
                        // Get.reset(); // resetting getx
                      },
                      text: 'apply'.tr,
                    ).size(width: Get.width * 0.4),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
