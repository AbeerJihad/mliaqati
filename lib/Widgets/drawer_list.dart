import 'package:flutter/material.dart';
import 'package:liaqti/Widgets/text_widgets.dart';

import '../ApplicationComponents/them.dart';

class DrawerList extends StatelessWidget {
  const DrawerList(
      {Key? key,
      this.icon,
      required this.title,
      this.onTap,
      required this.color,
      this.countIcon = 0,
      this.widget,
      this.treling,
      this.shapeBorder,
      this.tileColor})
      : super(key: key);
  final Color color;
  final String title;
  final Widget? icon;
  final Function()? onTap;
  final ShapeBorder? shapeBorder;
  final Color? tileColor;
  final Widget? widget;
  final Widget? treling;
  final int countIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              icon!,
              const SizedBox(
                width: 7,
              ),
              TextWidget(
                  fontWeight: FontWeight.normal,
                  color: color,
                  font: Them().font,
                  text: title,
                  size: 15),
            ],
          ),
          Visibility(
            visible: countIcon == 0 ? true : false,
            child: IconButton(
                onPressed: onTap,
                icon: Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: color,
                  size: 15,
                )),
          )
        ],
      ),
    );
  }
}
