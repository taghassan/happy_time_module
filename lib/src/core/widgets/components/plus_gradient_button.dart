import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PlusGradientButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  final Color? primaryColor;

  final Color? secondaryColor;

  final Color? accentColor;

  final double borderRadius = 15;

  const PlusGradientButton(
      {required this.text,
      required this.onPressed,
      this.primaryColor,
      this.secondaryColor,
      this.accentColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            gradient: LinearGradient(colors: [
              (primaryColor ?? Theme.of(context).colorScheme.primary),
              (secondaryColor ?? Theme.of(context).colorScheme.secondary)
            ])),
        child: ElevatedButton(
          style: ButtonStyle(
              elevation: WidgetStateProperty.all(0),
              alignment: Alignment.center,
              padding: WidgetStateProperty.all(const EdgeInsets.only(
                  right: 75, left: 75, top: 15, bottom: 15)),
              backgroundColor: WidgetStateProperty.all(Colors.transparent),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(borderRadius)),
              )),
          onPressed: onPressed,
          child: Text(
            text.tr,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                color: accentColor ??
                    Theme.of(context).colorScheme.secondaryContainer,
                ),
          ),
        ));
  }
}
