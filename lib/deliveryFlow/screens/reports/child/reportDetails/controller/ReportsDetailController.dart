import 'package:flutter/material.dart';
import 'package:get/get.dart';



class ReportsDetailController extends FullLifeCycleController{
  var isLoading = false.obs;
  var value = false.obs;


  List reportItem = ['Assigned','Packed','Canceled','Shipped'];

  @override
  void onInit() {
    super.onInit();
  }


}