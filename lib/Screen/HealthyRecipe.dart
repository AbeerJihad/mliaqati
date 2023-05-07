import 'package:flutter/material.dart';
import 'package:liaqti/Componant/Heder.dart';

import '../ApplicationComponents/them.dart';
import 'HealthyRecipeDetailes.dart';

class HealthyRecipe extends StatelessWidget {
  const HealthyRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Header(title: "وصفات لياقتي"),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HealthyRecipeDetailes(),
                        ),
                      );
                    },
                    child: Card(
                      child: Container(
                        height: 150,
                        width: double.infinity,
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'السمبوسة الدايت',
                                    style: TextStyle(
                                      color: Them().baseColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: Them().h,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 7,
                                  ),
                                  Text(
                                    'فطار خفيف',
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(3),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "images/calories.png",
                                              width: 24,
                                              height: 24,
                                            ),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Text(
                                              " 65  سعرات",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      Padding(
                                        padding: const EdgeInsets.all(8),
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.local_dining_sharp,
                                              color: Them().baseColor,
                                            ),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Text(
                                              "  8 مكونات",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(3),
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.timer,
                                              color: Them().baseColor,
                                            ),
                                            SizedBox(
                                              height: 7,
                                            ),
                                            Text(
                                              " 30  دقيقة",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )

                                      // Padding(
                                      //   padding: const EdgeInsets.only(top: 10),
                                      //   child: ClipRRect(
                                      //     borderRadius: BorderRadius.circular(4),
                                      //     child: Stack(
                                      //       children: <Widget>[
                                      //         Positioned.fill(
                                      //           child: Container(
                                      //               // decoration: const BoxDecoration(
                                      //               //   // gradient: LinearGradient(
                                      //               //   //   colors: <Color>[
                                      //               //   //     Color.fromARGB(
                                      //               //   //         255, 207, 135, 220),
                                      //               //   //     Color.fromARGB(
                                      //               //   //         255, 196, 67, 219),
                                      //               //   //     Color.fromARGB(
                                      //               //   //         255, 168, 61, 187),
                                      //               //   //   ],
                                      //               //   // ),
                                      //               // ),
                                      //               ),
                                      //         ),
                                      //         TextButton(
                                      //             child: Text("التفاصيل".toUpperCase(),
                                      //                 style: TextStyle(
                                      //                     fontSize: 14)),
                                      //             style: ButtonStyle(
                                      //                 padding:
                                      //                     MaterialStateProperty.all<EdgeInsets>(
                                      //                         EdgeInsets.all(20)),
                                      //                 foregroundColor:
                                      //                     MaterialStateProperty.all<Color>(
                                      //                         Colors.purple),
                                      //                 shape: MaterialStateProperty.all<
                                      //                         RoundedRectangleBorder>(
                                      //                     RoundedRectangleBorder(
                                      //                         borderRadius: BorderRadius.circular(12.0),
                                      //                         side: BorderSide(color: Colors.purple)))),
                                      //             onPressed: () => null),
                                      //       ],
                                      //     ),
                                      //   ),
                                      // ),,
                                      ,

                                      // Row(
                                      //   children: [
                                      //     Text("4,8"),
                                      //     Icon(
                                      //       Icons.star,
                                      //       color: Colors.amber,
                                      //     )
                                      //   ],
                                      // ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  alignment: Alignment.topLeft,
                                  child: Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.red,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: ClipOval(
                                    child: Image.asset(
                                      "images/Healthy18.jpg",
                                      width: 110,
                                      height: 110,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
