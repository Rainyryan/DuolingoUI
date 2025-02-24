import 'package:duolingo/src/home/main_screen/home_screen.dart';
import 'package:duolingo/src/home/main_screen/profile.dart';
import 'package:duolingo/src/home/main_screen/ranking.dart';
import 'package:flutter/material.dart';

import '../main_screen/home.dart';
import 'login_page.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          height: 600,
          //media query
          color: Colors.white,
          padding:
              const EdgeInsets.only(top: 80, left: 16, right: 16, bottom: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo-with-duo.png",
                width: 270,
              ),
              const SizedBox(
                height: 22,
              ),
              SizedBox(
                width: 280,
                child: Text(
                  "Learn Simple and easy",
                  //TO-DO Change font soon
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.grey.shade400,
                  ),
                ),
              ),
              const Flexible(
                child: FractionallySizedBox(
                  heightFactor: 0.75,
                ),
              ),
              _button("Start", color: Colors.lightGreen, onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Home()));
              }, colorText: Colors.white),
              const SizedBox(
                height: 12,
              ),
              _button("I already have an account", color: Colors.white,
                  onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              }, colorText: Colors.green),
            ],
          ),
        ),
      ),
    );
  }

  Container _button(String text,
          {Color? color, Color? colorText, Function()? onPressed}) =>
      Container(
        width: 350,
        height: 60,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 12,
            offset: const Offset(0, 2),
          ),
        ]),
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
                color: colorText, fontSize: 23, fontWeight: FontWeight.bold),
          ),
        ),
      );
}
