// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
// Object Oriented Programming

  final int cardNumber;
  final double balance;
  final int expiryMonth;
  final int expirYear;
  final Color color;

  const MyCard(
      {super.key,
      required this.balance,
      required this.cardNumber,
      required this.color,
      required this.expiryMonth,
      required this.expirYear});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(16)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 10),
          // Text and Balance
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Balance',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Image.asset('assets/icons/visa.png')
              ],
            ),
          ),
          SizedBox(height: 10),
          Text(
            '\$$balance',
            style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 30),

          // Row for card information
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Card number
              Text(
                cardNumber.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              //Expiring
              Text(
                expiryMonth.toString() + '/' + expirYear.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
