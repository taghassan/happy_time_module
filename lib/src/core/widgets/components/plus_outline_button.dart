import 'package:flutter/material.dart';

class PlusOutlineButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const PlusOutlineButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff4338CA);

    return OutlinedButton(
      style: ButtonStyle(
          elevation: WidgetStateProperty.all(0),
          alignment: Alignment.center,
          side: WidgetStateProperty.all(
              const BorderSide(width: 1, color: primaryColor)),
          padding: WidgetStateProperty.all(const EdgeInsets.only(
              right: 75, left: 75, top: 12.5, bottom: 12.5)),
          backgroundColor: WidgetStateProperty.all(Colors.transparent),
          shape: WidgetStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0)))),
      onPressed: onPressed,
      child: Text(
        text,
        style: const TextStyle(color: primaryColor, fontSize: 16),
      ),
    );
  }
}