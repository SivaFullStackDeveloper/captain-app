import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:signature/signature.dart';

import '../../../../../../apiServices/repository/GetRoutes.dart';
import '../../../../../../apiServices/repository/PostRoutes.dart';
import '../../../../../../constants/ConstantColor.dart';
import '../../../../../../utils/customObject/CustomObject.dart';
import '../child/pickupReady/PickupReadyScaffold.dart';
import '../model/PIckupOrderById.dart';



class PickupDetailsController extends GetxController{
  var isLoading = false.obs;
  dynamic argumentData = Get.arguments;
  var id = "".obs;
  var orderId = "".obs;

  var agentName = "".obs;
  var docketNumber = "".obs;
  var brnNumber = "".obs;
  //var drawPic = false.obs;
  late final SvgPicture data;
  late File agentImgFile;
  late File packageImgFile;
  var imagePickedForAgent = false.obs;
  var imagePickedForPackage = false.obs;


  /* final SignatureController controller = SignatureController(
    penStrokeWidth: 2,
    penColor: ConstantColor.whiteColor,
    exportBackgroundColor: ConstantColor.blackColor,
    exportPenColor: ConstantColor.whiteColor,
    onDrawStart: () => print('onDrawStart called!'),
    onDrawEnd: () => print('onDrawEnd called!'),
  );*/

  @override
  void onInit() {
    super.onInit();
    id.value = argumentData[0]['id'];
    orderId.value = argumentData[1]['orderId'];
   // controller.addListener(() => print('Value changed'));

    getOrdersByIdFunction();
  }



  ///------------------- Get order by id function---------------------
  void getOrdersByIdFunction()async{

    try{
      isLoading.value = true;
      await GetRoutes.getPickupOrdersById(id.value);
      switch(CustomObject.responseStatus){
        case 200:
          var result  = pickupOrderByIdFromMap(CustomObject.responseBody);
          agentName.value = result.agentName.toString();
          docketNumber.value = result.docketNo.toString();
          brnNumber.value = result.bnrNo.toString();

      }
    }finally{
      isLoading.value = false;
    }
  }


  ///--------------------------- Upload agent documents --------------------------------
  void uploadAgentPickupDocFunction(File signature,File agentImg,File packageImg)async {
    try{
      isLoading.value = true;
      await PostRoutes.uploadPickupAgentDocumentsApi(signature,agentImg,packageImg,id.value);
      switch(CustomObject.responseStatus){
        case 201:
          print("==========Uploadedddd ");
          Get.to(() => const RefinerReceivePickupReadyScaffold());
      }
    }finally{
      isLoading.value = false;
    }

  }

}