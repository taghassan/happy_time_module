import 'package:flutter/material.dart';

class PlusCommentItem extends StatelessWidget {
  const PlusCommentItem(
      {super.key,
        required this.title,
        required this.subtitle,
        required this.comment,
        this.profileImgUrl,
        required this.onLike,
        required this.onMenuOpen});

  final String title;
  final String subtitle;
  final String comment;
  final String? profileImgUrl;
  final Function onLike;
  final Function onMenuOpen;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
            foregroundImage:
            NetworkImage(profileImgUrl != null ? profileImgUrl! : ""),
            child: const Icon(Icons.account_circle)),
        const SizedBox(width: 10),
        Expanded(
          flex: 7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
              ),
              const SizedBox(height: 8),
              Text(comment,
                  style: const TextStyle(color: Colors.black87, fontSize: 12))
            ],
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            LikeButton(onPressed: () {}, color: Colors.black87),
            IconButton(
              icon: const Icon(Icons.more_vert_outlined),
              onPressed: () {},
            ),
          ],
        ),
      ],
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
    return IconButton(
      icon: Icon(isLiked ? Icons.favorite : Icons.favorite_border,
          color: widget.color),
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
        widget.onPressed();
      },
    );
  }
}