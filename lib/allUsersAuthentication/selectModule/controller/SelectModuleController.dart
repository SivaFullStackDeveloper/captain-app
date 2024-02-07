import 'package:captain_app/utils/AnimationMessage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../apiServices/repository/PostRoutes.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../constants/ConstantString.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../../../apiServices/repository/GetRoutes.dart';
import '../module/LoggedInUserModel.dart';



class SelectModuleControllerController extends GetxController{
  dynamic argumentData = Get.arguments;
  final enterMobileNumber = TextEditingController().obs;
  var mobileNumber = "".obs;
  var isLoading = false.obs;

  var animMessage = AnimationMessage();
  List<String> allModuleList = <String>[].obs;
  var moduleListLength = 0.obs;


  @override
  void onInit() {
    super.onInit();
    getLoggedInUserDataFunction();
  }



  ///------------------- get logged in user data function---------------------
  Future<bool> getLoggedInUserDataFunction()async{
    try{
      isLoading.value = true;
      await GetRoutes.getLoggedInUserData();
      switch(CustomObject.responseStatus){
        case 200:
          var result  = loggedInUserFromMap(CustomObject.responseBody);
          allModuleList = result.modules;
          moduleListLength.value = allModuleList.length;
      }
    }finally{
      isLoading.value = false;
    }
    return true;
  }


}