import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/Material.dart';
import 'package:path_provider/path_provider.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:signature/signature.dart';

import '../../../../../../../apiServices/repository/GetRoutes.dart';
import '../../../../../../../utils/customObject/CustomObject.dart';
import '../model/GetBoxesByIdModel.dart';



class TobeDeliveredForVerifierDetailController extends GetxController{
  dynamic argumentData = Get.arguments;

  var id = "".obs;
  var orderId = "".obs;
  var isLoading = false.obs;

  List<BoxItem> allBoxItemList = <BoxItem>[].obs;
  var allBoxItemListLength = 0.obs;
  var boxWeight = 0.obs;

  @override
  void onInit() {
    super.onInit();
    id.value = argumentData[0]['id'];
    orderId.value = argumentData[1]['orderId'];
    getAllBoxesDetailsFunction();
  }


  ///------------------- Get order by id function---------------------
  void getAllBoxesDetailsFunction()async{

    try{
      isLoading.value = true;
      await GetRoutes.getVerifyBoxesById(id.value);
      switch(CustomObject.responseStatus){
        case 200:
          var result  = getBoxesByIdModelFromMap(CustomObject.responseBody);
          allBoxItemList = result.items;
          allBoxItemListLength.value = allBoxItemList.length;
          boxWeight.value = result.weight;



      }
    }finally{
      isLoading.value = false;
    }
  }

}