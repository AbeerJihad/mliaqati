import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:liaqti/ApplicationComponents/them.dart';
import 'package:readmore/readmore.dart';

import '../Componant/Heder.dart';
import '../Componant/ListCom.dart';
import '../Componant/ListItem.dart';

class ArticleDetiles extends StatelessWidget {
  const ArticleDetiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(title: "مشروبات تساعدك على النوم"),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Image.asset(
                    "images/12.png",
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(25),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Flexible(
                            child: Text(
                              "يعد الحصول على قسط كافٍ من النوم أمرًا هامًا للحفاظ على الصحة النفسية والبدنية، وقد يواجه البعض صعوبة في النوم ليلًا الأمر الذي يسبب الانزعاج ويؤثر على نشاط الفرد وحيويته بل وعلى صحته، يمكن أن يفيد الاستعانة بمشروبات تساعد على النوم في تمهيد الطريق للشعور بالاسترخاء والاستغراق في النوم. [1]",
                              style: TextStyle(height: 1.5),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      ListCom(
                        title: "محتويات المقال",
                      ),
                      ListItem(text: "الحليب الدافئ"),
                      ListItem(text: "عصير الكرز الحامض"),
                      ListItem(text: "حليب اللوز"),
                      ListItem(text: "الشاي الأخضر الخالي من الكافيين"),
                      ListItem(text: "مشروبات ينبغي الامتناع عنها وقت النوم"),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18.0),
                        child: Divider(
                          color: Them().baseColor,
                          thickness: 3,
                        ),
                      ),
                      ListCom(title: "حليب اللوز"),
                      ReadMoreText(
                        "يحضر حليب اللوز من اللوز الكامل عن طريق خلط اللوز مع الماء حتى يمتزج ثم تصفيته، ويتسم بغناه بالعديد من المواد التي تعزز النوم، مثل التريبتوفان، والميلاتونين، والمغنيسيوم؛ ما يجعله من أفضل المشروبات التي تساعد على النوم والاسترخاء. [3] [4]  يحتوي كوب واحد من حليب اللوز على ما يقرب من 17 غرامًا من المغنيسيوم، والذي ثبتت فاعليته في تخفيف الأرق خاصة عند كبار السن؛ لذا يعد حليب اللوز أحد المشروبات التي تساعد على النوم لكبار السن. [4]",
                        trimLines: 3,
                        style: TextStyle(fontSize: 14, height: 2),
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'المزيد.',
                        trimExpandedText: 'اقل.',
                        lessStyle: TextStyle(
                            fontSize: Them().h,
                            fontWeight: FontWeight.bold,
                            color: Them().baseColor),
                        moreStyle: TextStyle(
                            fontSize: Them().h,
                            fontWeight: FontWeight.bold,
                            color: Them().baseColor),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18.0),
                        child: Divider(
                          color: Them().baseColor,
                          thickness: 3,
                        ),
                      ),
                      ListCom(title: "حليب اللوز"),
                      ReadMoreText(
                        "يحضر حليب اللوز من اللوز الكامل عن طريق خلط اللوز مع الماء حتى يمتزج ثم تصفيته، ويتسم بغناه بالعديد من المواد التي تعزز النوم، مثل التريبتوفان، والميلاتونين، والمغنيسيوم؛ ما يجعله من أفضل المشروبات التي تساعد على النوم والاسترخاء. [3] [4]  يحتوي كوب واحد من حليب اللوز على ما يقرب من 17 غرامًا من المغنيسيوم، والذي ثبتت فاعليته في تخفيف الأرق خاصة عند كبار السن؛ لذا يعد حليب اللوز أحد المشروبات التي تساعد على النوم لكبار السن. [4]",
                        trimLines: 3,
                        style: TextStyle(fontSize: 14, height: 2),
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'المزيد.',
                        trimExpandedText: 'اقل.',
                        lessStyle: TextStyle(
                            fontSize: Them().h,
                            fontWeight: FontWeight.bold,
                            color: Them().baseColor),
                        moreStyle: TextStyle(
                            fontSize: Them().h,
                            fontWeight: FontWeight.bold,
                            color: Them().baseColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
