import 'dart:io';

import 'package:captain_app/apiServices/repository/PostRoutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../apiServices/repository/GetRoutes.dart';
import '../../../../../utils/customObject/CustomObject.dart';
import '../child/orderPackedSuccessfully/OrderPackedSuccessfullyScreenScaffold.dart';
import '../model/OrderByIdModel.dart';



class ReviewOrdersController extends GetxController{
  dynamic argumentData = Get.arguments;
  var id = "".obs;
  var orderId = "".obs;
  var isLoading = false.obs;
  var value = false.obs;

  final packagePic = "".obs;
  var isImagePickedForPrintedInvoicePic = false;
  var isImagePickedForPackagePic = false;
  final printedInvoicePic = "".obs;
  late File invoiceFile;
  late File packageFile;

  List<Item> allItems = <Item>[].obs;
  var allItemsLength = 0.obs;
  var isAllItemsChecked = false.obs;


  @override
  void onInit() {
    super.onInit();
    // id.value = argumentData[0]['id'];
    // orderId.value = argumentData[1]['orderId'];
    getOrdersByIdFunction();
  }


  ///------------------- Get order by id function---------------------
  void getOrdersByIdFunction()async{
    try{
      isLoading.value = true;
      await GetRoutes.getDeliveryOrdersById(id.value);
      switch(CustomObject.responseStatus){
        case 200:
          var result  = orderByIdModelFromMap(CustomObject.responseBody);
          allItems = result.items;
          allItemsLength.value = allItems.length;

      }
    }finally{
      isLoading.value = false;
    }
  }

  ///--------------------- Upload invoice image and package image function -------------------
  void uploadInvoiceAndPackageApiFunction(File invoiceImage,File packageImage) async{
    try{
      isLoading.value = true;
      await PostRoutes.uploadInvoiceAndPackageImageApi(invoiceImage,packageImage,id.value);
      switch(CustomObject.responseStatus){
        case 201:
         Get.off(()=> const OrderPackedSuccessfullyScaffold());
      }
    }finally{
      isLoading.value = false;
    }

  }
}