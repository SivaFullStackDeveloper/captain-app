
import 'dart:ui';

import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class LocaleController extends GetxController{
  //final translator = GoogleTranslator();


  void changeLanguage(var language, var countryCode){
    var locale = Locale(language,countryCode);
    Get.updateLocale(locale);
  }
}




