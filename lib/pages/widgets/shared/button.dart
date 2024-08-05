import 'package:flutter/material.dart';
import 'package:travelapp/utils/colors.dart';

class Button extends StatelessWidget {
  final String buttonText;
  const Button({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: thirdCategoryColor,
              padding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 30)),
          child: Text(
            buttonText,
            style: const TextStyle(fontSize: 16, color: mainBlack),
          ),
        ),
      ],
    );
  }
}
