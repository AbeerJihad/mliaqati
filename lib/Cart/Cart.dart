import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:lottie/lottie.dart';

import '../../ApplicationComponents/them.dart';
import '../../Widgets/button_widget.dart';
import '../../Widgets/text_widgets.dart';
import '../../Widgets/textfiled_widget.dart';
import '../../mixin.dart';
import 'get_checkOut.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

late TextEditingController _discountCode;
late Timer _timer;
int numberCount = 0;
int maxTime = 10;
int countScreenRelode = 0;
int secound = maxTime;
int countAddToCart = 20;
int addIndex = 10;
int idProduct = 0;
int coupon = 0;

class _CartScreenState extends State<CartScreen> with Helper {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // BlocProvider.of<CartBloc>(context).add(GetCartEvents());
    _discountCode = TextEditingController();
    _timer = Timer.periodic(const Duration(milliseconds: 180), (timer) {
      if (secound != 0 && secound != 10) {
        setState(() {
          secound--;
        });
      } else if (secound == 0 && secound != 10) {
        // BlocProvider.of<CartBloc>(context)
        //     .add(AddToCartEvents(idProduct, numberCount,0));

        secound = 10;
        numberCount = 0;
      }
    });
  }

  @override
  void dispose() {
    _discountCode.dispose();
    numberCount = 0;
    idProduct = 0;
    coupon = 0;
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: TextWidget(
              fontWeight: FontWeight.normal,
              color: Colors.black,
              font: Them().font,
              text: 'السلة',
              size: 16),
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black54,
              )),
        ),
        body: SingleChildScrollView(
            child:

                //  BlocConsumer<CartBloc, StatesApi>(
                //   listenWhen: (previous, current) =>
                //       current is ProcessStateObject<ObjectCart> &&
                //           current.processTyp == ProcessTyp.addToCart ||
                //       current is ProcessStateObject<ObjectCart> &&
                //           current.processTyp == ProcessTyp.getCart,
                //   listener: (context, state) {
                //     if (state is ProcessStateObject<ObjectCart> &&
                //         state.processTyp == ProcessTyp.addToCart) {
                //       BlocProvider.of<CartBloc>(context)
                //           .add(GetCartNotReloadEvents('', ''));
                //       if (state.status == false) {
                //         return showSnackBar(
                //             context: context,
                //             message: state.message,
                //             visibleMessage: state.status);
                //       }
                //     } else if (state is ProcessStateObject<ObjectCart> &&
                //         state.processTyp == ProcessTyp.getCart) {
                //       if (coupon == 1) {
                //         setState(() {
                //           coupon = 0;
                //         });
                //         return showSnackBar(
                //             context: context,
                //             message: state.object!.discountMessage!,
                //             visibleMessage: state.status,
                //             error: 1);
                //       }
                //     }
                //   },
                //   buildWhen: (previous, current) =>
                //       current is ProcessStateObject<ObjectCart> &&
                //           current.processTyp == ProcessTyp.getCart ||
                //       current is LoadingState,
                //   builder: (context, state) {
                //     if (state is LoadingState) {
                //       return Center(
                //         child: SizedBox(
                //           height: 100,
                //           width: 100,
                //           child: Lottie.asset('images/loding.json'),
                //         ),
                //       );
                //     } else if (state is ProcessStateObject<ObjectCart> &&
                //         state.processTyp == ProcessTyp.getCart) {
                //       if (state.status == true && state.error == 200) {
                //         if (state.object!.carts!.isNotEmpty) {
                //           return

                Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.9,
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 15),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 19),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(7),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 20,
                              offset: Offset(0, 10))
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Image.asset(
                                'images/image 94.png',
                                height: 80,
                                width: 80,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextWidget(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        font: Them().font,
                                        text: 'ألياف بروتين',
                                        size: 14),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          size: 12,
                                          color: Colors.amber,
                                        ),
                                        TextWidget(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black38,
                                            font: Them().font,
                                            text: "4",
                                            size: 9),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    TextWidget(
                                        fontWeight: FontWeight.normal,
                                        color: Them().baseColor,
                                        font: Them().font,
                                        text: '\$99.3',
                                        //'${state.object!.carts![index].product!.price.toString()}  ${state.object!.carts![index].product!.store!.currency != null ? state.object!.carts![index].product!.store!.currency!.code : '\$'}',
                                        size: 13),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: SvgPicture.asset('images/delete.svg')),
                            SizedBox(
                              width: 80,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        // state.object!.carts![index]
                                        //     .qty = state.object!
                                        //         .carts![index].qty -
                                        //     1;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Them().Scaffold,
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      child: Icon(Icons.remove,
                                          color: Them().baseColor),
                                    ),
                                  ),
                                  TextWidget(
                                      fontWeight: FontWeight.normal,
                                      color: Colors.black,
                                      font: Them().font,
                                      text: "5",
                                      // state
                                      //     .object!.carts![index].qty
                                      //     .toString(),
                                      size: 16),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        secound = 1;
                                        numberCount++;

                                        // state.object!.carts![index]
                                        //     .qty = state.object!
                                        //         .carts![index].qty +
                                        //     1;
                                        // idProduct = state
                                        //     .object!
                                        //     .carts![index]
                                        //     .product!
                                        //     .id;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Them().Scaffold,
                                        borderRadius: BorderRadius.circular(3),
                                      ),
                                      child: Icon(Icons.add,
                                          color: Them().baseColor),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                },
                itemCount: 3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 28,
                  ),
                  TextWidget(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      font: Them().font,
                      text: "كود الخصم",
                      size: 14),
                  const SizedBox(
                    height: 17,
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: TextFiledWidget(
                            hintText: '   ادخل كود الخصم  ',
                            inputType: TextInputType.text,
                            controller: _discountCode),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ButtonWidget(
                            child: TextWidget(
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                                font: Them().font,
                                text: 'تأكيد',
                                size: 12),
                            onPressed: () {
                              setState(() {
                                coupon = 1;
                              });
                              // BlocProvider.of<CartBloc>(context).add(
                              //     GetCartNotReloadEvents(
                              //         _discountCode.text, ''));
                            },
                            height: 54,
                            color: Them().baseColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(
                    thickness: 1.2,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(Them().border),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black12,
                              offset: Offset(0, 4),
                              blurRadius: 15)
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextWidget(
                            fontWeight: FontWeight.normal,
                            color: Them().baseColor,
                            font: Them().font,
                            text: "المجموع الكلي",
                            size: 15),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: TextWidget(
                              fontWeight: FontWeight.bold,
                              color: Them().baseColor,
                              font: Them().font,
                              text: "\$199",
                              //'${state.object!.total} ${state.object!.carts![0].product!.store!.currency != null ? state.object!.carts![0].product!.store!.currency!.code : ''}',
                              size: 17),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ButtonWidget(
                      child: TextWidget(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          font: Them().font,
                          text: 'اكمال الطلب',
                          size: 12),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                CheckOutScreen(coupon: _discountCode.text),
                          ),
                        );
                      },
                      height: 45,
                      color: Them().baseColor)
                ],
              ),
            )
          ],
        )));

    ///  } else {
    //return
    // Padding(
    //   padding: const EdgeInsets.symmetric(
    //       horizontal: 20, vertical: 20),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       SvgPicture.asset('images/cartScreen.svg'),
    //       const SizedBox(
    //         height: 15,
    //       ),
    //       const Divider(
    //         color: Colors.transparent,
    //       ),
    //       TextWidget(
    //         font: Them().font,
    //         color: Colors.black,
    //         size: 19,
    //         text: 'ohhTheCartIsEmpty',
    //         fontWeight: FontWeight.normal,
    //       ),
    //       TextWidget(
    //         font: Them().font,
    //         color: Colors.black45,
    //         size: 12,
    //         text: 'ohhTheCartIsEmpty',
    //         fontWeight: FontWeight.normal,
    //       ),
    //       const SizedBox(
    //         height: 20,
    //       ),
    //       ButtonWidget(
    //           child: TextWidget(
    //             font: Them().font,
    //             color: Colors.white,
    //             size: 19,
    //             text: AppLocalizations.of(context)!.keepShopping,
    //             fontWeight: FontWeight.normal,
    //           ),
    //           onPressed: () {
    //             Navigator.pushNamedAndRemoveUntil(
    //                 context, '/Home_Screen', (route) => false);
    //           },
    //           height: 45,
    //           color: Them().baseColor)
    //     ],
    //   ),
    // );
  }
  //}
  //   else if (state.status == false && state.error == 408) {
  //           return ErrorScreen(
  //               onTap: () {
  //                 BlocProvider.of<CartBloc>(context).add(GetCartEvents());
  //               },
  //               image: 'images/noInternet.png',
  //               description:
  //                   AppLocalizations.of(context)!.theInternetIsNotConnected,
  //               title: AppLocalizations.of(context)!.noInternet);
  //         } else if (state.status == false && state.error == 504) {
  //           return ErrorScreen(
  //               onTap: () {
  //                 BlocProvider.of<CartBloc>(context).add(GetCartEvents());
  //               },
  //               image: 'images/noInternet.png',
  //               description:
  //                   AppLocalizations.of(context)!.theInternetIsNotConnected,
  //               title: AppLocalizations.of(context)!.noInternet);
  //         } else {
  //           return ErrorScreen(
  //               onTap: () {
  //                 BlocProvider.of<CartBloc>(context).add(GetCartEvents());
  //               },
  //               image: 'images/problems.png',
  //               description: AppLocalizations.of(context)!.desProblem,
  //               subDescription: state.message.toString(),
  //               title: AppLocalizations.of(context)!.problemHasOccurred);
  //         }
  //       }
  //       return ErrorScreen(
  //           onTap: () {
  //             BlocProvider.of<CartBloc>(context).add(GetCartEvents());
  //           },
  //           image: 'images/problems.png',
  //           description: AppLocalizations.of(context)!.desProblem,
  //           title: AppLocalizations.of(context)!.problemHasOccurred);
  //     },
  //   ),
  // ),
}
