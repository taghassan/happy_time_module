
import 'dart:io';
import 'dart:math';
import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:dio/dio.dart';
import 'package:intl/intl.dart';
import 'package:happy_time_module/src/core/values/colors.dart' as colors;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:happy_time_module/src/core/widgets/primary_button.dart';

part 'widgets/box_decoration.dart';

extension ContextExtension on BuildContext {
  double dynamicHeight(double value) => MediaQuery.of(this).size.height * value;

  double dynamicWidth(double value) => MediaQuery.of(this).size.width * value;

  ThemeData get theme => Theme.of(this);


}

extension SplitStringBy on String {
  List<String> splitByLength(int length) =>
      [substring(0, length), substring(length)];
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }

  bool isValidPhoneNumber(String? value) =>
      RegExp(r'(^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$)').hasMatch(value ?? '');

}

extension WillPopAction on Widget {
  addWillPopScope({String? message}) => PopScope(
      onPopInvoked: (didPop) async {
        return await Get.dialog(
            AlertDialog(
              actions: [
                PrimaryButton(
                  text: "confirm".tr,
                  onPressed: () => Get.back(canPop: true, result: true),
                ),
                PrimaryButton(
                  text: "cancel".tr,
                  onPressed: () => Get.back(canPop: true, result: false),
                  backgroundColor: colors.redButton,
                ),
              ],
              actionsAlignment: MainAxisAlignment.center,
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Get.context!.sizedBoxHeightExtraSmall,
                  Text(" ${message ?? "close_dialog_message".tr}")
                ],
              ),
            ),
            barrierDismissible: false);
      },
      child: this);

  animatedDialog(
          {Function()? onConfirm,
          Function()? onCancel,
          String? confirmText,
          String? cancelText,
          Color? cancelBtnColor,
          IconData? cancelBtnIcon,
          IconData? confirmBtnIcon,
          bool animate = true,
          double? cancelBtnFontSize,
          double? confirmBtnFontSize,
            bool?barrierDismissible
          }) =>
      Get.dialog(
          AlertDialog(
            actions: [
              if(onConfirm!=null)
              PrimaryButton(
                text: confirmText ?? "confirm".tr,
                onPressed: onConfirm,
                backgroundColor: colors.colorGreen,
                btnIcon: confirmBtnIcon,
                fontSize: confirmBtnFontSize,
              ).size(width: Get.width*0.3),
              if(onCancel!=null)
              PrimaryButton(
                btnIcon: cancelBtnIcon,
                text: cancelText ?? "cancel".tr,
                onPressed: onCancel,
                backgroundColor: cancelBtnColor ?? colors.redButton,
                fontSize: cancelBtnFontSize,
              ).size(width: Get.width*0.3),
            ],
            actionsAlignment: MainAxisAlignment.center,
            content: this,
          )
              .animate()
              // .shake(
              //   delay: 0.ms,
              //   duration: 300.ms,
              // )
              .scaleXY(begin: 1, end: 1.1, duration: 150.ms)
              .scaleXY(delay: 150.ms, begin: 1.1, end: 1, duration: 150.ms),
          barrierDismissible:barrierDismissible?? false);

  onDialog(
          {Function()? onConfirm,
          Function()? onCancel,
          String? confirmText,
          String? cancelText,
          Color? cancelBtnColor,
          bool hasActions = false}) =>
      Get.dialog(
          AlertDialog(
            actions: hasActions
                ? [
                    PrimaryButton(
                      text: confirmText ?? "confirm".tr,
                      onPressed: onConfirm,
                      backgroundColor: colors.colorGreen,
                    ),
                    PrimaryButton(
                      text: cancelText ?? "cancel".tr,
                      onPressed: onCancel,
                      backgroundColor: cancelBtnColor ?? colors.redButton,
                    ),
                  ]
                : [
                    PrimaryButton(
                      text: confirmText ?? "close".tr,
                      onPressed: () => Get.back(),
                      backgroundColor: colors.primaryColor,
                    ),
                  ],
            actionsAlignment: MainAxisAlignment.center,
            content: this,
          ),
          barrierDismissible: false);

  size({double? width, double? height}) => SizedBox(
        width: width,
        height: height,
        child: this,
      );

  center() => Center(
        child: this,
      );

  Widget toRoundShape(
      {Color? backgroundColor, double? radius, bool isApplyShimmer = false}) {
    return Container(
      decoration: BoxDecoration(
          color: backgroundColor ?? colors.primaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(radius ?? 20.0),
          )),
      padding: const EdgeInsets.all(6.0),
      child: this,
    ).applyShimmer(enable: isApplyShimmer);
  }

  Widget toExpansionPanelList(
      {required Object value,
      required Widget header,
      void Function(int, bool)? expansionCallback}) {
    return ExpansionPanelList.radio(
      expansionCallback: expansionCallback,
      children: [
        ExpansionPanelRadio(
          value: value,
          canTapOnHeader: true,
          headerBuilder: (context, isExpanded) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 15.0,
              ),
              child: header,
            );
          },
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5.0,
              vertical: 5.0,
            ),
            child: this,
          ),
        ),
      ],
    );
  }

  Widget isVisible({bool isVisible = true}) {
    return isVisible ? this : Container();
  }
}

