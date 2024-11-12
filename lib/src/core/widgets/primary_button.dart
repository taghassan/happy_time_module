import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:happy_time_module/src/core/utils/extensions.dart';

import '../values/colors.dart';


class PrimaryButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final double? height, borderRadius, fontSize, iconSize;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final TextAlign? textAlign;
  final IconData? btnIcon;
final bool? disableAble;
  const PrimaryButton(
      {super.key,
      this.textAlign,
      this.fontSize,
      this.iconSize,
      required this.text,
      required this.onPressed,
      this.height,
      this.borderRadius,
      this.backgroundColor,
      this.foregroundColor,
      this.btnIcon,
      this.disableAble=true,
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color:
              onPressed == null  ?  (disableAble==true?colorGray: (backgroundColor ?? primaryColor))  : backgroundColor ?? primaryColor,
          //foregroundColor ?? colorWhiteSecondary
          borderRadius: BorderRadius.circular(borderRadius ?? 5),
          border: onPressed == null ? (disableAble==true? Border.all(color: redButton,width: 0.3): null)  : null,
        ),
        child: btnIcon != null
            ? Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    btnIcon,
                    size: iconSize,
                    color: foregroundColor ?? colorWhiteSecondary,
                  ),
                  context.sizedBoxWidthMicro,
                  Text(
                    text.tr,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                        color: foregroundColor ?? colorWhiteSecondary,
                        fontSize: fontSize),
                    textAlign: textAlign ?? TextAlign.center,
                  ),
                ],
              )
            : Text(
                text.tr,
                style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: foregroundColor ?? colorWhiteSecondary,
                    fontSize: fontSize),
                textAlign: textAlign ?? TextAlign.center,
              ),
      ),
    );
  }
}
