import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:signature/signature.dart';

import '../../../../../apiServices/repository/GetRoutes.dart';
import '../../../../../utils/customObject/CustomObject.dart';
import '../../model/AllVerifierOverviewModel.dart';
import '../../model/VerifierByIdModel.dart';



class TobeAssignedController extends GetxController{
  dynamic argumentData = Get.arguments;

  var id = "".obs;
  var orderId = "".obs;
  var isLoading = false.obs;

  List<VerifierByIdModel> toBeAssignedVerifierOrderList = <VerifierByIdModel>[].obs;
  var toBeAssignedVerifierOrderListLength = 0.obs;



  @override
  void onInit() {
    super.onInit();
    getAllVerifierOrdersFunction();
  }



  void getAllVerifierOrdersFunction()async{
    try{
      isLoading.value = true;
      await GetRoutes.getAllVerifierOrders("toBeAssigned");
      switch(CustomObject.responseStatus){
        case 200:
          var result  = verifierByIdModelFromMap(CustomObject.responseBody);
          toBeAssignedVerifierOrderList =  result;
          toBeAssignedVerifierOrderListLength.value = toBeAssignedVerifierOrderList.length;

      }
    }finally{
      isLoading.value = false;
    }
  }

}