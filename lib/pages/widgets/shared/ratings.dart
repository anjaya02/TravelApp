import 'package:flutter/material.dart';
import 'package:travelapp/utils/colors.dart';

class Ratings extends StatelessWidget {
  const Ratings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: landMarksCardBg,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(
            Icons.star,
            color: thirdCategoryColor,
            size: 45,
          ),
          const Icon(
            Icons.star,
            color: thirdCategoryColor,
            size: 45,
          ),
          const Icon(
            Icons.star,
            color: thirdCategoryColor,
            size: 45,
          ),
          const Icon(
            Icons.star,
            color: thirdCategoryColor,
            size: 45,
          ),
          Icon(
            Icons.star,
            color: mainTextColor,
            size: 45,
          )
        ],
      ),
    );
  }
}
