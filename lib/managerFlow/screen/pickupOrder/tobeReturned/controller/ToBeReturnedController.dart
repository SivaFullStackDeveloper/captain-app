import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:signature/signature.dart';

import '../../../../../apiServices/repository/GetRoutes.dart';
import '../../../../../utils/customObject/CustomObject.dart';
import '../model/ToBeReturnedModel.dart';



class ToBeReturnedController extends GetxController{
  dynamic argumentData = Get.arguments;

  var id = "".obs;
  var orderId = "".obs;
  var isLoading = false.obs;

  List<ToBeReturnedModel> allToBeReturnedOrderList = <ToBeReturnedModel>[].obs;
  var allToBeReturnedOrderListLength = 0.obs;


  @override
  void onInit() {
    super.onInit();
   // id.value = argumentData[0]['id'];
   // orderId.value = argumentData[1]['orderId'];
    //controller.addListener(() => print('Value changed'));

    getAllReturnedOrdersFunction();

  }


  ///---------------------- Get all handovers -------------------------------
  void getAllReturnedOrdersFunction()async{
    try{
      isLoading.value = true;
      await GetRoutes.getManagerReturnedOrders("toBeReturned");
      switch(CustomObject.responseStatus){
        case 200:
          var result  = toBeReturnedModelFromMap(CustomObject.responseBody);
          allToBeReturnedOrderList =  result;
          allToBeReturnedOrderListLength.value = allToBeReturnedOrderList.length;

      }
    }finally{
      isLoading.value = false;
    }
  }


}