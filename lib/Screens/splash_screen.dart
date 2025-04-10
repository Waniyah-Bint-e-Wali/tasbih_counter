import 'package:counter_tasibh/Screens/counter_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const CounterScreen()),
      );
    });

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2c3e50), Color(0xFF34495e)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 350),
              child: Column(
                children: [
                  Text(
                    "Tasbih Counter",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontFamily: 'FontMonton',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 160),
              child: Container(
                width: 400,
                height: 300,
                child: Image.asset("assets/images/mosque_17140024.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
