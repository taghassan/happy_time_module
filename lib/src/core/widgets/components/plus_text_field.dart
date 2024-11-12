import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class PlusTextField extends StatelessWidget {
  final TextEditingController? inputController;

  final Color? primaryColor,
      secondaryColor,
      accentColor,
      backgroundColor,
      errorColor,
      labelColor;
  final String? hintText, label, initialValue;
  final bool? filled, enabled, readOnly, obscureText;
  final TextInputType? keyboardType;
  final Widget? prefixIcon, suffixIcon;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final void Function()? onEditingComplete;
  final void Function(String)? onFieldSubmitted;
  final TextAlign? textAlign;
  final List<TextInputFormatter>? inputFormatters;
  final Iterable<String>? autofillHints;

  const PlusTextField(
      {super.key,
      this.inputController,
      this.accentColor,
      this.backgroundColor,
      this.errorColor,
      this.primaryColor,
      this.secondaryColor,
      this.hintText,
      this.label,
      this.filled,
      this.keyboardType,
      this.prefixIcon,
      this.suffixIcon,
      this.onChanged,
      this.enabled,
      this.initialValue,
      this.validator,
      this.readOnly,
      this.labelColor,
      this.obscureText,
      this.onSaved,
      this.onEditingComplete,
      this.onFieldSubmitted,
      this.textAlign,
      this.inputFormatters,
      this.autofillHints});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          (label ?? '').tr,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: (labelColor ?? Theme.of(context).colorScheme.primary)
                  .withOpacity(.9)),
        ),
        const SizedBox(
          height: 8,
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                offset: const Offset(12, 26),
                blurRadius: 50,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.1)),
          ]),
          child: TextFormField(
            controller: inputController,
            onChanged: onChanged,
            enabled: enabled,
            initialValue: initialValue,
            readOnly: readOnly ?? false,
            validator: validator,
            obscureText: obscureText ?? false,
            keyboardType: keyboardType ?? TextInputType.none,
            onSaved: onSaved,
            onEditingComplete: onEditingComplete,
            onFieldSubmitted: onFieldSubmitted,
            textAlign: textAlign ?? TextAlign.start,
            inputFormatters: inputFormatters,
            autofillHints: autofillHints,
            style: const TextStyle(fontSize: 14, color: Colors.black),
            decoration: InputDecoration(
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              label: Text((label ?? '').tr,style: Theme.of(context).textTheme.titleMedium,),
              labelStyle:   Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: primaryColor ?? Theme.of(context).primaryColor),
              // prefixIcon: Icon(Icons.email),
              filled: filled ?? true,
              fillColor: accentColor ??
                  Theme.of(context).colorScheme.secondaryContainer,
              hintText: (hintText ?? '').tr,
              hintStyle: TextStyle(color: Colors.grey.withOpacity(.75)),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: primaryColor ?? Theme.of(context).primaryColor,
                    width: 1.0),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color:
                        primaryColor ?? Theme.of(context).colorScheme.secondary,
                    width: 1.0),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: primaryColor ?? Theme.of(context).colorScheme.error,
                    width: 1.0),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color:
                        primaryColor ?? Theme.of(context).colorScheme.primary,
                    width: 1.0),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
