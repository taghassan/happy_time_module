
import 'package:flutter/material.dart';

class PlusTopBar extends StatelessWidget {
  final String title;
  final String upperTitle;
  final Function() onTapMenu;
  const PlusTopBar({required this.title, required this.upperTitle, required this.onTapMenu, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: onTapMenu,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children:  [
              Text(upperTitle,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.bold)),
              Text(title,
                  style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.normal)),

            ],
          ),
        ],
      ),
    );
  }
}