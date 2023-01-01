import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String iconPath;
  final String text;
  const MyButton({super.key, required this.iconPath, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.grey.shade100,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade400,
                    blurRadius: 40,
                    spreadRadius: 10)
              ]),
          child: Image.asset(iconPath),
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
