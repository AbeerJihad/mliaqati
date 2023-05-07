import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  const Stars({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 15,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 15,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 15,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 15,
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 15,
        ),
      ],
    );
  }
}
