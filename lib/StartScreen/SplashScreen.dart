import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SplashScren extends StatelessWidget {
  const SplashScren({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
        const Duration(
          seconds: 4,
        ), () {
      Navigator.pushReplacementNamed(context, '/Hello_Screen');
    });
    return Scaffold(
      backgroundColor: const Color(0xffF0EFF8),
      body: Stack(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.all(5),
              height: 4 * MediaQuery.of(context).size.height / 5.4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('images/Mask Group 2.png'),
                  Image.asset('images/Group 2010.png'),
                  Image.asset('images/lyaktee.png'),
                ],
              ),
            ),
          ),
          Positioned(
            left: -20,
            top: 40,
            child: Image.asset('images/Path 4609.png'),
          ),
          Positioned(
            left: -20,
            bottom: 10,
            child: Image.asset('images/Path 4617.png'),
          ),
        ],
      ),
    );
  }
}
