import 'package:flutter/material.dart';

import '../../values/colors.dart';

class PlusPromoCard extends StatelessWidget {
  final double? height;
  final Widget? child;

  final bool isNetworkImageBackground, isNetworkImage;
  final String backgroundPath, imagePath;

  final Color? primary, secondary;

  const PlusPromoCard(
      {super.key,
      required this.backgroundPath,
      this.imagePath = "",
      this.height,
      this.child,
      this.primary,
      this.secondary,
      this.isNetworkImageBackground = false,
      this.isNetworkImage = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: height ?? 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            primary ?? primaryColor,
            secondary ?? colorLightPrimary,
          ],
          stops: const [0, 1],
begin: Alignment.bottomLeft,
          end: Alignment.topRight
        ),
      ),
      child: Stack(
        children: [
          Opacity(
            opacity: .5,
            child: isNetworkImageBackground == true
                ? Image.network(
                    backgroundPath,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(),
                  )
                : Image.asset(
                    backgroundPath,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(),
              color: primaryColor,
                  ),
          ),
          imagePath != ""
              ? isNetworkImage == true
                  ? Image.network(
                      imagePath,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          const SizedBox.shrink(),
                    )
                  : Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          const SizedBox.shrink(),
            color: primaryColor,
                    )
              : const SizedBox.shrink(),
          Align(
            alignment: Alignment.topRight,
            child: Padding(padding: const EdgeInsets.all(10.0), child: child),
          ),
        ],
      ),
    );
  }
}
