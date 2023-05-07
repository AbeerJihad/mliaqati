import 'package:flutter/material.dart';

import '../ApplicationComponents/them.dart';
import '../Componant/ProductCard.dart';
import '../Componant/SectionsHeaders.dart';

class Pro extends StatelessWidget {
  const Pro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionsHeader(
              NavigtTo: '/HealthyRecipe', TextSh: "المنتجات الاكثر طلبا"),
          const SizedBox(height: 30),
          Text("مكملات غذائية"),
          const SizedBox(height: 20),
          Container(
            height: 220,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return ProductCard();
              },
            ),
          ),
          const SizedBox(height: 30),
          Text("تمارين رياضية"),
          const SizedBox(height: 20),
          Container(
            height: 220,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return ProductCard();
              },
            ),
          )
        ],
      ),
    );
  }
}
