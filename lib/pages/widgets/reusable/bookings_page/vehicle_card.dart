import 'package:flutter/material.dart';
import 'package:travelapp/utils/colors.dart';

class VehicleCard extends StatelessWidget {
  final String vehicleName;
  final String VehicleImage;
  const VehicleCard(
      {super.key, required this.vehicleName, required this.VehicleImage});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                VehicleImage,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              vehicleName,
              style: const TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w400, color: mainColor),
            ),
          ],
        ),
      ),
    );
  }
}
