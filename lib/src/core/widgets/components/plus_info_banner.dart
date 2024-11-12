import 'package:flutter/material.dart';

class PlusInfoBanner extends StatelessWidget {
  final Icon icon;
  final Color primaryColor;
  final List<TextButton> actions;
  final String text;

  const PlusInfoBanner(
      {required this.icon, required this.actions, required this.text, this.primaryColor = Colors.blue, super.key}) ;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialBanner(
        content: Text(text, style: TextStyle(color: primaryColor),),
        leading: CircleAvatar(backgroundColor: primaryColor,child: icon,),
        actions: actions,
      ),
    );
  }
}