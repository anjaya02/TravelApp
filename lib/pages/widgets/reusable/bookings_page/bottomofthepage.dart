import 'package:flutter/material.dart';
import 'package:travelapp/utils/colors.dart';

class Bottomofthepage extends StatelessWidget {
  const Bottomofthepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "User Name",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          decoration: InputDecoration(
              labelText: "Enter your username",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "Country",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          decoration: InputDecoration(
              labelText: "Enter your country",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "Team Size",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(
                height: 90,
                width: 90,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: mainColor,
                ),
                child: const Center(
                  child: Text(
                    "3",
                    style: TextStyle(
                        color: mainWhite,
                        fontSize: 30,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  "Add or Remove Team Members",
                  style: TextStyle(color: mainTextColor, fontSize: 18),
                ),
                Row(
                  children: [
                    Container(
                      width: 125,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: mainGreenColor),
                        child: const Text(
                          'Add  +',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: mainBlack),
                        ),
                      ),
                    ),
                    const SizedBox(
                        width: 10), // Add spacing between buttons if needed
                    Container(
                      width: 125,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: mainRedColor),
                        child: const Text(
                          'Remove  -',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: mainBlack,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Divider(),
        const SizedBox(
          height: 15,
        ),
        const Text(
            "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler."),
        const SizedBox(
          height: 25,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 220, bottom: 180),
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: thirdCategoryColor,
                fixedSize: const Size(140, 35)),
            child: const Text(
              'Submit',
              style: TextStyle(color: mainBlack),
            ),
          ),
        )
      ],
    );
  }
}
