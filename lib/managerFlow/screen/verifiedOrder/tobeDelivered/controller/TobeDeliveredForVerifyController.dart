import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:signature/signature.dart';

import '../../../../../apiServices/repository/GetRoutes.dart';
import '../../../../../utils/customObject/CustomObject.dart';
import '../../model/VerifierByIdModel.dart';
import '../model/GetBoxesModel.dart';



class TobeDeliveredForVerifyController extends GetxController{
  dynamic argumentData = Get.arguments;

  var id = "".obs;
  var orderId = "".obs;
  var isLoading = false.obs;

  List<GetBoxesModel> toBeDeliveredVerifierOrderList = <GetBoxesModel>[].obs;
  var toBeDeliveredVerifierOrderListLength = 0.obs;


  @override
  void onInit() {
    super.onInit();
    getAllVerifierOrdersFunction();


  }

  void getAllVerifierOrdersFunction()async{
    try{
      isLoading.value = true;
      await GetRoutes.getAllBoxes("toBePacked");
      switch(CustomObject.responseStatus){
        case 200:
          var result  = getBoxesModelFromMap(CustomObject.responseBody);
          toBeDeliveredVerifierOrderList =  result;
          toBeDeliveredVerifierOrderListLength.value = toBeDeliveredVerifierOrderList.length;

      }
    }finally{
      isLoading.value = false;
    }
  }

}