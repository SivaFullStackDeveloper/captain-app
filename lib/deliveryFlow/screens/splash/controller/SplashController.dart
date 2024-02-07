import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../allUsersAuthentication/auth/login/LoginScaffold.dart';
import '../../../../utils/customObject/CustomObject.dart';



class SplashController extends GetxController{
  var isLoading = false.obs;


  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 2), () {
      getUserDetails();
    });
    //getUserDetails();

  }

  getUserDetails() async {

    SharedPreferences prefs = await SharedPreferences.getInstance();

    prefs = await SharedPreferences.getInstance();
    CustomObject.token = prefs.getString("token")!;
   CustomObject.mPin = prefs.getString("mpin")!;

    //print("====Token   "+ CustomObject.token);

    if(CustomObject.token == null || CustomObject.token == ""){
      Get.to(()=> const LoginScaffold(),
          duration: const Duration(milliseconds: 1000),
          transition: Transition.downToUp);
    }else{
      /*Get.to(()=> MPinScaffold(),
          duration: Duration(milliseconds: 800),
          transition: Transition.downToUp);*/

    }
  }
}