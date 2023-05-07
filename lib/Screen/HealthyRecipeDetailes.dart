import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HealthyRecipeDetailes extends StatelessWidget {
  const HealthyRecipeDetailes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 50, 20, 20),
            child: Text(
              ' تفاصيل الوصفة',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.purple),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Column(
              children: [
                // Container(
                //   decoration: BoxDecoration(
                //       border: Border.all(
                //         width: 1,
                //       ),
                //       borderRadius: BorderRadius.all(Radius.circular(12))),
                //   alignment: Alignment.bottomLeft,
                //   child: Image.asset(
                //     "images/Healthy18.jpg",
                //     width: 375,
                //     fit: BoxFit.fill,
                //   ),
                // ),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15), // Image border
                      child: SizedBox.fromSize(
                        // size: Size.fromRadius(180), // Image radius
                        child: Image.asset("images/Healthy18.jpg",
                            width: 375, fit: BoxFit.cover),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Positioned(
                          bottom: 100,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 90,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 235, 119, 255),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                  child: Text(
                                    'فطار خفيف',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Text(
                                'السمبوسة الدايت',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white),
                              ),
                            ],
                          )),
                    )
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "تفاصيل الوصفة",
                        style: TextStyle(fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      size: 13,
                                      color: Color.fromARGB(255, 1, 7, 163),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      ' كاربوهيدرات ',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                              255, 121, 121, 121)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '21%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      size: 13,
                                      color: Color.fromARGB(255, 255, 12, 28),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'دهون',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                              255, 121, 121, 121)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '10%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      size: 13,
                                      color: Colors.green,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'بروتين',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                              255, 121, 121, 121)),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  '8%',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'طريقة التحضير',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Text(
                          """– عدد لفة سمبوسة واحدة فقط، و  مصنوعة من دقيق القمح الكامل، لضمان قيمة غذائية أكبر، و سعرات حرارية أقل.
                          الحشوة:
                          . الحشوة الأولى: بطاطس مسلوقة و فلفل أخضر مقطع قطع صغيرة
                          . الحشوة الثانية:  لحمة مفرومة “عصاج” يتم تحضيرها بمعلقة زيت واحدة فقط 
                          
                          طريقة عمل السمبوسة الدايت في الفرن:
                          
                          – يتم خفق البيضة في طبق صغير بالشوكة مع رشة فلفل اسمر، و تترك جانبا.
                          
                          – يتم تجهيز لفة السمبوسة، و إذا كانت مجمدة في الفريزر يتم تركها حتى تصبح في درجة حرارة الغرفة، حتى يسهل فصل رقائق السمبوسة عن بعضها البعض.
                          
                          – يتم هرس البطاطس المسلوقة و خلطها بقطع الفلفل الأخضر جيدا، و يمكن إضافة بعض التوابل حسب الرغبة.
                          
                          - يتم تسخين الفرن على درجة حرارة 180 درجة مئوية قبل البدء في تجهيز السمبوسة للحشو.
                          
                          – يتم فرد رقائق السمبوسة واحدة تلو الأخرى، و يتم حشو كل رقاقة على حدة بالحشوة المرغوب فيها، سواء خليط البطاطس المهروسة مع الفلفل الأخضر و البقدونس، أو العصاج، و يمكن وضعهما معا كحشوة واحدة.
                          
                          – يتم لف رقائق السمبوسة على شكل مثلث مع وضع الطرف الحر في الرقاقة لأسفل.
                          
                          – يتم دهن صينية فرن بمعلقة من الزيت، ثم يتم رص وحدات السمبوسة الدايت في الصينية بتناسق.
                          
                          – يتم دهن سطح وحدات السمبوسة الدايت بالبيض المضروب بالفلفل الأسمر.
                          
                          – يتم إدخال صينية السمبوسك إلى الفرن المسخن مسبقا، و ننتظر لمدة عشر دقائق فقط، أو حتى يحمر سطح السمبوسه قليلا لنعرف أنها صارت جهازة لتخرج من الفرن.
                          
                          – يتم تقديم طبق السمبوسة على المائدة و هي ساخنة وتزين بالبقدونس.
                          
                          السعرات لكل 100 جرام
                          """)
                    ],
                  ),
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