extension Animation on Widget {
  Animate welcomeMessageAnimation() =>
      animate().fade(duration: 600.ms).then(delay: 100.ms).slide(
          begin: const Offset(0.0, -0.2),
          end: const Offset(0.0, 0.0),
          curve: Curves.easeInOut);

  Animate homeScreenCustomAnimate(int i) => animate(delay: 200.ms).custom(
        duration: 400.ms,
        builder: (context, value, child) {
          double divider = 9;
          double angle = (1.6 * pi * i / divider);
          return Transform.translate(
            offset: Offset(-123 * cos(value + angle), 123 * sin(value + angle)),
            child: child,
          );
        },
      );

  Animate textAnimation() => animate(delay: 300.ms).flip();
}

extension Lang on GetInterface {
  bool get isArabicLocale => (locale == const Locale('ar'));
}

// 1 500
// x 300
extension RatioExtension on num {
  double get dh => (this / Get.height) * Get.height;

  double get dw => (this / Get.width) * Get.width;
}

extension PaddingValues on BuildContext {
  /// Width
  double get paddingUltraSmallWidth => dynamicWidth(0.01);

  double get paddingExtraSmallWidth => dynamicWidth(0.02);

  double get paddingSmallWidth => dynamicWidth(0.04);

  double get paddingDefaultWidth => dynamicWidth(0.06);

  double get paddingLargeWidth => dynamicWidth(0.08);

  double get paddingExtraLargeWidth => dynamicWidth(0.1);

  /// Height
  double get paddingUltraSmallHeight => dynamicHeight(0.005);

  double get paddingExtraSmallHeight => dynamicHeight(0.01);

  double get paddingSmallHeight => dynamicHeight(0.02);

  double get paddingDefaultHeight => dynamicHeight(0.04);

  double get paddingLargeHeight => dynamicHeight(0.08);

  double get paddingExtraLargeHeight => dynamicHeight(0.08);
}

extension EmptyWidget on BuildContext {
  Widget get sizedBoxHeightMicro => SizedBox(
        height: dynamicHeight(0.005),
      );

  Widget get sizedBoxHeightUltraSmall => SizedBox(
        height: dynamicHeight(0.01),
      );

  Widget get sizedBoxHeightExtraSmall => SizedBox(
        height: dynamicHeight(0.02),
      );

  Widget get sizedBoxHeightSmall => SizedBox(
        height: dynamicHeight(0.04),
      );

  Widget get sizedBoxHeightDefault => SizedBox(
        height: dynamicHeight(0.06),
      );

  Widget get sizedBoxHeightLarge => SizedBox(
        height: dynamicHeight(0.08),
      );

  Widget get sizedBoxHeightExtraLarge => SizedBox(
        height: dynamicHeight(0.1),
      );

  Widget get sizedBoxWidthExtraSmall => SizedBox(
        width: dynamicWidth(0.02),
      );

  Widget get sizedBoxWidthUltraSmall => SizedBox(
        width: dynamicWidth(0.01),
      );

  Widget get sizedBoxWidthMicro => SizedBox(
        width: dynamicWidth(0.01),
      );

  Widget get sizedBoxWidthSmall => SizedBox(
        width: dynamicWidth(0.04),
      );

  Widget get sizedBoxWidthDefault => SizedBox(
        width: dynamicWidth(0.06),
      );

  Widget get sizedBoxWidthLarge => SizedBox(
        width: dynamicWidth(0.08),
      );

  Widget get sizedBoxWidthExtraLarge => SizedBox(
        width: dynamicWidth(0.1),
      );

  Widget get sizedBoxHeightFill => SizedBox(
        height: Get.width,
      );

  Widget get sizedBoxWidthFill => SizedBox(
        width: Get.width,
      );


}

extension ShowSnackBar on BuildContext {
  showSimpleSnackBar(String msg) =>
      ScaffoldMessenger.of(this).showSnackBar(SnackBar(
          content: Text(msg,
              style: Theme.of(this)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.white))));
}

extension ToErrorText on String {
  Text toErrorText() => Text(
        (this).tr,
        style: Theme.of(Get.context!)
            .textTheme
            .labelMedium
            ?.copyWith(color: colors.redButton),
    textAlign: TextAlign.center,
      );
}

