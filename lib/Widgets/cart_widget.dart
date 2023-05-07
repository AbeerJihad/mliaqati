import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:liaqti/Widgets/text_widgets.dart';

import '../ApplicationComponents/them.dart';
import 'image_cached.dart';

class CartWidget extends StatefulWidget {
  const CartWidget(
      {Key? key,
      required this.price,
      required this.name,
      required this.address,
      required this.image,
      required this.rate,
      required this.ifStareTop,
      required this.onFavorites,
      required this.iconFavorites,
      this.vertical = 0,
      this.width = 0,
      this.height = 0})
      : super(key: key);
  final String image;
  final bool ifStareTop;
  final String name;
  final String address;
  final String price;
  final double rate;
  final Function() onFavorites;
  final Icon iconFavorites;
  final double width;
  final double height;
  final double vertical;

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      width: widget.width == 0
          ? MediaQuery.of(context).size.width / 1.9
          : widget.width,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Them().baseColor.withAlpha(90),
        borderRadius: BorderRadius.circular(Them().otpInput),
      ),
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: widget.vertical),
      child: Stack(
        children: [
          ImageCached(
            urlImage: widget.image,
            heightImage: double.infinity,
            widthImage: double.infinity,
            height: 40,
            width: 40,
          ),
          Container(
            color: Them().shadowContainer.withAlpha(100),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Align(
              alignment: AlignmentDirectional.topEnd,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    maintainAnimation: true,
                    maintainInteractivity: true,
                    maintainSemantics: true,
                    maintainSize: true,
                    maintainState: true,
                    visible: widget.ifStareTop == true ? true : false,
                    child: InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: 25,
                          decoration: BoxDecoration(
                            color: Colors.white.withAlpha(100),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                              child: Row(
                            children: [
                              TextWidget(
                                  fontWeight: FontWeight.normal,
                                  color: Colors.white,
                                  font: Them().font,
                                  text: widget.rate.toString(),
                                  size: 9),
                              const SizedBox(
                                width: 4,
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 17,
                              ),
                            ],
                          )),
                        )),
                  ),
                  InkWell(
                      onTap: widget.onFavorites,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: Colors.white.withAlpha(100),
                          shape: BoxShape.circle,
                        ),
                        child: Center(child: widget.iconFavorites),
                      )),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextWidget(
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    font: Them().font,
                    text: widget.name,
                    size: 16),
                Row(
                  children: [
                    // const Icon(
                    //   Icons.location_on,
                    //   color: Colors.white,
                    // ),
                    Expanded(
                      child: TextWidget(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          font: Them().font,
                          text: widget.address,
                          size: 12),
                    ),
                  ],
                ),
                // TextWidget(
                //     fontWeight: FontWeight.normal,
                //     color: Colors.white,
                //     font: Them().font,
                //     text: '${widget.price}\$ /شهريا',
                //     size: 14),
                Visibility(
                  maintainAnimation: true,
                  maintainInteractivity: true,
                  maintainSemantics: true,
                  maintainSize: true,
                  maintainState: true,
                  visible: widget.ifStareTop == false ? true : false,
                  child: RatingBar.builder(
                    initialRating: widget.rate,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 15,
                    unratedColor: Colors.white70,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, index) {
                      return const Icon(
                        Icons.star,
                        color: Colors.amber,
                      );
                    },
                    onRatingUpdate: (rating) {
                      setState(() {});
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
