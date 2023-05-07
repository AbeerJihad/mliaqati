import 'package:flutter/material.dart';

import '../ApplicationComponents/them.dart';
import '../Componant/Stars.dart';

class HealthyRecipeCard extends StatelessWidget {
  const HealthyRecipeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      margin: const EdgeInsets.all(5),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Image.asset(
              "images/Healthy18.jpg",
              width: 200,
              height: MediaQuery.of(context).size.height / 3,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'السمبوسة الدايت',
                    style: TextStyle(
                      color: Them().baseColor,
                      fontWeight: FontWeight.bold,
                      fontSize: Them().h,
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3),
                        child: Column(
                          children: [
                            Image.asset(
                              "images/calories.png",
                              width: 24,
                              height: 24,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              " 65  سعرات",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Icon(
                              Icons.local_dining_sharp,
                              color: Them().baseColor,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "  8 مكونات",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3),
                        child: Column(
                          children: [
                            Icon(
                              Icons.timer,
                              color: Them().baseColor,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              " 30  دقيقة",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
