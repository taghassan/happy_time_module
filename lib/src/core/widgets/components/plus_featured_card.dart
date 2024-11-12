import 'package:flutter/material.dart';

class PlusFeaturedCard extends StatelessWidget {
  const PlusFeaturedCard({
    super.key,
    required this.imgUrl,
    required this.title,
    required this.color,
    required this.onTap,
    this.width = 400,
  });

  final String imgUrl;
  final String title;
  final Color color;
  final Function onTap;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            onTap();
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(22)),
                  // color: Colors.red
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.network(
                  imgUrl,
                  fit: BoxFit.fitWidth,
                  errorBuilder: (context, error, stackTrace) => Container(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                title,
                style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
            width: width,
            child: LikeListTile(
              title: "Andre Hirata",
              likes: "130",
              subtitle: "103 Reviews",
              color: color,
            ))
      ],
    );
  }
}

class LikeListTile extends StatelessWidget {
  const LikeListTile(
      {super.key,
      required this.title,
      required this.likes,
      required this.subtitle,
      this.color = Colors.grey});
  final String title;
  final String likes;
  final String subtitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: SizedBox(
        width: 50,
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: const NetworkImage(
                    "https://profilemagazine.com/wp-content/uploads/2020/04/Ajmere-Dale-Square-thumbnail.jpg"),
                onError: (exception, stackTrace) => Container(),
              ),
            ),
          ),
        ),
      ),
      title: Text(title),
      subtitle: Row(
        children: [
          const Icon(Icons.favorite, color: Colors.orange, size: 15),
          const SizedBox(width: 2),
          Text(likes),
          Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(width: 4, height: 4),
              )),
          Text(subtitle)
        ],
      ),
      trailing: LikeButton(onPressed: () {}, color: Colors.orange),
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton(
      {super.key, required this.onPressed, this.color = Colors.black12});
  final Function onPressed;
  final Color color;

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: IconButton(
      icon: Icon(isLiked ? Icons.favorite : Icons.favorite_border,
          color: widget.color),
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
        widget.onPressed();
      },
    ));
  }
}
