import 'package:flutter/material.dart';
import 'package:liaqti/Widgets/text_widgets.dart';

import '../ApplicationComponents/them.dart';

class InformationAndCircleImageProfile extends StatelessWidget {
  const InformationAndCircleImageProfile(
      {Key? key,
      required this.name,
      required this.imageProfile,
      required this.mobileNumber,
      required this.color})
      : super(key: key);
  final String name;
  final String mobileNumber;
  final ImageProvider imageProfile;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Column(
        children: [
          Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: Them().baseColor, width: 2),
              ),
              child: CircleAvatar(
                radius: 35,
                backgroundImage: imageProfile,
              )),
          const SizedBox(
            width: 8,
            height: 10,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            TextWidget(
                text: name,
                size: 12,
                font: Them().font,
                color: color,
                fontWeight: FontWeight.w500),
            const SizedBox(
              height: 3,
            ),
            TextWidget(
                text: mobileNumber,
                size: 11,
                font: Them().font,
                color: color,
                fontWeight: FontWeight.normal),
          ]),
        ],
      ),
    );
  }
}
