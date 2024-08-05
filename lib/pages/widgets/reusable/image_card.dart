import 'package:flutter/material.dart';
import 'package:travelapp/utils/colors.dart';

class ImageCard extends StatelessWidget {
  final String title;
  final String description;
  final String imgUrl;
  final bool isCornerRounded;
  final Color colorTitle;

  const ImageCard(
      {super.key,
      required this.title,
      required this.description,
      required this.imgUrl,
      required this.isCornerRounded,
      required this.colorTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              color: colorTitle, fontSize: 25, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 12,
        ),
        isCornerRounded
            ? ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  imgUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              )
            : Image.asset(
                imgUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
        const SizedBox(
          height: 12,
        ),
        Text(
          description,
          style: TextStyle(color: mainTextColor, fontSize: 18),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
