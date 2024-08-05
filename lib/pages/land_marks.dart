import 'package:flutter/material.dart';
import 'package:travelapp/pages/widgets/reusable/land_marks/land_marks_card.dart';
import 'package:travelapp/utils/colors.dart';

class LandMarks extends StatelessWidget {
  const LandMarks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Landmarks",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: mainLandMarksColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            children: [
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                    fontSize: 16,
                    color: mainTextColor,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 15,
              ),
              const LandMarksCard(
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6bOhyDheHtYd_WLw33qSP43CLZhbxwIt_ozJtNwshGwj1wneN2eBk79Lh2hlh5P0Vosk&usqp=CAU",
                title: "Landmarks Place-1",
              ),
              const LandMarksCard(
                description:
                    "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                imageUrl:
                    "https://blog.gale.com/wp-content/uploads/2022/10/taj-mahal-final.jpg",
                title: "Landmarks Place-2",
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
