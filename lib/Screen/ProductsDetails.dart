import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../ApplicationComponents/them.dart';
import '../Componant/Stars.dart';
import '../Widgets/button_widget.dart';
import '../Widgets/text_widgets.dart';
import '../mixin.dart';

class ProductsDetails extends StatelessWidget {
  const ProductsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Them().baseColor,
        leading: GestureDetector(
          child: Icon(Icons.arrow_back),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "الارجينين L-Arginine",
                style: TextStyle(
                    fontSize: Them().h,
                    color: Them().baseColor,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Image.asset(
                "images/image 94.png",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Them().baseColor.withOpacity(0.5),
                        spreadRadius: -9,
                        blurRadius: 15,
                        offset:
                            const Offset(0, 0), // changes position of shadow
                      ),
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Stars(),
                        CircleAvatar(
                            backgroundColor: Colors.grey[100],
                            radius: 15,
                            child: Center(
                                child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite,
                                size: 15,
                                color: Colors.red,
                              ),
                            )))
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              "الارجينين L-Arginine",
                              style: TextStyle(
                                  fontSize: Them().h,
                                  color: Them().baseColor,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              padding: EdgeInsets.all(7),
                              child: Text(
                                "مكملات غذائية",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                              decoration: BoxDecoration(
                                  color: Them().baseColor,
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.add_circle_outlined,
                              color: Them().baseColor,
                            ),
                            Text("1"),
                            Icon(
                              Icons.remove_circle,
                              color: Them().baseColor,
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "وصف",
                          style: TextStyle(
                              fontSize: Them().h,
                              color: Them().baseColor,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "\$100",
                          style: TextStyle(color: Colors.red),
                        )
                      ],
                    ),
                    Text(
                      "يُعد دواء إل-أرجينين من الأدوية الآمنة بصفة عامة، ويمكن أن يكون فعّالاً في خفض ضغط الدم وتقليل أعراض الإصابة بالذبحة الصدرية ومرض الشرايين المحيطية",
                      style: TextStyle(height: 1.5),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "طريقة الاستعمال",
                      style: TextStyle(
                          fontSize: Them().h,
                          color: Them().baseColor,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "يُنصح بتناوله بجرعة من الأرجنين بمقدار 3-6 غ وقبل ممارسة التمارين الرياضية بحيث يتم توزيع الجرعة 3 مرات في اليوم ويجب ألا تتجاوز جرعته 15-18 غ في اليوم وإلا تسبب بآثار جانبية خطيرة. من أشكال الأرجنين التجارية، عبوات تحتوي كبسولات الأرجنين بعيار 500 ملغ أو 1000 ملغ بالإضافة لتواجد عبوات يكون فيها على شكل مساحيق.",
                      style: TextStyle(height: 1.5),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: ButtonWidget(
                        child: TextWidget(
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                            font: Them().font,
                            text: 'اضافة تقييم',
                            size: 14),
                        onPressed: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(45),
                                  topRight: Radius.circular(45),
                                ),
                              ),
                              context: context,
                              builder: (context) {
                                return Show(
                                  idProduct: 1,
                                );
                              });
                        },
                        height: 45,
                        color: Them().baseColor,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child:
                          // 1 == 1
                          //?
                          //state.object!.isCart != null
                          // ButtonWidget(
                          //     child: Row(
                          //       mainAxisAlignment: MainAxisAlignment.center,
                          //       children: [
                          //         TextWidget(
                          //             fontWeight: FontWeight.normal,
                          //             color: Colors.white,
                          //             font: Them().font,
                          //             text: 'حذف',
                          //             size: 14),
                          //         const SizedBox(
                          //           width: 10,
                          //         ),
                          //         const Icon(
                          //           Icons.delete_outline_outlined,
                          //           color: Colors.white,
                          //           size: 20,
                          //         ),
                          //       ],
                          //     ),
                          //     onPressed: () {
                          //       //setState(() {
                          //       // BlocProvider.of<ProductDetailsBloc>(
                          //       //         context)
                          //       //     .add(AddToCartEvents(
                          //       //         widget.idProduct,
                          //       //         state.object!.isCart!.qty!,
                          //       //         1));
                          //       // state.object!.isCart =
                          //       //     state.object!.isCart != null
                          //       //         ? null
                          //       //         : IsCart();
                          //       // });
                          //     },
                          //     height: 45,
                          //     color: Colors.red,
                          //   )
                          // :
                          ElevatedButton(
                        child: TextWidget(
                            fontWeight: FontWeight.normal,
                            color: Them().baseColor,
                            font: Them().font,
                            text: 'اضافة الى السلة',
                            size: 14),
                        onPressed: () {
                          // setState(() {
                          //   if (state.object!.isCart == null) {
                          //     BlocProvider.of<ProductDetailsBloc>(
                          //             context)
                          //         .add(AddToCartEvents(
                          //             widget.idProduct, 1, 0));
                          //   }

                          //   state.object!.isCart =
                          //       state.object!.isCart != null
                          //           ? null
                          //           : IsCart();
                          // });
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(0, 45),
                          elevation: 0,
                          primary: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(color: Them().baseColor),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Show extends StatefulWidget {
  const Show({Key? key, required this.idProduct}) : super(key: key);
  final int idProduct;

  @override
  State<Show> createState() => _ShowState();
}

double rate = 0;
late TextEditingController _textEditingController;

class _ShowState extends State<Show> with Helper {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
      child: Column(
        children: [
          TextWidget(
              fontWeight: FontWeight.bold,
              color: Them().baseColor,
              font: Them().font,
              text: 'مشاهدة الكل',
              size: 18),
          const SizedBox(
            height: 13,
          ),
          TextWidget(
              fontWeight: FontWeight.normal,
              color: Them().colorBlack,
              font: Them().font,
              text: 'اضافة رأي',
              size: 13),
          const SizedBox(
            height: 33,
          ),
          TextField(
            maxLines: 5,
            minLines: 4,
            keyboardType: TextInputType.text,
            controller: _textEditingController,
            decoration: InputDecoration(
              fillColor: Colors.black12,
              hintStyle: const TextStyle(color: Colors.grey),
              filled: true,
              hintText: 'اكتب رأيك',
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide:
                      const BorderSide(color: Colors.transparent, width: 1)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide:
                    const BorderSide(color: Colors.transparent, width: 1),
              ),
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          Center(
            child: RatingBar.builder(
              initialRating: 0.0,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
              itemBuilder: (context, index) {
                return const Icon(
                  Icons.star,
                  color: Colors.amber,
                );
              },
              onRatingUpdate: (rating) {
                setState(() {
                  rate = rating;
                });
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ButtonWidget(
              child: TextWidget(
                  fontWeight: FontWeight.bold,
                  color: Them().colorWighet,
                  text: 'OK',
                  size: 15,
                  font: Them().font),
              onPressed: () {
                Navigator.pop(context);

                if (_textEditingController.text.isNotEmpty) {
                  // BlocProvider.of<ProductDetailsBloc>(context).add(
                  //     AddRateProductEvents(widget.idProduct, rate,
                  //         _textEditingController.text.toString()));
                } else {
                  showSnackBar(
                      context: context,
                      message: 'تمت الاضافة بنجاح',
                      visibleMessage: true);
                }
              },
              height: 45,
              color: Them().baseColor)
        ],
      ),
    );
  }
}
