import 'package:flutter/material.dart';
import 'package:travelapp/pages/widgets/reusable/image_card.dart';
import 'package:travelapp/utils/colors.dart';

class Nightlife extends StatelessWidget {
  const Nightlife({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Nightlife",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: mainNightLifeColor,
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
                height: 20,
              ),
              ImageCard(
                  colorTitle: subNightLifeColor,
                  title: "Nightlife Place-1",
                  description:
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                  imgUrl: "assets/night2.png",
                  isCornerRounded: true),
              ImageCard(
                  colorTitle: subNightLifeColor,
                  title: "Nightlife Place-2",
                  description:
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                  imgUrl: "assets/night1.png",
                  isCornerRounded: true),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
