import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Color cardBgColor;
  final double cardWidth;
  final String title;

  const CategoryCard({
    super.key,
    required this.cardBgColor,
    required this.cardWidth,
    required this.title,
  });

  final double cardHeight = 130;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: cardHeight,
      width: cardWidth,
      decoration: BoxDecoration(
        color: cardBgColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
