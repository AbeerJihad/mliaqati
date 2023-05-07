import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../ApplicationComponents/them.dart';
import '../Widgets/text_widgets.dart';

class SectionsHeader extends StatelessWidget {
  final String NavigtTo;
  final String TextSh;
  const SectionsHeader(
      {super.key, required this.NavigtTo, required this.TextSh});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextWidget(
            fontWeight: FontWeight.bold,
            color: Them().baseColor,
            font: Them().font,
            text: TextSh,
            size: Them().h),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, NavigtTo);
          },
          child: TextWidget(
              fontWeight: FontWeight.normal,
              color: Colors.black45,
              font: Them().font,
              text: AppLocalizations.of(context)!.viewAll,
              size: Them().smallText),
        ),
      ],
    );
  }
}
