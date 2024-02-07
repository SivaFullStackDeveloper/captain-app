import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../apiServices/repository/GetRoutes.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../model/AllVerifierOverviewModel.dart';
import '../model/VerifierByIdModel.dart';



class VerifierOrdersController extends GetxController{
  var isLoading = false.obs;

  var toBeAssigned = 0.obs;
  var toBeShipped = 0.obs;
  var toBePacked = 0.obs;
  var toBeSent = 0.obs;

  List<VerifierByIdModel> allVerifierOrderList = <VerifierByIdModel>[].obs;
  var allVerifierOrderListLength = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getAllPickupOverviewFunction();
    getAllVerifierOrdersFunction();
  }
  void getAllPickupOverviewFunction()async{
    try{
      isLoading.value = true;
      await GetRoutes.getManagerVerifyOverviewData();
      switch(CustomObject.responseStatus){
        case 200:
          var result  = allVerifierOverviewModelFromMap(CustomObject.responseBody);
          toBeAssigned.value = result.toBeAssigned;
          toBeShipped.value = result.toBeShipped;
          toBePacked.value = result.toBePacked;
          toBeSent.value = result.toBeSent;
      }
    }finally{
      isLoading.value = false;
    }
  }


  void getAllVerifierOrdersFunction()async{
    try{
      isLoading.value = true;
      await GetRoutes.getAllVerifierOrders("");
      switch(CustomObject.responseStatus){
        case 200:
          var result  = verifierByIdModelFromMap(CustomObject.responseBody);
          allVerifierOrderList =  result;
          allVerifierOrderListLength.value = allVerifierOrderList.length;

      }
    }finally{
      isLoading.value = false;
    }
  }



}