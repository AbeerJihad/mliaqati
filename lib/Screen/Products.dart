import 'package:flutter/material.dart';

import '../ApplicationComponents/them.dart';
import '../Componant/ProductCard.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  /// List of Tab Bar Item
  List<String> items = [
    "الكل",
    "المكملات الغذائية",
    "الاجهزة الرياضية",
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
        title: Text("المنتجات"),
        leading: GestureDetector(
          child: Icon(Icons.arrow_back),
          onTap: () {
            Navigator.pop(context);
          },
        ),
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
        margin: const EdgeInsets.all(30),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            childAspectRatio: .67,
            crossAxisSpacing: 30,
            mainAxisSpacing: 10,
          ),
          itemCount: 10,
          itemBuilder: (context, index) {
            //inzlize list   lst[curunt] from list widget (inzlize up)
            return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/ProductsDetails');
                },
                child: ProductCard());
          },
        ),
      ),
    );
  }
}
