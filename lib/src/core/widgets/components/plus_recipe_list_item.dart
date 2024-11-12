
import 'package:flutter/material.dart';


class PlusRecipeItemMallika extends StatelessWidget {
  String title;
  String subtitle;
  String? dishImage;
  PlusRecipeItemMallika({required this.title, required this.subtitle,required this.dishImage, super.key});
  final orangeColor = const Color(0xffFF8527);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:dishImage!=null? ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: Image.network(dishImage.toString(),errorBuilder: (context, error, stackTrace) => Container(),)):null,
      title: Text(title),
      subtitle: Row(
        children: [
          Icon(
            Icons.favorite,
            size: 15,
            color: orangeColor,
          ),
          Text(subtitle),
        ],
      ),
      trailing: const Column(
        children: [
          Icon(Icons.more_vert_outlined),
        ],
      ),
    );
  }
}
