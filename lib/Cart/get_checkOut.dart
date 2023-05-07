import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

import '../../ApplicationComponents/them.dart';
import '../../Widgets/button_widget.dart';
import '../../Widgets/text_widgets.dart';
import '../../mixin.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key, required this.coupon}) : super(key: key);
  final String coupon;

  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

String? selectRecivingMethode;
String? paymentMethod;
int clickButton = 0;
int redeem = 0;

class _CheckOutScreenState extends State<CheckOutScreen> with Helper {
  Future<bool> _onWillPop() async {
    return false;
  }

  @override
  void dispose() {
    clickButton = 0;
    selectRecivingMethode = null;
    paymentMethod = null;
    redeem = 0;
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: TextWidget(
            fontWeight: FontWeight.bold,
            color: Them().baseColor,
            font: Them().font,
            text: 'الدفع',
            size: 17),
      ),
      backgroundColor: Them().Scaffold,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(
            height: 20,
          ),
          TextWidget(
              fontWeight: FontWeight.normal,
              color: Them().baseColor,
              font: Them().font,
              text: 'طريقة الدفع',
              size: 16),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 4,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Them().border),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              color: Them().baseColor.withAlpha(50),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Image.asset('images/masterCard.png'),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          TextWidget(
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              font: Them().font,
                              text: 'MasterCard',
                              size: 12)
                        ],
                      ),
                      Radio(
                          value: 'Store',
                          groupValue: selectRecivingMethode,
                          onChanged: (value) {
                            setState(() {
                              selectRecivingMethode = 'Store';
                            });
                          })
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Them().border),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              color: Them().baseColor.withAlpha(50),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Image.asset('images/paypal.png'),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          TextWidget(
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                              font: Them().font,
                              text: 'PayPal',
                              size: 12)
                        ],
                      ),
                      Radio(
                          value: 'driver',
                          groupValue: selectRecivingMethode,
                          onChanged: (value) {
                            setState(() {
                              selectRecivingMethode = 'driver';
                            });
                          })
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                      fontWeight: FontWeight.normal,
                      color: Colors.black38,
                      font: Them().font,
                      text: "السعر",
                      size: 13),
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: TextWidget(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        font: Them().font,
                        text: "\$99.4",
                        //'${state.object!.cartTotal} ${state.object!.carts![0].product!.store!.currency != null ? state.object!.carts![0].product!.store!.currency!.code : '\$'}',
                        size: 15),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                      fontWeight: FontWeight.normal,
                      color: Colors.black38,
                      font: Them().font,
                      text: 'قيمة الضريبة',
                      size: 13),
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: TextWidget(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        font: Them().font,
                        text: "\$0.6",
                        //'${state.object!.deliveryPrice} ${state.object!.carts![0].product!.store!.currency != null ? state.object!.carts![0].product!.store!.currency!.code : '\$'}',
                        size: 15),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                      fontWeight: FontWeight.normal,
                      color: Colors.black38,
                      font: Them().font,
                      text: 'قيمة الخصم',
                      size: 13),
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: TextWidget(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        font: Them().font,
                        text: '0.2',
                        // '${state.object!.discountPrice} ${state.object!.carts![0].product!.store!.currency != null ? state.object!.carts![0].product!.store!.currency!.code : '\$'}',
                        size: 15),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              const SizedBox(
                height: 12,
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                      fontWeight: FontWeight.normal,
                      color: Colors.black38,
                      font: Them().font,
                      text: "المجموع الكلي",
                      size: 15),
                  TextWidget(
                      fontWeight: FontWeight.bold,
                      color: Them().baseColor,
                      font: Them().font,
                      text: "\$89.5",
                      //'${state.object!.total} ${state.object!.carts![0].product!.store!.currency != null ? state.object!.carts![0].product!.store!.currency!.code : '\$'}',
                      size: 17),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          clickButton == 0
              ? Row(
                  children: [
                    Expanded(
                      child: ButtonWidget(
                          child: TextWidget(
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              font: Them().font,
                              text: 'ادفع',
                              size: 13),
                          onPressed: () {
                            if (paymentMethod != null &&
                                selectRecivingMethode != null) {
                              setState(() {
                                clickButton = 1;
                              });
                              // BlocProvider.of<CartBloc>(context).add(
                              //   CreateOrderFromCartEvents(
                              //       paymentMethod!,
                              //       selectRecivingMethode == 'driver'
                              //           ? '2'
                              //           : '1',
                              //       widget.coupon),
                              //   );
                            } else {
                              if (selectRecivingMethode == null) {
                                return showSnackBar(
                                    context: context,
                                    message: ' اختر طريقة الدفع التي تناسبك',
                                    visibleMessage: false);
                              } else if (paymentMethod == null) {
                                return showSnackBar(
                                    context: context,
                                    message: ' اختر طريقة الدفع التي تناسبك',
                                    visibleMessage: false);
                              }
                            }
                          },
                          height: 45,
                          color: Them().baseColor),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                )
              : Center(
                  child: SizedBox(
                      height: 80,
                      width: 80,
                      child: Lottie.asset('images/loadingLogo.json')),
                )
        ],
      ),
    );
  }
}
