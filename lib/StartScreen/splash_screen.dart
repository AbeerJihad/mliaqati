import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../ApplicationComponents/them.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

Them _them = Them();
DateTime dateTime = DateTime.now();

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/Hello_Screen');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Them().baseColor,
          // gradient: LinearGradient(
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          //   colors: [Color(0xff14548C), Color(0xff3183C5)],
          // ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimationConfiguration.synchronized(
                    duration: const Duration(milliseconds: 400),
                    child: ScaleAnimation(
                      child: FadeInAnimation(
                        child: Center(
                          child: Image.asset('images/logoliaqti.png'),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AnimationConfiguration.synchronized(
                    duration: const Duration(milliseconds: 400),
                    child: SlideAnimation(
                      horizontalOffset: 50.0,
                      child: FadeInAnimation(
                          child: Image.asset('images/liaqti.png')

                          // TextWidget(
                          //     color: Colors.white,
                          //     fontWeight: FontWeight.normal,
                          //     size: 11,
                          //     font: Them().font,
                          //     text: 'All Rights Are Reserved'),
                          ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // AnimationConfiguration.synchronized(
                  //   duration: const Duration(milliseconds: 400),
                  //   child: SlideAnimation(
                  //     verticalOffset: 50.0,
                  //     child: FadeInAnimation(
                  //       child: TextWidget(
                  //           color: Colors.white,
                  //           fontWeight: FontWeight.normal,
                  //           size: 11,
                  //           font: Them().font,
                  //           text: dateTime.year.toString()),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            // Image.asset(
            //   'images/splash.png',
            //   height: double.infinity,
            //   width: double.infinity,
            //   fit: BoxFit.fitWidth,
            // )
          ],
        ),
      ),
    );
  }
}
