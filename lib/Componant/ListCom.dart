import 'package:flutter/material.dart';
import 'package:liaqti/ApplicationComponents/them.dart';

class ListCom extends StatelessWidget {
  final String title;
  const ListCom({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              color: Them().SecaColor,
              width: 10,
              height: 40,
            ),
            const SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                  fontSize: Them().largText, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    );
  }
}
