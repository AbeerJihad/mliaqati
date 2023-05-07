import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../ApplicationComponents/them.dart';

class Article extends StatefulWidget {
  const Article({Key? key}) : super(key: key);

  @override
  State<Article> createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  /// List of Tab Bar Item
  List<String> items = [
    "الكل",
    "لياقة بدنية",
    "وصفات غذائية",
    "عامة",
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
      body: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage(
                          "images/image 89.png",
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  top: 40,
                  right: 15,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
                Positioned(
                    left: 40,
                    top: 100,
                    child: Text(
                      "مقالات لياقتي",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    )),
                Positioned(
                  bottom: 0,
                  child: Placeholder(
                    color: Colors.transparent.withOpacity(0),
                    child: Container(
                      //  color: Them().hcolor,
                      width: double.infinity,
                      height: 60,
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
                                          : Colors.transparent,
                                      borderRadius: current == index
                                          ? BorderRadius.circular(20)
                                          : BorderRadius.circular(18),
                                      border: Border.all(
                                          color: Colors.white, width: 2),
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
                  ),
                ),
              ],
            ),

            /// TabBar

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
              onTap: () {
                Navigator.pushNamed(context, '/ArticleDetiles');
              },
              child: Container(
                margin: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/img.png',
                      height: 160,
                      fit: BoxFit.cover,
                    ),
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
                                  color: Colors.purple,
                                  fontSize: 18,
                                ),
                              ),
                              Row(
                                children: [
                                  Text("420"),
                                  SizedBox(width: 10),
                                  Icon(Icons.remove_red_eye,
                                      color: Colors.grey, size: 25),
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "24",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.message,
                                    color: Colors.purple,
                                    size: 20,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "10",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.black26,
                                    size: 20,
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
                  borderRadius: BorderRadius.circular(15),
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
