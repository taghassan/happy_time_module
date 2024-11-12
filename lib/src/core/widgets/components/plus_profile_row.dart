import 'package:flutter/material.dart';

class PlusProfileRow extends StatelessWidget {
  final String title,subtitle,imagePath ;
  final bool isNetworkImage;
  final Widget? trailingWidget;
  const PlusProfileRow({super.key,this.trailingWidget,required this.title,required this.subtitle,required this.imagePath,this.isNetworkImage=false});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
      SizedBox(
        width: 50,
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration:  BoxDecoration(
                borderRadius:const BorderRadius.all(Radius.circular(14)),
                image:
                isNetworkImage? DecorationImage(image: NetworkImage(imagePath),onError: (exception, stackTrace) => Container(),):
                DecorationImage(image: AssetImage(imagePath),onError: (exception, stackTrace) => Container(),)
            ),
          ),
        ),
      ),
      title:  Text(title),
      subtitle:  Text(subtitle),
      trailing:trailingWidget ,
    );
  }
}

class PlusRoundedProfilePicture extends StatelessWidget {
  const PlusRoundedProfilePicture({required this.imageUrl, this.borderRadius=15.0, super.key});
  final String imageUrl;
  final double borderRadius;
  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.network(
        imageUrl,
      ),
    );
  }
}