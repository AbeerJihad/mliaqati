import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

import '../ApplicationComponents/them.dart';

class ImageCached extends StatelessWidget {
  const ImageCached(
      {Key? key,
      required this.urlImage,
      this.height = 30,
      this.width = 30,
      this.heightImage = double.infinity,
      this.widthImage = double.infinity})
      : super(key: key);
  final String urlImage;
  final double height;
  final double width;
  final double heightImage;
  final double widthImage;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: urlImage,
      fit: BoxFit.cover,
      width: widthImage,
      height: heightImage,
      placeholder: (context, url) => Center(
        child: Container(
          color: Them().baseColor.withAlpha(20),
          child: Stack(
            children: [
              Center(
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: SvgPicture.asset('images/logo.svg'),
                ),
              ),
              Center(
                child: SizedBox(
                    height: height,
                    width: width,
                    child: const CircularProgressIndicator()),
              )
            ],
          ),
        ),
      ),
    );
  }
}
