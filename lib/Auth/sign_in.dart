import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liaqti/mixin.dart';
import '../ApplicationComponents/them.dart';
import '../Widgets/button_widget.dart';
import '../Widgets/text_widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../Widgets/textfiled_widget.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

Them _them = Them(); // class Them in application {Color&&colorText}
late TextEditingController _emailEditingController;
late TextEditingController _passwordEditingController;
String? errorEmail;
String? errorPassword;
String countryName = '';
String citiesName = '';
int idCountry = 0;
int dialog = 1;
String phoneCode = '';
bool isCheck = false; //check chose

class _SignInState extends State<SignIn> with Helper {
  @override
  void initState() {
    super.initState();
    _emailEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // _emailEditingController.dispose();
    // _passwordEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Them().baseColor,
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          backgroundColor: Colors.white,
          body: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 50),
            children: [
              Align(
                alignment: AlignmentDirectional.topEnd,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/ButtonBar');
                  },
                  child: TextWidget(
                      fontWeight: FontWeight.normal,
                      color: Colors.black45,
                      font: _them.font,
                      text: AppLocalizations.of(context)!.skip,
                      size: 15),
                ),
              ),
              Image.asset(
                'images/imagelogin.png',
                fit: BoxFit.contain,
              ),
              //  SvgPicture.asset('images/logo_color.svg'),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: TextWidget(
                  fontWeight: FontWeight.w500,
                  color: Them().colorBlack,
                  font: _them.font,
                  size: 25,
                  text: AppLocalizations.of(context)!.signIn,
                ),
              ),
              Center(
                child: TextWidget(
                    fontWeight: FontWeight.normal,
                    color: Colors.black45,
                    font: _them.font,
                    text: AppLocalizations.of(context)!.hapySeeYou,
                    size: 13),
              ),
              const SizedBox(
                height: 16,
              ),
              TextField(
                  decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                counterText: '',
                hintText: 'here',
              )),
              // TextFiledWidget(
              //   prefixIcons: const Icon(
              //     Icons.email_outlined,
              //     color: Colors.black26,
              //   ),
              //   hintText: AppLocalizations.of(context)!.email,
              //   controller: _emailEditingController,
              //   inputType: TextInputType.emailAddress,
              //   error: errorEmail,
              // ),
              // const SizedBox(
              //   height: 12,
              // ),
              TextFiledWidget(
                prefixIcons: const Icon(
                  Icons.lock_open,
                  color: Colors.black26,
                ),
                hintText: AppLocalizations.of(context)!.password,
                controller: _passwordEditingController,
                inputType: TextInputType.text,
                error: errorPassword,
                obscureText: true,
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Checkbox(
                      value: isCheck,
                      side: const BorderSide(color: Colors.black38),
                      onChanged: (bool? value) {
                        setState(() {
                          if (value != null) {
                            isCheck = value;
                          }
                        });
                      }),
                  Expanded(
                    flex: 1,
                    child: TextWidget(
                        fontWeight: FontWeight.normal,
                        color: Colors.black,
                        font: _them.font,
                        text: AppLocalizations.of(context)!.rememberMe,
                        size: 11),
                  ),
                  Expanded(
                    flex: 1,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/ForgetPassword_Screen');
                      },
                      child: TextWidget(
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          font: _them.font,
                          text: AppLocalizations.of(context)!.forgetPassword,
                          size: 11),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              ButtonWidget(
                color: _them.baseColor,
                height: 50,
                onPressed: () {
                  signIn();
                },
                child: TextWidget(
                  text: AppLocalizations.of(context)!.signIn,
                  color: _them.colorWighet,
                  size: 17,
                  font: _them.font,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextWidget(
                      fontWeight: FontWeight.normal,
                      color: _them.colorBlack,
                      font: _them.font,
                      text: AppLocalizations.of(context)!.noFoundAccount,
                      size: 13),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/createAccount_Screen');
                      },
                      child: TextWidget(
                          fontWeight: FontWeight.bold,
                          color: _them.baseColor,
                          font: _them.font,
                          text: AppLocalizations.of(context)!.createNewAccount,
                          size: 14)),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool checkEmpty() {
    if (_emailEditingController.text.isNotEmpty &&
        _passwordEditingController.text.isNotEmpty) {
      ///Navigator.pushReplacementNamed(context, '/Home_Screen');
      error();
      showDialog(
          barrierColor: Colors.black38,
          barrierDismissible: false,
          context: context,
          builder: (context) {
            return Center(
                child: CircularProgressIndicator(
              color: _them.baseColor,
            ));
          });
      return true;
    } else {
      error();
      return false;
    }
  }

  void error() {
    setState(() {
      errorEmail = _emailEditingController.text.isEmpty
          ? 'The email field is empty'
          : null;
      errorPassword = _passwordEditingController.text.isEmpty
          ? 'The password field is empty'
          : null;
    });
  }

  void signIn() async {
    if (checkEmpty()) {}
  }
}
