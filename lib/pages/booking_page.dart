import 'package:flutter/material.dart';
import 'package:travelapp/pages/widgets/reusable/bookings_page/bottomofthepage.dart';
import 'package:travelapp/pages/widgets/reusable/bookings_page/vehicle_card.dart';
import 'package:travelapp/pages/widgets/shared/ratings.dart';
import 'package:travelapp/utils/colors.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Lets Book A Tour!",
          style: TextStyle(
              color: mainColor, fontSize: 25, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(fontSize: 16, color: mainBlack),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Select a vehicle",
                style: TextStyle(
                    fontSize: 20,
                    color: mainColor,
                    fontWeight: FontWeight.w500),
              ),
              const Row(
                children: [
                  Expanded(
                    child: VehicleCard(
                      vehicleName: "Car",
                      VehicleImage: "assets/image car.jpg",
                    ),
                  ),
                  VehicleCard(
                    vehicleName: "Bike",
                    VehicleImage: "assets/images bike.jpeg",
                  ),
                  VehicleCard(
                    vehicleName: "Bus",
                    VehicleImage: "assets/images.jpeg",
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Selected Place",
                style: TextStyle(
                    fontSize: 20,
                    color: mainColor,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 15,
              ),
              // Stack goes here
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/Cultural 1.png",
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.45),
                        borderRadius: BorderRadius.circular(20)),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                    child: Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Selected Place",
                            style: TextStyle(
                                color: mainWhite,
                                fontSize: 24,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                            style: TextStyle(
                                color: mainWhite,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 5),
                          Ratings(),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Fill The Details",
                style: TextStyle(
                    color: mainColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              const Bottomofthepage(),
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
