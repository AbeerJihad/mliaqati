import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

enum Keys {
  login
}

class ShController {
  late SharedPreferences _sharedPreferences;

  static final ShController _instance = ShController._();

  factory ShController() {
    return _instance;
  }

  ShController._();

  Future<void> getInstance() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }


}