extension DateOnlyCompare on DateTime {
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  bool isToDayDate() {
    DateTime other = DateTime.now();
    return year == other.year && month == other.month && day == other.day;
  }
}


String printDuration(Duration duration) {
  String negativeSign = duration.isNegative ? '-' : '';
  String twoDigits(int n) => n.toString().padLeft(2, "0");
  String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60).abs());
  String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60).abs());
  return "$negativeSign${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
}

extension TableWidgets on BuildContext {
  TableRow headerTableRow(List<String> items) => TableRow(
      decoration: BoxDecoration(
        color: const Color(0xfff5f6fa),
        borderRadius: BorderRadius.circular(16),
      ),
      children: items
          .map(
            (e) => TableCell(
              child: SizedBox(
                height: 60,
                child: Center(
                  child: Text(e,
                      style: Theme.of(this).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.grey),
                      textAlign: TextAlign.center),
                ),
              ),
            ),
          )
          .toList());

  // Widget appLogo({double? width}) => SizedBox(
  //       width: width ?? Get.width * 0.8,
  //       child: Image.asset(Assets.imagesGovtded),
  //     );
  //
  // Widget userAvatar({String? path}) => SizedBox(
  //       width: 70.0,
  //       child: Image.asset(path ?? Assets.iconsIcAvatar),
  //     );
  //
  // Widget get loadingAnimation => Lottie.asset(
  //       height: 120.0,
  //       width: 120.0,
  //       Assets.lottiefilesAdedPreloader,
  //     );

  //
  // Widget get loadingAnimation => Lottie.asset(
  //       height: 120.0,
  //       width: 120.0,
  //       Assets.lottiefilesLoading,
  //     );
  //
  //

  String? get today {
    DateTime now = DateTime.now();
    return now.dateFormatToHuman();
  }
}

extension DaFormatter on DateTime {
  String? dateFormatToHuman() {
    String formattedDate = DateFormat.yMMMd().add_jm().format(this);
    return formattedDate;
  }

  String? dateOnlyFormatToHuman() {
    String formattedDate = DateFormat.yMMMd().format(this);
    return formattedDate;
  }

  String? timeOnlyFormatToHuman() {
    String formattedDate = DateFormat.Hms().format(this);
    return formattedDate;
  }

  String? yearOnlyFormatToHuman() {
    String formattedDate = DateFormat.y().format(this);
    return formattedDate;
  }

  String? dateOnlyFormat() {
    String formattedDate = DateFormat.yMMMd().format(this);
    return formattedDate;
  }
}

extension DateFormatter on String? {
  DateTime? stringToDateFormat() {
    return DateTime.tryParse("$this");
  }
}

extension NullCheck on String? {
  bool isNullOrEmpty() {
    String str = this ?? '';
    return str.isNotEmpty;
  }

  bool toBoolean() {
    String str = this!;
    return str != '0' && str != 'false' && str != '';
  }
}

extension Iterables<E> on Iterable<E> {
  Map<K, List<E>> groupBy<K>(K Function(E) keyFunction) => fold(
      <K, List<E>>{},
      (Map<K, List<E>> map, E element) =>
          map..putIfAbsent(keyFunction(element), () => <E>[]).add(element));
}

extension ConvertDioException on DioException {
  String? handleDioException() {
    String errorMessage = '';
    switch (type) {
      case DioExceptionType.connectionTimeout:
        errorMessage = "Connection timeout";
        break;

      case DioExceptionType.sendTimeout:
        errorMessage = "Send timeout";
        break;

      case DioExceptionType.receiveTimeout:
        errorMessage = "Receive timeout";
        break;

      case DioExceptionType.badResponse:
        errorMessage = "Bad response: ${response?.statusCode}";
        break;

      case DioExceptionType.cancel:
        errorMessage = "Request cancelled";
        break;

      case DioExceptionType.unknown:
        if (error is SocketException) {
          errorMessage = "Connection error: ${error?.toString()}";
        } else {
          errorMessage = "Unknown error";
        }
        break;

      case DioExceptionType.badCertificate:
        errorMessage = "Bad certificate error";
        break;

      case DioExceptionType.connectionError:
        if (error is SocketException) {
          errorMessage = "Connection error: ${error?.toString()}";
        } else {
          errorMessage = "Unknown error";
        }
        break;
    }
    return errorMessage;
  }
}

extension MagicWidgets on Widget{
  toCardContainer ({Color? color}){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 6.0),
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color:color?? Colors.white,

      ),
      child: this,);
  }
}

extension Words on String?{
  String extractFirstWord() {
    final regex = RegExp(r'https?:\/\/(?:www\.)?([^\/]+)');
    final match = regex.firstMatch(this??'');
    if (match != null) {
      String domain = match.group(1) ?? '';
      return domain.split('.').first; // Extract the first word of the domain.
    }
    return '';
  }
}
