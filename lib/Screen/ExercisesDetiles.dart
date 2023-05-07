import 'package:flutter/material.dart';
import 'package:liaqti/Componant/Heder.dart';
import 'package:readmore/readmore.dart';
import '../ApplicationComponents/them.dart';
import 'package:video_player/video_player.dart';

class ExercisesDetiles extends StatelessWidget {
  const ExercisesDetiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Header(title: "اليوغا الصباحية للجسم بالكامل"),
            Container(
              margin: const EdgeInsets.all(20),
              child: Image.asset(
                "images/YOGA3 1.png",
                fit: BoxFit.cover,
                height: 250,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "تدفق الطاقة مع تمددات الوركين المشدودة",
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 15,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "درجة الصعوبة:",
                            style: TextStyle(
                              fontSize: Them().h,
                              fontWeight: FontWeight.bold,
                            ),
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
                      Row(
                        children: [
                          Text(
                            " المدة:",
                            style: TextStyle(
                              fontSize: Them().h,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text("  27 دقيفة"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Text(
                        "المعدات: ",
                        style: TextStyle(
                          fontSize: Them().h,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "حصيرة /كتلة يوغا",
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    " تفاصيل:",
                    style: TextStyle(
                        color: Them().baseColor,
                        fontSize: Them().h,
                        height: 2,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ReadMoreText(
                    "هذا التمرين هو واحد من المفضلة لدي. عندما أستيقظ في الصباح ، أحب أن أبدأ يومي بتمديدات روتينية من شأنها أن تجعل دمي وطاقتي تتدفق ، وتضبط نغمة اليوم. هذه الممارسة ستجعلك تتعرق وتساعد جسمك على تخفيف الضغط في نفس الوقت. تخلق أنماط الحركة ذاكرة حسية يمكننا البناء عليها. بدءًا من نمط التنفس ، تهدف كل حركة إلى مطابقة كل شهيق أو زفير لتشجيع التنفس العميق الذي يعزز الشعور بالتوتر ، ويزيد من مستوى الطاقة والاسترخاء ، ويثبت ضغط الدم. إذا ركزت على أنفاسك ، فسوف يهدأ عقلك.",
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
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
