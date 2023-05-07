import 'package:flutter/material.dart';

class AppBarSection extends StatelessWidget {
  final String Titl;
  const AppBarSection({super.key, required this.Titl});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(Titl),
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_ios,
        ),
      ),
    );
  }
}
