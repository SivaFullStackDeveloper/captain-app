import 'package:flutter/material.dart';
import 'package:get/get.dart';



class PickupReportsDetailController extends FullLifeCycleController{
  var isLoading = false.obs;
  var value = false.obs;


  List reportItem = ['Assigned','Checked'];

  @override
  void onInit() {
    super.onInit();
  }


}