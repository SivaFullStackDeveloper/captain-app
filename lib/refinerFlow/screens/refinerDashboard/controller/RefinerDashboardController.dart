import 'package:flutter/material.dart';
import 'package:get/get.dart';



class RefinerDashboardController extends FullLifeCycleController{
  var isLoading = false.obs;
  var otp = 0.obs;
  var isCorrect = false.obs;
  var value = true.obs;
  var whatsapp = true.obs;

  final enterMPin = TextEditingController();


  @override
  void onInit() {
    super.onInit();
  }

}