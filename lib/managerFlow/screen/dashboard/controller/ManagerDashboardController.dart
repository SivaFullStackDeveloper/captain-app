import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../apiServices/repository/GetRoutes.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../model/AllManagerHandoversModel.dart';
import '../model/ManagerDashboardModel.dart';


class ManagerDashboardController extends GetxController{
  var isLoading = false.obs;

  var delivery = 0.obs;
  var pickup = 0.obs;
  var verifier = 0.obs;
  var refiner = 0.obs;

  List<AllManagerHandoversModel> allHandoverList = <AllManagerHandoversModel>[].obs;
  var allHandoverListLength = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getManagerDashboardData();
    getAllManagerHandoversFunction();
  }

  void getManagerDashboardData()async{
    try{
      isLoading.value = true;
      await GetRoutes.getManagerOverviewData();
      switch(CustomObject.responseStatus){
        case 200:
          var result  = managerDashboardModelFromMap(CustomObject.responseBody);
          delivery.value = result.delivery;
          pickup.value = result.pickup;
          verifier.value = result.verifier;
          refiner.value = result.refiner;

          print("========>>>> Delivery  " + delivery.value.toString());
         /* allOrders =  result;
          allOrdersLength.value = allOrders.length;*/

      }
    }finally{
      isLoading.value = false;
    }
  }

  ///---------------------- Get all handovers -------------------------------
  void getAllManagerHandoversFunction()async{
    try{
      isLoading.value = true;
      await GetRoutes.getAllManagerHandovers();
      switch(CustomObject.responseStatus){
        case 200:
          var result  = allManagerHandoversFromMap(CustomObject.responseBody);
          print("========>>>> Delivery  " + delivery.value.toString());
          allHandoverList =  result;
          allHandoverListLength.value = allHandoverList.length;

      }
    }finally{
      isLoading.value = false;
    }
  }


}