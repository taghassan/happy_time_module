import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happy_time_module/src/core/utils/extensions.dart';
import 'package:happy_time_module/src/core/widgets/background_image_with_overlay.dart';

enum DisplayMode { list, map, calender }

//inspection Type



enum AppLayoutTheme { newTheme, oldTheme }

enum ActionTypeEnum { insert, update, followUp }

enum HomeMenuEnum {
init
}

class AppConstants {

static String placeHolderUrl='https://media.istockphoto.com/id/1409329028/vector/no-picture-available-placeholder-thumbnail-icon-illustration-design.jpg?s=612x612&w=0&k=20&c=_zOuJu755g2eEUioiOUdz_mHKJQJn-tDgIAhQzyeKUQ=';

static String signature='308202e4308201cc020101300d06092a864886f70d010105050030373116301406035504030c0d416e64726f69642044656275673110300e060355040a0c07416e64726f6964310b30090603550406130255533020170d3233303230393135303331385a180f32303533303230313135303331385a30373116301406035504030c0d416e64726f69642044656275673110300e060355040a0c07416e64726f6964310b300906035504061302555330820122300d06092a864886f70d01010105000382010f003082010a0282010100e37849f7f838e895872a84329771f19f4ac4fe888de84dc11694bfee21581c359e3919224a2bd3ee79ccd589c2386e4a80662a11064ae4356a9431f0f4db0a4ab95ec0fb726ba2f588af2e29651f5af2c8f93ada12ede4a5a441a1ea6c5a499dd5aec1f0ae6d94328e9d63543f257bfb1b085495da4e7203982a8d5ea81d492c2fd0ccdd457309190c7650010ef6059b711d30a02762b01ab1810934dfd139775ae67f986ea3336fa532e1ccad040672f4899603979fbd9d64e662ecaaf0f1d3dfbdb44e919155568e72572b39df56fdcd5075e3d1e377ae6d462ad491890ee5ac1a03d3c99a056e6e7d0b92107dd144a59cb91af2e259c45c7a4c41611d86710203010001300d06092a864886f70d010105050003820101004027292a2bd650b7da7fafba6058246cefa27f6c2c33575049841bf94f3d0cfe3ee65be7bdb64be051c3eac8bbd464ab2fb444ce55e7ad7c03210da5babed8d76b6ff5699bab6ad25f033b598404e755c4f2ec1eab6aa82b256ad534836dfa183cba5096daaa9c5098c60cd8e76f3f4f99d8b30a39fc2855017a3f27607416b5e52d72a28c7dfc056782b2bdf2e2e0a3b0920369d0ad11b27147fb6d8a20ec7f5f7a853cd89107e33b858c7d7d3858f12e844b28de902c0b73055eba5d8b4eeadeb2dfbf8c9f92d6e407f49a425605d35f9127b1d3fc88bfed686cf4bcd30a76b55c738ea7ea5cc79a9c229fcfc744d7fcf1fd06b7f0a0fbdfabb18e1343e724';
static String hash256='0f681655261f9ca2fa86d0a07f696a0e119f0ec756f9709ab192f7cdd8699445';
static String userAgent='Mozilla/5.0 (Linux; Android 10; Pixel 4 XL Build/QP1A.191005.007) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Mobile Safari/537.36';
}

enum DataSourceEnum { local, network }

class InspectionReportFormItemsModel {
  String? label;
  Widget? widget;
  Widget? header;
  bool? value;
  void Function(int, bool)? expansionCallback;

  InspectionReportFormItemsModel(
      {this.label,
      this.widget,
      this.header,
      this.value,
      this.expansionCallback});
}

class InspectionItemsPartsDialog extends StatelessWidget {
  final Widget child;

  const InspectionItemsPartsDialog({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BackgroundImageWithOverlayWidget(
      child: Column(
        children: [
          Expanded(
              child: SingleChildScrollView(
            child: child,
          )),
          context.sizedBoxHeightExtraSmall,
          TextButton(onPressed: () => Get.back(), child: Text('close'.tr))
        ],
      ),
    );
  }
}
