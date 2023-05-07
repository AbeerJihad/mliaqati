import 'package:flutter/material.dart';
import 'package:liaqti/ApplicationComponents/them.dart';
import 'package:liaqti/Componant/ListItem.dart';

import '../Componant/ListCom.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Them().baseColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          "من نحــن",
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Image.asset(
                      "images/Mask Group 33.png",
                      height: 180,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "نقدم لك المزيد من المعرفة حول الحياة والروتين الصحي",
                      style: TextStyle(height: 1.5),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "لياقتي تهتم بالتغذية السليمة لأصحاب الأمراض المزمنة وكذلك الأطفار الذين يعانون من السمنة",
                      style: TextStyle(height: 1.5),
                    ),
                    Divider(
                      color: Them().baseColor,
                      thickness: 5,
                      height: 60,
                    )
                  ],
                ),
              ),
              const ListCom(title: "ماذا نقدم:"),
              const ListItem(
                  text:
                      "فريق متميز من مدربين اللياقة البدنية وخبراء التغذية. "),
              const ListItem(
                  text: "برامج رياضية يمكنك الاشتراك بها بكل سهولة ."),
              const ListItem(text: "أنظمة غذائية عالمية."),
              const ListItem(
                  text: "وصفات صحية مدروسة على أيدي اخصائي التغذية."),
              const ListItem(
                  text: "معدات واجهزة خاصة باللياقة البدنية بأسعار مميزة."),
              const ListItem(
                  text:
                      "مكملات غذائية لتقوية الجسم والحفاظ عليه من التغيرات ."),
              Image.asset(
                "images/Online Personal Trainer-pana.png",
                height: 180,
              ),
              Divider(
                color: Them().baseColor,
                thickness: 5,
                height: 60,
              ),
              const ListCom(title: "كيف يمكنك الاستفادة من خدماتنا"),
              const ListItem(
                  text:
                      "التأكد من عدم وجود نقص في أحد الفيتامينات والمعادن المهمة لجسمك ."),
              const ListItem(
                  text:
                      "اختيار النظام الغذائي المناسب لجسمك ومدى قدرتك على تحمل النظام."),
              const ListItem(
                  text:
                      "عليك اختيار البرنامج الرياضي المناسب للنظام الغذائي الذي تتبعه."),
              const ListItem(
                  text:
                      "اتباع النظام الغذائي و والرامج الرياضية التي تشترك بها حتى ترى نتيجة مرضية."),
              const ListItem(
                  text:
                      "للاستفادة الجيدة والفعالة أنصحك باستشارة اخصائي التغذية المتوفر في موقعنا وهو يحدد لك الخطة الصحيحة التي تناسب جسمك ووضعك الصحي."),
              const ListItem(
                  text:
                      "التثقيف الصحي حتى لا تقع في بعض الأخطاء عند ممارسة الرياضة ."),
              Image.asset(
                "images/Mask Group 51.png",
                height: 180,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
