import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:drop_shadow_image/drop_shadow_image.dart';
import '../ApplicationComponents/them.dart';
import '../Componant/Heder.dart';

class Experts extends StatelessWidget {
  const Experts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Header(title: 'خبراء لياقتي'),
          MaixExpert(),
        ],
      ),
    );
  }
}

class MaixExpert extends StatelessWidget {
  const MaixExpert({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              padding: const EdgeInsets.all(3),
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 15,
                    offset: const Offset(0, 6), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: SizedBox.fromSize(
                      child: DropShadowImage(
                        offset: Offset(0.0, 2.0),
                        borderRadius: 5,
                        blurRadius: 5,
                        scale: 5,
                        image: Image.asset(
                          "images/person1.png",
                          fit: BoxFit.cover,
                          height: 110,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 3 * MediaQuery.of(context).size.width / 5,
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'هيا احمد',
                          style: TextStyle(
                            color: Them().baseColor,
                            fontWeight: FontWeight.bold,
                            fontSize: Them().h,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Text(
                              'سنوات الخبرة:',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Them().h,
                              ),
                            ),
                            Text("12 سنة")
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(9),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Them().baseColor,
                              ),
                              child: Text(
                                'مدرب لياقتي',
                                style: TextStyle(
                                  fontSize: Them().smallText,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Text("4,8"),
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
