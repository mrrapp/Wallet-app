// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dribble_wallet_app/utils/colors.dart';
import 'package:dribble_wallet_app/utils/my_button.dart';
import 'package:dribble_wallet_app/utils/my_listTile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../utils/card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
// Page Controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        backgroundColor: Colors.pink,
        child: Icon(
          Icons.money_rounded,
          size: 40,
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade100,
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, bottom: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.home,
                  size: 38,
                  color: Colors.pink.shade200,
                )),
            //SizedBox(width: 100),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  size: 38,
                  color: Colors.grey,
                )),
          ]),
        ),
      ),
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // App bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text('My',
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold)),
                        Text(
                          ' Cards',
                          style: TextStyle(fontSize: 28),
                        ),
                      ],
                    ),

                    // Plus button
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.add),
                        )),
                  ],
                ),
              ),
              SizedBox(height: 25),

              // cards
              Container(
                  height: 200,
                  child: PageView(
                    controller: _controller,
                    // Wil be using a PageViewWidget
                    scrollDirection: Axis.horizontal,
                    children: [
                      MyCard(
                        cardNumber: 78666665,
                        color: cardPurple,
                        expirYear: 22,
                        balance: 300000,
                        expiryMonth: 10,
                      ),
                      MyCard(
                        cardNumber: 78666665,
                        color: cardRed,
                        balance: 309488,
                        expirYear: 22,
                        expiryMonth: 10,
                      ),
                      MyCard(
                        cardNumber: 78666665,
                        balance: 2193,
                        color: cardBlue,
                        expirYear: 22,
                        expiryMonth: 10,
                      )
                    ],
                  )),
              SizedBox(height: 40),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect:
                    ExpandingDotsEffect(activeDotColor: Colors.grey.shade700),
              ),
              SizedBox(height: 40),

              //3 buttons -> send + pay + bill
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // send
                    MyButton(
                        iconPath: 'assets/icons/send-money.png', text: 'Send'),
                    // pay button
                    MyButton(
                        iconPath: 'assets/icons/credit-card.png', text: 'Pay'),
                    // bills buttons
                    MyButton(iconPath: 'assets/icons/bill.png', text: 'Bills')
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Column -> stats + transactions
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    // statistics
                    MyListTile(
                        iconPath: 'assets/icons/analytics.png',
                        heading: 'Statistics',
                        subHeading: 'Payments and Income'),

                    // transactions
                    MyListTile(
                        iconPath: 'assets/icons/money-transfer.png',
                        heading: 'Transactions',
                        subHeading: 'Transactions history'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
