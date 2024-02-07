import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/Material.dart';
import 'package:path_provider/path_provider.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:signature/signature.dart';

import '../../../../../../../apiServices/repository/GetRoutes.dart';
import '../../../../../../../apiServices/repository/PostRoutes.dart';
import '../../../../../../../utils/customObject/CustomObject.dart';
import '../child/sealedBagToSentSuccessfully/SealedBagToSentSuccessfullyScaffold.dart';
import '../model/GetBoxesByIdModel.dart';



class ToBeHandoveredDetailController extends GetxController{
  dynamic argumentData = Get.arguments;

  var id = "".obs;
  var orderId = "".obs;
  var isLoading = false.obs;
  //late final SvgPicture data;
  late final Uint8List? data2;

  final agentName = "".obs;
  final docketNumber = "".obs;
  final brnNumber = "".obs;

  // late File signatureFile;
  late File agentImgFile;


  @override
  void onInit() {
    super.onInit();
    id.value = argumentData[0]['id'];
    orderId.value = argumentData[1]['orderId'];
    getHandoverAgentDetailsFunction();
  }



  ///------------------- Get order by id function---------------------
  void getHandoverAgentDetailsFunction()async{

    try{
      isLoading.value = true;
      await GetRoutes.getManagerVerifierOrder(id.value);
      switch(CustomObject.responseStatus){
        case 200:
          var result  = getBoxesByIdModelFromMap(CustomObject.responseBody);

          agentName.value = result.agentName;
          docketNumber.value = result.docketNo??"";
          brnNumber.value = result.brnNo??"";

      }
    }finally{
      isLoading.value = false;
    }
  }

}