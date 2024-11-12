import 'package:flutter/material.dart';

class PlusSquareCard extends StatelessWidget {
  final String? text;
  final String? imageUrl;
  final String subtitle;
  final bool isNetworkImage;
  final double? imageHeight, textFontSize;
  final Color? iconColor;
  final Function() onPressed;

  const PlusSquareCard(
      {this.iconColor,
      this.text,
      this.textFontSize,
      this.imageHeight,
      this.isNetworkImage = false,
      this.imageUrl,
      required this.subtitle,
      required this.onPressed,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.5),
          boxShadow: [
            BoxShadow(
                offset: const Offset(10, 20),
                blurRadius: 10,
                spreadRadius: 0,
                color: Colors.grey.withOpacity(.05)),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            imageUrl != null
                ? isNetworkImage == true
                    ? Image.network(
                        imageUrl.toString(),
                        height: imageHeight ?? 40,
                        color: iconColor,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const SizedBox.shrink(),
                      )
                    : Image.asset(
                        imageUrl.toString(),
                        height: imageHeight ?? 40,
                        color: iconColor,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const SizedBox.shrink(),
                      )
                : const SizedBox.shrink(),
            text != null
                ? Text(text.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: textFontSize ?? 18,
                    ))
                : const SizedBox.shrink(),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 12),
              overflow: TextOverflow.visible,
            ),
          ],
        ),
      ),
    );
  }
}
