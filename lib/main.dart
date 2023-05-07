import 'package:flutter/material.dart';
import 'package:liaqti/Auth/createaccount.dart';
import 'package:liaqti/Auth/sign_in.dart';
import 'package:liaqti/Cart/Cart.dart';
import 'package:liaqti/Screen/MealPlan.dart';
import 'package:liaqti/Screen/article_secreen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'Bloc/bloc_language.dart';
import 'Screen/AboutAs.dart';
import 'Screen/ArticleDetiles.dart';
import 'Screen/Exercisespage.dart';
import 'Screen/Experts.dart';
import 'Screen/HealthyRecipe.dart';
import 'Screen/HealthyRecipeDetailes.dart';
import 'Screen/ProDetils.dart';
import 'Screen/Products.dart';
import 'Screen/ProductsDetails.dart';
import 'SharedPrefrances/sh_controller.dart';

import 'Screen/Exercises.dart';
import 'Screen/ExercisesDetiles.dart';
import 'Screen/home_screen.dart';
import 'Screen/search_screen.dart';
import 'StartScreen/SplashScreen.dart';
import 'StartScreen/hello_screen.dart';
import 'StartScreen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ShController().getInstance();

  runApp(const Dukkan());
}

class Dukkan extends StatelessWidget {
  const Dukkan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<BlocLanguage>(create: (context) => BlocLanguage()),
    ], child: const MyMaterial());
  }
}

class MyMaterial extends StatelessWidget {
  const MyMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: 'Almarai',
        ),
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate
        ],
        supportedLocales: const [
          Locale('en'),
          Locale('ar'),
        ],
        locale: const Locale('ar'),
        debugShowCheckedModeBanner: false,
        initialRoute: '/SplashScren',
        routes: {
          '/SplashScren': (context) => const SplashScren(),
          '/SplashScreen': (context) => const SplashScreen(),
          '/Login_Screen': (context) => const SignIn(),
          '/createAccount_Screen': (context) => const CreateAccount(),
          '/Hello_Screen': (context) => const HelloScreen(),
          '/ButtonBar': (context) => MyExample(),
          '/Article_Screen': (context) => const Article(),
          '/ExercisesDetiles_Screen': (context) => const ExercisesDetiles(),
          '/Exercises_Screen': (context) => const ExercisesPage(),
          '/Search_Screen': (context) => const SearchScreen(),
          '/Products_Screen': (context) => const Products(),
          //   '/Notification_Screen': (context) => const (),
          '/MealPlan_Screen': (context) => const MealPlan(),
          '/Cart_Screen': (context) => const CartScreen(),
          //  '/Settings_Screen' : (context) => const (),
          //  '/Favorites_Screen'
          // '/Profile_Screen': (context) => const (),
          '/ProdDetails': (context) => const ProdDetails(),
          '/HealthyRecipe': (context) => const HealthyRecipe(),
          '/HealthyRecipeDetailes': (context) => const HealthyRecipeDetailes(),
          '/Experts': (context) => const Experts(),
          '/AboutUs': (context) => const AboutUs(),
          '/ArticleDetiles': (context) => const ArticleDetiles(),
          //  '/ForgetPassword_Screen': (context) => const (),
        });
  }
}
