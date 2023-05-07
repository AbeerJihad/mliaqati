import 'package:flutter/material.dart';

import '../ApplicationComponents/them.dart';

class ListItem extends StatelessWidget {
  final String text;

  const ListItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.circle,
            color: Them().SecaColor,
            size: 10,
          ),
          const SizedBox(width: 10),
          Flexible(
            child: Text(
              text,
              style: TextStyle(height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}
