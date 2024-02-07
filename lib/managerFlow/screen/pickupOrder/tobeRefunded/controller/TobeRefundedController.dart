import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:signature/signature.dart';

import '../../../../../apiServices/repository/GetRoutes.dart';
import '../../../../../utils/customObject/CustomObject.dart';
import '../../tobeReturned/model/ToBeReturnedModel.dart';



class TobeRefundedController extends GetxController{
  dynamic argumentData = Get.arguments;

  var id = "".obs;
  var orderId = "".obs;
  var isLoading = false.obs;

  List<ToBeReturnedModel> allToBeRefundOrderList = <ToBeReturnedModel>[].obs;
  var allToBeRefundOrderListLength = 0.obs;


  @override
  void onInit() {
    super.onInit();

    getAllRefundOrdersFunction();
  }

  ///---------------------- Get all handovers -------------------------------
  void getAllRefundOrdersFunction()async{
    try{
      isLoading.value = true;
      await GetRoutes.getManagerReturnedOrders("toBeRefunded");
      switch(CustomObject.responseStatus){
        case 200:
          var result  = toBeReturnedModelFromMap(CustomObject.responseBody);
          allToBeRefundOrderList =  result;
          allToBeRefundOrderListLength.value = allToBeRefundOrderList.length;

      }
    }finally{
      isLoading.value = false;
    }
  }

}