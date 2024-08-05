import 'package:flutter/material.dart';
import 'package:travelapp/pages/widgets/shared/button.dart';
import 'package:travelapp/pages/widgets/shared/input.dart';
import 'package:travelapp/pages/widgets/shared/ratings.dart';
import 'package:travelapp/utils/colors.dart';

class CulturalPage extends StatelessWidget {
  const CulturalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cultural",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: mainCulturalColor,
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
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    "assets/Cultural 1.png",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                    fontSize: 16,
                    color: mainTextColor,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Rate this Place",
                style: TextStyle(
                    color: mainNightLifeColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              const Ratings(),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                    fontSize: 16,
                    color: mainTextColor,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Send Feedback",
                style: TextStyle(
                    color: mainNightLifeColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              const Input(
                hintText: "Enter a text",
              ),
              const SizedBox(
                height: 15,
              ),
              const Button(
                buttonText: "Submit",
              ),
              const SizedBox(
                height: 150,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
