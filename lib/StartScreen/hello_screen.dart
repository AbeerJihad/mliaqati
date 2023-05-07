import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../ApplicationComponents/them.dart';
import '../Widgets/text_widgets.dart';

class HelloScreen extends StatefulWidget {
  const HelloScreen({Key? key}) : super(key: key);

  @override
  State<HelloScreen> createState() => _HelloScreenState();
}

PageController pageController = PageController(initialPage: 0);

Them _them = Them();
int currentIndex = 0;

class _HelloScreenState extends State<HelloScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/on_bording.png'),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
          child: Column(
            children: [
              Visibility(
                maintainState: true,
                maintainInteractivity: true,
                maintainSemantics: true,
                maintainAnimation: true,
                maintainSize: true,
                visible: currentIndex == 0 ? true : false,
                child: Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: TextButton(
                    onPressed: () {
                      //ShController().saveSkipHelloScreen();
                      // Navigator.pushReplacementNamed(context, '/Login_Screen');
                      Navigator.pushReplacementNamed(context, '/ButtonBar');
                    },
                    child: TextWidget(
                        text: AppLocalizations.of(context)!.skip,
                        size: 13,
                        font: Them().font,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              Expanded(
                child: PageView(
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('images/exercies.svg'),
                        const SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 19),
                          child: Text(
                            'تمارين رياضية تساعدك على الحصول على جسم رشيق  وصحة جيدة',
                            textAlign: TextAlign.center,
                            maxLines: 4,
                            style: TextStyle(
                                fontFamily: Them().font,
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('images/mealprogram.svg'),
                        const SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 19),
                          child: Text(
                            'أنظمة غذائية صحية تساعدك على اتباع نظام  غذائي مناسب لجسمك',
                            textAlign: TextAlign.center,
                            maxLines: 4,
                            style: TextStyle(
                                fontFamily: Them().font,
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('images/recipes.svg'),
                        const SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 19),
                          child: Text(
                            'وصفات  متنوعة تساعدك على اتنباع النظام الغذائي الذي تحب  دون حرمان',
                            textAlign: TextAlign.center,
                            maxLines: 4,
                            style: TextStyle(
                                fontFamily: Them().font,
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minWidth: 70,
                  minHeight: 70,
                  maxWidth: 150,
                  maxHeight: 150,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    currentIndex == 0
                        ? Container(
                            height: 7,
                            width: 23,
                            decoration: BoxDecoration(
                              color: _them.baseColor,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          )
                        : Container(
                            height: 7,
                            width: 7,
                            decoration: const BoxDecoration(
                                color: Colors.black26, shape: BoxShape.circle),
                          ),
                    const SizedBox(
                      width: 4,
                    ),
                    currentIndex == 1
                        ? Container(
                            height: 7,
                            width: 23,
                            decoration: BoxDecoration(
                              color: _them.baseColor,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          )
                        : Container(
                            height: 7,
                            width: 7,
                            decoration: const BoxDecoration(
                                color: Colors.black26, shape: BoxShape.circle),
                          ),
                    const SizedBox(
                      width: 4,
                    ),
                    currentIndex == 2
                        ? Container(
                            height: 7,
                            width: 23,
                            decoration: BoxDecoration(
                              color: _them.baseColor,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          )
                        : Container(
                            height: 7,
                            width: 7,
                            decoration: const BoxDecoration(
                                color: Colors.black26, shape: BoxShape.circle),
                          ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all(_them.baseColor),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(
                        horizontal: 0,
                        vertical: 3,
                      ),
                    ),
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(fontSize: 30),
                    ),
                  ),
                  onPressed: () {
                    if (currentIndex != 2) {
                      pageController.animateToPage(currentIndex + 1,
                          duration: const Duration(milliseconds: 900),
                          curve: Curves.bounceOut);
                    } else {
                      // ShController().saveSkipHelloScreen();
                      Navigator.pushReplacementNamed(context, '/Login_Screen');
                    }
                  },
                  child: Center(
                    child: Text(
                      'التالي',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),

              // Container(
              //   height: 59,
              //   width: 59,
              //   decoration: BoxDecoration(
              //     color: _them.baseColor,
              //     boxShadow: [
              //       BoxShadow(
              //         color: Colors.black12,
              //         blurRadius: 8,
              //         offset: Offset(0, 5),
              //       )
              //     ],
              //     shape: BoxShape.circle,
              //     // gradient: LinearGradient(
              //     //   begin: AlignmentDirectional.topStart,
              //     //   end: AlignmentDirectional.topEnd,
              //     //   colors: [
              //     //     Color(0xff298BD9),
              //     //     Color(0xff3183C5),
              //     //   ],
              //     // ),
              //   ),
              //   child: IconButton(
              //       onPressed: () {
              //         if (currentIndex != 2) {
              //           pageController.animateToPage(currentIndex + 1,
              //               duration: const Duration(milliseconds: 900),
              //               curve: Curves.bounceOut);
              //         } else {
              //           // ShController().saveSkipHelloScreen();
              //           Navigator.pushReplacementNamed(
              //               context, '/Login_Screen');
              //         }
              //       },
              //       icon: const Icon(
              //         Icons.arrow_forward,
              //         color: Colors.white,
              //       )),
              // ),
              const SizedBox(
                height: 20,
              ),

              InkWell(
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/Login_Screen');
                },
                child: Text(
                  "تسجيل الدخول",
                  style: TextStyle(
                      color: _them.baseColor, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
