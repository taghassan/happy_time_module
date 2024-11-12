
import 'package:flutter/material.dart';

class PlusHeaderWithTrailingAction extends StatelessWidget {
  final String text;
  final String subtitle;
  final Function() iconOnPressed;
  final Widget icon;
  const PlusHeaderWithTrailingAction({required this.text,this.subtitle="",required this.icon,required this.iconOnPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment:CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                  fontSize: 12, fontWeight: FontWeight.normal, color: Colors.grey),
            ),
          ],
        ),
        IconButton(icon: icon,onPressed: iconOnPressed,)
      ],
    );
  }
}