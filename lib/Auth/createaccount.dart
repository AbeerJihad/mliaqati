import 'package:flutter/material.dart';
import 'package:liaqti/mixin.dart';

import '../ApplicationComponents/them.dart';
import '../Widgets/button_widget.dart';
import '../Widgets/text_widgets.dart';
import '../Widgets/textfiled_widget.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

late TextEditingController _fnameEditingController;
late TextEditingController _lnameEditingController;
late TextEditingController _emailEditingController;
late TextEditingController _passwordEditingController;
late TextEditingController _confirmPasswordEditingController;
String? errorfName;
String? errorlName;
String? errorEmail;
String? errorPassword;
String? errorConfirmPassword;

Them _them = Them();

//List<String> list = ["Gaza"];
class _CreateAccountState extends State<CreateAccount> with Helper {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _fnameEditingController = TextEditingController();
    _lnameEditingController = TextEditingController();
    _emailEditingController = TextEditingController();
    _passwordEditingController = TextEditingController();
    _confirmPasswordEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _fnameEditingController.dispose();
    _lnameEditingController.dispose();
    _emailEditingController.dispose();
    _passwordEditingController.dispose();
    _confirmPasswordEditingController.dispose();
    // _phoneEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Them().baseColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 18),
            children: [
              Image.asset(
                'images/imagelogin.png',
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: 16,
              ),
              Align(
                alignment: Alignment.center,
                child: TextWidget(
                    fontWeight: FontWeight.bold,
                    color: _them.baseColor,
                    font: _them.font,
                    text: AppLocalizations.of(context)!.createNewAccount,
                    size: 25),
              ),

              const SizedBox(
                height: 18,
              ),

              Row(
                children: <Widget>[
                  new Flexible(
                    child: TextFiledWidget(
                      prefixIcons: const Icon(
                        Icons.person,
                        color: Colors.black12,
                      ),
                      hintText: AppLocalizations.of(context)!.fname,
                      error: errorfName,
                      inputType: TextInputType.text,
                      controller: _fnameEditingController,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  new Flexible(
                    child: TextFiledWidget(
                        prefixIcons: const Icon(
                          Icons.person,
                          color: Colors.black12,
                        ),
                        hintText: AppLocalizations.of(context)!.lname,
                        error: errorlName,
                        inputType: TextInputType.text,
                        controller: _lnameEditingController),
                  ),
                ],
              ),

              const SizedBox(
                height: 12,
              ),

              TextFiledWidget(
                prefixIcons: const Icon(
                  Icons.email_outlined,
                  color: Colors.black12,
                ),
                hintText: AppLocalizations.of(context)!.enterEmail,
                inputType: TextInputType.emailAddress,
                controller: _emailEditingController,
                error: errorEmail,
              ),
              const SizedBox(
                height: 12,
              ),

              // TextFiledWidget(
              //     prefixIcons: const Icon(
              //       Icons.phone,
              //       color: Colors.black12,
              //     ),
              //     hintText: AppLocalizations.of(context)!.phone,
              //     error: errorPhone,
              //     inputType: TextInputType.phone,
              //     controller: _phoneEditingController), //Email

              TextFiledWidget(
                prefixIcons: const Icon(
                  Icons.lock_open,
                  color: Colors.black12,
                ),
                controller: _passwordEditingController,
                obscureText: true,
                hintText: AppLocalizations.of(context)!.password,
                error: errorPassword,
                inputType: const TextInputType.numberWithOptions(
                    decimal: false, signed: false),
              ),

              const SizedBox(
                height: 12,
              ),
              TextFiledWidget(
                  prefixIcons: const Icon(
                    Icons.lock_open,
                    color: Colors.black12,
                  ),
                  hintText: AppLocalizations.of(context)!.confirmPassword,
                  inputType: TextInputType.text,
                  obscureText: true,
                  error: errorPassword,
                  controller: _confirmPasswordEditingController),

              const SizedBox(
                height: 25,
              ),
              ButtonWidget(
                  child: TextWidget(
                    color: _them.colorWighet,
                    text: AppLocalizations.of(context)!.createNewAccount,
                    fontWeight: FontWeight.bold,
                    size: 15,
                    font: _them.font,
                  ),
                  onPressed: () {},
                  height: 45,
                  color: _them.baseColor),
            ],
          ),
        ),
      ),
    );
  }

  bool checkEmpty() {
    if (_emailEditingController.text.isNotEmpty &&
        _passwordEditingController.text.isNotEmpty &&
        _fnameEditingController.text.isNotEmpty &&
        _confirmPasswordEditingController.text.isNotEmpty &&
        _lnameEditingController.text.isNotEmpty &&
        _confirmPasswordEditingController.text ==
            _passwordEditingController.text) {
      errorChick();

      return true;
    } else {
      errorChick();
      return true;
    }
  }

  void errorChick() {
    setState(() {
      errorfName =
          _fnameEditingController.text.isEmpty ? 'Name field is empty' : null;
      errorlName =
          _fnameEditingController.text.isEmpty ? 'Name field is empty' : null;
      errorEmail =
          _emailEditingController.text.isEmpty ? 'Email field is empty' : null;
      errorPassword = _passwordEditingController.text.isEmpty
          ? 'Password field is empty'
          : null;
      errorConfirmPassword = _confirmPasswordEditingController.text.isEmpty
          ? 'Confirm Password field is empty'
          : _confirmPasswordEditingController.text !=
                  _passwordEditingController.text
              ? 'Passwords do not match'
              : null;
    });
  }

  void signIn() async {}
}
