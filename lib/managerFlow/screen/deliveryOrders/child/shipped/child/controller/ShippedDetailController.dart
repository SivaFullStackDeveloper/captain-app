import 'dart:io';
import 'dart:typed_data';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:signature/signature.dart';

import '../../../../../../../apiServices/repository/GetRoutes.dart';
import '../../../../../../../utils/customObject/CustomObject.dart';
import '../../../tobeShipped/child/child/model/DeliveryOrderByIdModel.dart';



class ShippedDetailController extends GetxController{
  dynamic argumentData = Get.arguments;

  var id = "".obs;
  var orderId = "".obs;
  var isLoading = false.obs;
  late final Uint8List? data2;


  final agentName = "".obs;
  final docketNumber = "".obs;
  final brnNumber = "".obs;
  final estimatedDeliveryDate = "".obs;
  final invoiceImg = "".obs;
  final packageImg = "".obs;
  final signatureOfAgentImg = "".obs;
  final idOfAgentImg = "".obs;

  final formattedEstimatedDeliveryDate = "".obs;
  final formattedEstimatedDeliveryTime = "".obs;

  List<ToBeShippedItem> allDeliveryItemsList = <ToBeShippedItem>[].obs;
  var allDeliveryItemsListLength = 0.obs;




  @override
  void onInit() {
    super.onInit();
   // id.value = argumentData[0]['id'];
   // orderId.value = argumentData[1]['orderId'];

    getDeliveryOrderById();

  }

  ///------------------- Get order by id function---------------------
  void getDeliveryOrderById()async{
    try{
      isLoading.value = true;
      await GetRoutes.getManagerDeliveryOrderById(id.value);
      switch(CustomObject.responseStatus){
        case 200:
          var result  = deliveryOrderByIdModelFromMap(CustomObject.responseBody);
          allDeliveryItemsList =  result.items;
          allDeliveryItemsListLength.value = allDeliveryItemsList.length;

          agentName.value =  result.agentName;
          docketNumber.value = result.docketNo;
          brnNumber.value = result.brnNo;
          estimatedDeliveryDate.value = result.estimatedDeliveryDate.toString();
          invoiceImg.value = result.invoiceImage.toString();
          packageImg.value = result.packageImage.toString();
          signatureOfAgentImg.value = result.agentSignature.toString();
          idOfAgentImg.value = result.agentImage.toString();

          getCustomFormattedDate(estimatedDeliveryDate.value);
          getCustomFormattedTime(estimatedDeliveryDate.value);
      }
    }finally{
      isLoading.value = false;
    }
  }



  getCustomFormattedDate(String estimatedDelivery) {
    final DateTime docDateTime = DateTime.parse(estimatedDelivery);
    formattedEstimatedDeliveryDate.value = DateFormat('MM-dd-yyyy').format(docDateTime);
  }

  getCustomFormattedTime(String estimatedDelivery) {
    final DateTime docDateTime = DateTime.parse(estimatedDelivery);
    formattedEstimatedDeliveryTime.value = DateFormat('hh:mm:ss').format(docDateTime);
  }



}