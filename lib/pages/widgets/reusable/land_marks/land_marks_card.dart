import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:travelapp/utils/colors.dart';

class LandMarksCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;
  const LandMarksCard(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w500, color: mainBlack),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                imageUrl,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              description,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: mainTextColor),
            ),
          ),
        ],
      ),
    );
  }
}
