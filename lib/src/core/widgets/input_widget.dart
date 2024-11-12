import 'package:flutter/material.dart';
import 'package:happy_time_module/src/core/utils/extensions.dart';

import '../values/colors.dart';


class InputWidget extends StatelessWidget {
  final String? hintText;
  final IconData? suffixIcon;
  final bool obscureText;
  final bool? readOnly;
  final double? borderRadius;
  final EdgeInsets? padding,margin;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final String? Function(String?)? validator, onChanged;
  final void Function(String?)? onSaved;
  final void Function()? onEditingComplete, onTap, onSuffixIconTap;
  final void Function(PointerDownEvent)? onTapOutside;
  final int? maxLength, maxLines, minLines;
  final bool? showLabel,isRequired, showDefaultSuffixIcon;
  final void Function(String)? onFieldSubmitted;
  const InputWidget(
      {super.key,
      this.suffixIcon,
      this.margin,
      this.padding,
      this.hintText,
      this.onFieldSubmitted,
      this.showDefaultSuffixIcon = true,
      this.obscureText = false,
      this.showLabel = false,
      this.isRequired = false,
      this.controller,
      this.validator,
      this.onChanged,
      this.onEditingComplete,
      this.onSaved,
      this.onTapOutside,
      this.onTap,
      this.keyboardType = TextInputType.text,
      this.textInputAction = TextInputAction.none,
      this.readOnly,
      this.maxLines,
      this.maxLength,
      this.onSuffixIconTap,
      this.minLines,
      this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: minLines != null ? null : 60.0,

      decoration: BoxDecoration(
          color: colorWhiteSecondary,
          borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
          boxShadow: [
            BoxShadow(
              color: const Color(0x007c7c7c).withOpacity(0.1),
              offset: const Offset(-0.2, 0.2),
              blurRadius: 0.1,
              spreadRadius: 0.1,
            )
          ]),
      padding:padding?? const EdgeInsets.only(
        right: 10.0,
        left: 10.0,
      ),
      margin: margin,
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        onChanged: onChanged,
        onSaved: onSaved,
        onFieldSubmitted: onFieldSubmitted,
        onEditingComplete: onEditingComplete,
        onTap: onTap,
        onTapOutside: onTapOutside,
        readOnly: readOnly ?? false,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        maxLength: maxLength,
        maxLines: maxLines,
        minLines: minLines,
        decoration: InputDecoration(
            suffixIcon: suffixIcon == null
                ? null
                : showDefaultSuffixIcon == true
                    ? (controller != null && controller!.text.isNotEmpty
                        ? GestureDetector(
                            onTap: () {
                              controller?.clear();
                              if (onChanged != null) {
                                onChanged!("");
                              }
                            },
                            child: Icon(
                              Icons.clear,
                              color: redButton,
                            ),
                          )
                        : Icon(
                            suffixIcon,
                            color: textLightColor,
                          ))
                    : GestureDetector(
                        onTap: onSuffixIconTap, child: Icon(suffixIcon)),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.transparent,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            alignLabelWithHint: true,
            hintText: "$hintText",
            labelText: showLabel == true ? "$hintText ${isRequired==true?'*':''}" : null,
            hintStyle: TextStyle(
              fontSize: 14.0,
              color: textLightColor,
              fontWeight: FontWeight.w600,
            ),
            focusedErrorBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            contentPadding: EdgeInsets.zero,

        ),
        validator: validator,
      ).center(),
    );
  }
}
