import 'package:flutter/material.dart';
import 'package:travelapp/pages/booking_page.dart';
import 'package:travelapp/pages/cultural_page.dart';
import 'package:travelapp/pages/land_marks.dart';
import 'package:travelapp/pages/natural_wonders.dart';
import 'package:travelapp/pages/nightlife.dart';
import 'package:travelapp/pages/widgets/reusable/home_page/category_card.dart';
import 'package:travelapp/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(top: 18, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Awesome",
                        style: TextStyle(fontSize: 16, color: mainTextColor),
                      ),
                      const Text("Places",
                          style: TextStyle(
                              fontSize: 40,
                              color: mainColor,
                              fontWeight: FontWeight.w700)),
                    ],
                  ),
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: mainColor,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Text(
                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",
                  style: TextStyle(fontSize: 16, color: mainTextColor)),
              const SizedBox(
                height: 12,
              ),
              Image.asset(
                "assets/image 1.png",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 18,
              ),
              const Text(
                "Select a Place from the categories",
                style: TextStyle(
                    fontSize: 19,
                    color: mainColor,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NaturalWondersPage(),
                          ));
                    },
                    child: const CategoryCard(
                      cardBgColor: firstCategoryColor,
                      title: "Natural Wonders",
                      cardWidth: 175,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Nightlife(),
                          ));
                    },
                    child: const CategoryCard(
                      cardBgColor: firstCategoryColor,
                      title: "Nightlife",
                      cardWidth: 175,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LandMarks()));
                    },
                    child: const CategoryCard(
                      cardBgColor: secondCategoryColor,
                      title: "Landmarks",
                      cardWidth: 175,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CulturalPage()));
                    },
                    child: const CategoryCard(
                      cardBgColor: secondCategoryColor,
                      title: "Cultural",
                      cardWidth: 175,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BookingPage()));
                },
                child: const CategoryCard(
                  cardBgColor: thirdCategoryColor,
                  title: "Book For A Ride Today!",
                  cardWidth: double.infinity,
                ),
              ),
              const SizedBox(
                height: 18,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
