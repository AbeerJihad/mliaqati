import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liaqti/ApplicationComponents/constants.dart';
import 'package:liaqti/Widgets/text_widgets.dart';
import 'package:liaqti/mixin.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../ApplicationComponents/them.dart';
import '../Componant/SectionsHeaders.dart';
import '../Widgets/HealthyRecipeCard.dart';
import '../Widgets/button_widget.dart';
import '../Widgets/cart_widget.dart';
import '../Widgets/component.dart';
import '../Widgets/drawer_list.dart';
import '../Widgets/information_circle_image.dart';
import 'package:custom_line_indicator_bottom_navbar/custom_line_indicator_bottom_navbar.dart';

import 'MealPlan.dart';
import 'Products.dart';
import 'article_secreen.dart';

class MyExample extends StatefulWidget {
  @override
  _MyExampleState createState() => _MyExampleState();
}

class _MyExampleState extends State<MyExample> {
  int _selectedIndex = 0; //default index

  List<Widget> _widgetOptions = [
    HomeScreen(),
    Article(),
    Products(),
    MealPlan(),
  ];
  @override
  Widget build(BuildContext context) {
    var custom = CustomLineIndicatorBottomNavbar(
      selectedColor: Color(0xFF8663B3),
      unSelectedColor: Colors.grey,
      backgroundColor: Colors.white,
      currentIndex: _selectedIndex,
      unselectedIconSize: 24,
      selectedIconSize: 24,
      selectedFontSize: 10,

      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      enableLineIndicator: true,
      lineIndicatorWidth: 2,
      indicatorType: IndicatorType.Top,
      // gradient: LinearGradient(
      //   colors: [Colors.pink, Colors.yellow],
      // ),
      customBottomBarItems: [
        CustomBottomBarItems(
          label: 'الصفحة الرئيسية',
          icon: Icons.home_filled,
        ),
        CustomBottomBarItems(label: 'Bookings', icon: Icons.list_alt),
        CustomBottomBarItems(label: 'Notification', icon: Icons.notifications),
        CustomBottomBarItems(label: 'الصفحة الشخصية', icon: Icons.menu),
      ],
    );
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(110, 107, 232, 0.15),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            height: 65,
            child: ClipRRect(
              child: custom,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            )));
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with Helper {
  List<dynamic> topFreelance = <dynamic>[
    {
      'keyName': 'مازن ماجد',
      'keyImage': "images/topfreelane_one.png",
      'keyCategory': 'مدرب لياقه',
      'keyRate': '4.5'
    },
    {
      'keyName': 'جيهان أكرم',
      'keyImage': "images/topfreelance_two.png",
      'keyCategory': 'مدرب لياقه',
      'keyRate': '4.8'
    },
    {
      'keyName': 'مازن ماجد',
      'keyImage': "images/topfreelance_three.png",
      'keyCategory': 'مدرب لياقه',
      'keyRate': '4.8'
    },
  ];

  List<dynamic> services = <dynamic>[
    {'icon': 'images/gymimg.png', 'name': 'تمارين رياضية'},
    {'icon': 'images/smartphonee.png', 'name': 'أنظمة غذائية'},
    {'icon': 'images/calendarr.png', 'name': 'منتجات رياضية'},
    {'icon': 'images/dumbbel.png', 'name': 'أنظمة رياضية'},
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(builder: (context) {
          return IconButton(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: SvgPicture.asset(
              'images/menu.svg',
              color: Colors.black,
            ),
          );
        }),
        actions: [
          IconButton(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onPressed: () {
              Navigator.pushNamed(context, '/Search_Screen');
            },
            icon: Icon(
              Icons.search_sharp,
              color: Them().baseColor,
              size: 25,
            ),
          ),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/Notification_Screen');
              },
              icon: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    'images/notification.svg',
                    color: Them().baseColor,
                  ),
                ),
              )),
          IconButton(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              Navigator.pushNamed(context, '/Cart_Screen');
            },
            icon: Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 1.4, vertical: 1.4),
                    decoration: BoxDecoration(
                        color: Them().baseColor, shape: BoxShape.circle),
                    child: Center(
                      child: TextWidget(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          font: Them().font,
                          text: "4",
                          size: 10),
                    ),
                  ),
                ),
                SvgPicture.asset('images/Cart Icon.svg',
                    color: Them().baseColor)
              ],
            ),
          ),
        ],
      ),
      body: RefreshIndicator(
        color: Them().baseColor,
        backgroundColor: Colors.white,
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 2), () {});
        },
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(vertical: 10),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      font: Them().font,
                      text: AppLocalizations.of(context)!.showFavorites,
                      size: Them().h),
                  TextWidget(
                      fontWeight: FontWeight.normal,
                      color: Colors.black45,
                      font: Them().font,
                      text: AppLocalizations.of(context)!.showFavorites2,
                      size: 13),
                ],
              ),
            ),
            const SizedBox(
              height: 19,
            ),
            CarouselSlider.builder(
              itemCount: 2,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  clipBehavior: Clip.antiAlias,
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Them().baseColor.withAlpha(40),
                  ),
                  height: 150,
                  width: 305,
                  child: Center(
                    child: Stack(children: [
                      Image.asset(
                        'images/sliderimg.png',
                      ),
                      Container(
                        height: double.infinity,
                        width: double.infinity,
                        color: Colors.black38,
                      ),
                      Align(
                        alignment: AlignmentDirectional.bottomStart,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: ButtonWidget(
                              child: TextWidget(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  font: Them().font,
                                  text: AppLocalizations.of(context)!.shopNow,
                                  size: 8),
                              onPressed: () {
                                //Navigator shop
                              },
                              height: 26,
                              width: 79,
                              color: Them().baseColor),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10, bottom: 10),
                        child: Align(
                          alignment: AlignmentDirectional.centerStart,
                          child: Container(
                            width: 140,
                            child: Center(
                              child: Text(
                                'نقدم لكم أحدث الأنظمة الغذائية الموثوقة',
                                style: TextStyle(
                                  fontSize: Them().smallText,
                                  color: Colors.white,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                );
              },
              options: CarouselOptions(
                height: 140,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
            ),
            const SizedBox(
              height: 21,
            ),
            ListView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                SectionsHeader(
                    NavigtTo: "/Sections_Screen",
                    TextSh: AppLocalizations.of(context)!.service),
                SizedBox(
                  height: 130,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xFF8663B3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/Exercises_Screen');
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Image.asset(
                                  'images/gymimg.png',
                                  // height: 65,
                                  // width: 75,
                                ),
                              ),
                              Text(
                                'تمارين رياضية',
                                style: TextStyle(color: Colors.white),
                              ) //name
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Them().baseColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/MealPlan_Screen');
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Image.asset(
                                  'images/smartphonee.png',
                                  // height: 65,
                                  // width: 75,
                                ),
                              ),
                              Text(
                                'أنظمة غذائية',
                                style: TextStyle(color: Colors.white),
                              ) //name
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Color(0xFF8663B3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/Products_Screen');
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Image.asset(
                                  'images/calendarr.png',
                                  // height: 65,
                                  // width: 75,
                                ),
                              ),
                              Text(
                                'منتجات رياضية',
                                style: TextStyle(color: Colors.white),
                              ) //name
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Them().baseColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: InkWell(
                          onTap: () {
                            // print('on tap here');
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                child: Image.asset(
                                  'images/dumbbel.png',
                                  // height: 65,
                                  // width: 75,
                                ),
                              ),
                              Text(
                                'أنظمة رياضية',
                                style: TextStyle(color: Colors.white),
                              ) //name
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: DEVICE_HEIGHT * 0.01,
                ),
                SectionsHeader(NavigtTo: '/Experts', TextSh: 'مدربين لياقتي'),
                SizedBox(
                  height: DEVICE_HEIGHT * 0.001,
                ),
                SizedBox(
                  width: DEVICE_WIDTH * 0.9,
                  height: MediaQuery.of(context).size.height / 3.2,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: topFreelance.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(
                          top: DEVICE_HEIGHT * 0.05,
                          right: DEVICE_HEIGHT * 0.01,
                        ),
                        height: DEVICE_HEIGHT * 0.5,
                        width: DEVICE_HEIGHT * 0.22,
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius:
                              BorderRadius.circular(DEVICE_WIDTH * 0.07),
                        ),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: <Widget>[
                            Positioned(
                              top: -27,
                              right: 50,
                              child: Container(
                                padding: EdgeInsets.all(DEVICE_WIDTH * 0.01),
                                decoration: BoxDecoration(
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                      color: Colors.grey[100]!,
                                    ),
                                  ],
                                  borderRadius: BorderRadius.circular(
                                      DEVICE_WIDTH * 0.09),
                                ),
                                child: ClipOval(
                                  child: Image.asset(
                                    topFreelance[index]['keyImage'],
                                    width: 70,
                                    height: 70,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: DEVICE_HEIGHT * 0.06,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        topFreelance[index]['keyName'],
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: DEVICE_WIDTH * 0.001,
                                        ),
                                      ),
                                      Icon(
                                        Icons.check_circle_rounded,
                                        color: Colors.blue,
                                        size: DEVICE_WIDTH * 0.04,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    topFreelance[index]['keyCategory'],
                                    style: TextStyle(
                                      color: Colors.grey,
                                      letterSpacing: DEVICE_WIDTH * 0.001,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: DEVICE_WIDTH * 0.04,
                                      ),
                                      SizedBox(
                                        width: DEVICE_WIDTH * 0.02,
                                      ),
                                      Text(
                                        topFreelance[index]['keyRate'],
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: DEVICE_HEIGHT * 0.02,
                                  ),
                                  Container(
                                    height: 40,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Them().baseColor,
                                      borderRadius: BorderRadius.circular(
                                        DEVICE_WIDTH * 0.05,
                                      ),
                                    ),
                                    child: Text(
                                      'مشاهدة البروفايل',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: DEVICE_WIDTH * 0.03,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 23,
                ),
                SectionsHeader(
                    NavigtTo: '/HealthyRecipe', TextSh: 'وصفات لياقتي'),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return HealthyRecipeCard();
                        //  CartWidget(
                        //     price: '4500',
                        //     name: ' ',
                        //     address: '',
                        //     image:
                        //         'https://poster1.net/wp-content/uploads/2018/04/3463.jpg',
                        //     rate: 3,
                        //     ifStareTop: false,
                        //     onFavorites: () {},
                        //     iconFavorites: Icon(
                        //       Icons.favorite,
                        //       color: Colors.red,
                        //       size: Them().h,
                        //     )

                        ;
                      }),
                ),
                const SizedBox(
                  height: 23,
                ),
              ],
            ),
            const Pro(),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SectionsHeader(
                NavigtTo: '/Article_Screen',
                TextSh: AppLocalizations.of(context)!.mostWanted,
              ),
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return CartWidget(
                    vertical: 15,
                    height: 200,
                    width: double.infinity,
                    price: '4500',
                    name: 'الدايت و رمضان',
                    address:
                        'الكثير من الصائمين يتسائلون هل أجواء رمضان والتغييرات في أوقات الوجبات والعادات الغذائية تساعد على زيادة الوزن أم خسارته؟',
                    image: 'https://img.youm7.com/large/20210304041506156.jpg',
                    rate: 3,
                    ifStareTop: true,
                    onFavorites: () {},
                    iconFavorites: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 17,
                    ),
                  );
                }),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Them().baseColor,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            const InformationAndCircleImageProfile(
                color: Colors.white,
                name: 'آلاء ياسين',
                imageProfile: AssetImage('images/topfreelane_one.png'),
                mobileNumber: '0592294948'),
            DrawerList(
                onTap: () {
                  Navigator.pushNamed(context, '/Profile_Screen');
                },
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 16,
                ),
                treling: IconButton(
                    onPressed: () {
                      // Navigator.pushNamed(
                      //     context, '/profile_Screen');
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 15,
                      color: Colors.white,
                    )),
                title: AppLocalizations.of(context)!.profile,
                color: Colors.white),
            const SizedBox(
              height: 10,
            ),
            DrawerList(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/Sections_Screen');
                },
                icon: const Icon(Icons.settings, color: Colors.white, size: 16),
                title: AppLocalizations.of(context)!.service,
                color: Colors.white),
            const SizedBox(
              height: 10,
            ),
            DrawerList(
                onTap: () {
                  Navigator.pushNamed(context, '/Favorites_Screen');
                },
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.white,
                  size: 16,
                ),
                title: AppLocalizations.of(context)!.favorites,
                color: Colors.white),
            const SizedBox(
              height: 10,
            ),
            DrawerList(
                onTap: () {},
                icon: const Icon(Icons.chat, color: Colors.white, size: 16),
                title: AppLocalizations.of(context)!.chat,
                color: Colors.white),
            const SizedBox(
              height: 10,
            ),
            DrawerList(
                onTap: () {
                  Navigator.pushNamed(context, '/Settings_Screen');
                },
                icon: const Icon(Icons.settings, color: Colors.white, size: 16),
                title: AppLocalizations.of(context)!.setting,
                color: Colors.white),
            const SizedBox(
              height: 10,
            ),
            DrawerList(
                onTap: () {},
                icon: const Icon(Icons.share, color: Colors.white, size: 16),
                title: AppLocalizations.of(context)!.shareApp,
                color: Colors.white),
            const SizedBox(
              height: 30,
            ),
            DrawerList(
                onTap: () {},
                icon: const Icon(
                  Icons.login,
                  color: Colors.white,
                  size: 16,
                ),
                countIcon: 1,
                title: AppLocalizations.of(context)!.signOut,
                color: Colors.white),
          ],
        ),
      ),
    ));
  }
}
