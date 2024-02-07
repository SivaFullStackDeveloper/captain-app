import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../constants/ConstantColor.dart';
import '../res/Dimens.dart';
import 'SizeConfig.dart';

class AnimationMessage {
  void toast(String msg, Color backgroundColor) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: backgroundColor,
        textColor: Colors.white,
        fontSize: SizeConfig.defaultSize * Dimens.size1Point5);
  }

  void snackbar(String title, String content, Color color) {
    Get.snackbar(title, content,
        snackPosition: SnackPosition.TOP,
        backgroundColor: color,
        borderRadius: SizeConfig.defaultSize * Dimens.size2,
        colorText: ConstantColor.whiteColor,
        duration: const Duration(seconds: 4),
        isDismissible: true,
        forwardAnimationCurve: Curves.easeOutBack);
  }
}
