import 'dart:io';
import 'package:flutter/material.dart';
import 'package:platform_device_id/platform_device_id.dart';

import 'ApplicationComponents/them.dart';
import 'Widgets/text_widgets.dart';

mixin Helper {
  Them them = Them();

  void showSnackBar(
      {required BuildContext context,
      required String message,
      required bool visibleMessage}) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: visibleMessage == false ? Colors.red : them.colorGreen,
      content: TextWidget(
        color: them.colorWighet,
        size: 16,
        fontWeight: FontWeight.normal,
        text: message,
        font: them.font,
      ),
      elevation: 3,
      behavior: SnackBarBehavior.floating,
      dismissDirection: DismissDirection.horizontal,
      duration: const Duration(seconds: 2),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
    ));
  }

  Future<Map<String, String>> get header async {
    String? deviseId = await PlatformDeviceId.getDeviceId;
    String? token;
    // if (ShController().login) {
    //   token = ShController().returnToken.toString();
    // }
    String? platform;
    if (Platform.isAndroid) {
      platform = "Android";
    } else if (Platform.isIOS) {
      platform = "IOS";
    }
    Map<String, String> headers = <String, String>{};
    headers["Accept"] = "application/json";
    headers["api-token"] = "API-TEST-TOKEN";
    headers["DEVICE_ID"] = deviseId!;
    if (token != null) {
      headers["Authorization"] = token;
    }
    headers["OS"] = platform!;
    return headers;
  }

  Future<bool> checkInternet() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('connected');
        return true;
      } else {
        print('no internet');
        return false;
      }
    } on SocketException catch (_) {
      print('no internet');
      return false;
    }
  }

  void loadingCircle({required BuildContext context, required Color colors}) {
    showDialog(
        barrierDismissible: false,
        barrierColor: Colors.black26,
        context: context,
        builder: (context) {
          return Center(
            child: CircularProgressIndicator(
              color: colors,
            ),
          );
        });
  }
}
