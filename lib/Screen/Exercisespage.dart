import 'package:flutter/material.dart';
import 'package:liaqti/ApplicationComponents/them.dart';

import '../Componant/AppBarSection.dart';

class ExercisesPage extends StatelessWidget {
  const ExercisesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Them().baseColor,
        backgroundColor: Colors.white,
        title: Text(
          "التمارين الرياضية",
          style: TextStyle(
            color: Them().baseColor,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
            decoration: BoxDecoration(
              color: Them().baseColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(15),
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
            ),
            child: Row(
              children: [
                Image.asset(
                  "images/person-removebg.png",
                  height: 180,
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: Text(
                    "تمرن مع لياقتي من المنزل",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 2),
                  ),
                ),
              ],
            ),
          ),
          MainExer(),
        ],
      ),
    );
  }
}

class MainExer extends StatelessWidget {
  const MainExer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/ExercisesDetiles_Screen');
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(15),
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 0,
                    blurRadius: 15,
                    offset: const Offset(0, 9), // changes position of shadow
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 25),
              margin: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 4.5,
                    child: Image.asset("images/Spinner.png"),
                  ),
                  Container(
                      width: 2 * MediaQuery.of(context).size.width / 4.2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "الدراجة الهوائية",
                            style: TextStyle(
                              color: Them().baseColor,
                              fontSize: Them().h,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "تعمل الدراجة الهوائية على العمل بناءا على بناء عضلات الجسم",
                            style: TextStyle(height: 1.5),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text("27"),
                                  Icon(
                                    Icons.timer,
                                    color: Them().baseColor,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset("images/image 72.png"),
                                  Image.asset("images/image 72.png"),
                                  Image.asset("images/image 72.png"),
                                  Image.asset("images/image 72.png"),
                                  Image.asset("images/image 72.png"),
                                ],
                              )
                            ],
                          ),
                        ],
                      )),
                  Container(
                    width: MediaQuery.of(context).size.width / 8,
                    child: Icon(
                      Icons.arrow_circle_left_outlined,
                      color: Them().baseColor,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
