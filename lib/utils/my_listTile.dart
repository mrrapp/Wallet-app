import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String iconPath;
  final String heading;
  final String subHeading;
  const MyListTile(
      {super.key,
      required this.iconPath,
      required this.heading,
      required this.subHeading});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20.0),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                height: 80,
                padding: const EdgeInsets.all(12),
                child: Image.asset(iconPath),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(subHeading,
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade700)),
                ],
              ),
            ],
          ),
        ),
        const Icon(Icons.arrow_forward_ios)
      ],
    );
  }
}
