import 'package:flutter/material.dart';
import 'package:travelapp/pages/widgets/reusable/image_card.dart';
import 'package:travelapp/utils/colors.dart';

class NaturalWondersPage extends StatelessWidget {
  const NaturalWondersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Natural Wonders",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
              color: mainNaturalWondersColor),
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
                  colorTitle: subNaturalWondersColor,
                  isCornerRounded: false,
                  title: "Nature Wonders Place-1",
                  description:
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                  imgUrl: "assets/nature2.png"),
              ImageCard(
                  colorTitle: subNaturalWondersColor,
                  isCornerRounded: false,
                  title: "Nature Wonders Place-2",
                  description:
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                  imgUrl: "assets/nature1.png"),
              ImageCard(
                  colorTitle: subNaturalWondersColor,
                  isCornerRounded: false,
                  title: "Nature Wonders Place-3",
                  description:
                      "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                  imgUrl: "assets/nature3.png"),
              const SizedBox(
                height: 25,
              )
            ],
          ),
        ),
      ),
    );
  }
}
