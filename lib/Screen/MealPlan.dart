import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ApplicationComponents/them.dart';

class MealPlan extends StatefulWidget {
  const MealPlan({Key? key}) : super(key: key);

  @override
  State<MealPlan> createState() => _MealPlanState();
}

class _MealPlanState extends State<MealPlan> {
  /// List of Tab Bar Item
  List<String> items = [
    "الكل",
    "الانظمة الحديثة",
    "انظمة خاصة",
    "نظام غذائي عام",
  ];

  /// List of body icon
  List<Widget> ScreenPro = [
    // screenBody(all),
    // screenBody(sport),
    // screenBody(Drags),
  ];
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Them().baseColor,
        title: Text("الانظمة الغذائية"),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            /// TabBar
            Container(
              alignment: Alignment.center,
              color: Them().baseColor,
              width: double.infinity,
              padding: const EdgeInsets.all(5),
              height: 70,
              child: ListView.builder(
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.all(5),
                            padding: EdgeInsets.symmetric(
                                horizontal: 25, vertical: 4),
                            height: 45,
                            decoration: BoxDecoration(
                              color: current == index
                                  ? Colors.white
                                  : Them().baseColor,
                              borderRadius: current == index
                                  ? BorderRadius.circular(20)
                                  : BorderRadius.circular(18),
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                            child: Center(
                              child: Text(
                                items[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: current == index
                                        ? Them().baseColor
                                        : Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            ),

            /// Screen BODY   lst[curunt] from list widget (inzlize up)
            screenBody(pro: []),
          ],
        ),
      ),
    );
  }
}

class screenBody extends StatelessWidget {
  final List<String> pro;
  const screenBody({super.key, required this.pro});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      color: Colors.white,
      padding: EdgeInsets.all(20),
      child: Expanded(
        child: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return GestureDetector(
              // onTap: () {
              //   Navigator.pushNamed(context, '/Home_Screen');
              // },
              child: Container(
                margin: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('images/img.png'),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "النظام الغذائي الكيتو",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.star,
                                      color: Colors.amber[600], size: 15),
                                  Icon(Icons.star,
                                      color: Colors.amber[600], size: 15),
                                  Icon(Icons.star,
                                      color: Colors.amber[600], size: 15),
                                  Icon(Icons.star,
                                      color: Colors.amber[300], size: 15),
                                  Icon(Icons.star,
                                      color: Colors.amber[300], size: 15),
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "\$19,99 ",
                                    style: TextStyle(
                                        color: Colors.purple,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    'اشترك الان',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 14,
                                      fontFamily: 'Public Sans',
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_back_ios_new,
                                    color: Colors.black26,
                                    size: 10,
                                  ),
                                  Icon(
                                    Icons.arrow_back_ios_new,
                                    color: Colors.black26,
                                    size: 10,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ));
  }
}
