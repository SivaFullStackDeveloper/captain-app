import 'dart:io';
import 'dart:typed_data';
import 'package:captain_app/utils/AnimationMessage.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:signature/signature.dart';

import '../../../../../../apiServices/repository/GetRoutes.dart';
import '../../../../../../apiServices/repository/PostRoutes.dart';
import '../../../../../../constants/ConstantColor.dart';
import '../../../../../../constants/ConstantString.dart';
import '../../../../../../utils/customObject/CustomObject.dart';
import '../../../tobeReturned/child/model/ToBeReturnedDetailModel.dart';
import '../child/RefundInitiatedSuccessfullyScaffold.dart';



class TobeRefundedDetailController extends GetxController{
  dynamic argumentData = Get.arguments;
  var animMessage  = AnimationMessage();

  var id = "".obs;
  var orderId = "".obs;
  var isLoading = false.obs;
  //late final SvgPicture data;
  late final Uint8List? data2;


  final agentName = "".obs;
  final checkedOn = "".obs;
  final handoverOn = "".obs;
  final formattedCheckedOn = "".obs;
  final formattedHandoverOn = "".obs;

  var isAllItemsChecked = false.obs;
  var value = false.obs;



  List<ToBeReturnedItem> allToBeReturnedDeliveryItemsList = <ToBeReturnedItem>[].obs;
  var allToBeReturnedDeliveryLength = 0.obs;



  @override
  void onInit() {
    super.onInit();
    id.value = argumentData[0]['id'];
    orderId.value = argumentData[1]['orderId'];
    //controller.addListener(() => print('Value changed'));

    getToBeRefundById();

  }


  ///------------------- Get order by id function---------------------
  void getToBeRefundById()async{
    try{
      isLoading.value = true;
      await GetRoutes.getManagerPickupOrderById(id.value);
      switch(CustomObject.responseStatus){
        case 200:
          var result  = toBeReturnedDetailModelFromMap(CustomObject.responseBody);
          allToBeReturnedDeliveryItemsList =  result.items;
          allToBeReturnedDeliveryLength.value = allToBeReturnedDeliveryItemsList.length;

          agentName.value = result.agentName;
          checkedOn.value = result.checkedAt.toString();
          handoverOn.value = result.handedOverAt;

          getCustomCheckedOnFormattedDate(checkedOn.value.toString());
          getCustomHandoverOnFormattedDate(handoverOn.value.toString());
      }
    }finally{
      isLoading.value = false;
    }
  }


  ///-------------------------- Cancelled Video and send video key function ------------------------------
  void completeOrderForRefund()async{
    try{
      isLoading.value = true;
      await PostRoutes.completeOrderForRefundInitiate(id.value);

      switch (CustomObject.responseStatus) {
        case 201:
          Get.off(()=>  const InitiatedSuccessfullyScaffold());
          break;
        case 400:
          animMessage.toast(ConstantString.in400, ConstantColor.darkRedColor);
          break;
        case 401:
          animMessage.toast(ConstantString.in401, ConstantColor.darkRedColor);
          break;
        case 422:
          animMessage.toast(ConstantString.in422, ConstantColor.darkRedColor);
          break;
        case 500:
          animMessage.toast(ConstantString.in500, ConstantColor.darkRedColor);
          break;
      }

    }finally{
      isLoading.value = false;
    }

  }


  getCustomCheckedOnFormattedDate(String checkedOn) {
    final DateTime docDateTime = DateTime.parse(checkedOn);
    formattedCheckedOn.value = DateFormat('MM-dd-yyyy').format(docDateTime);
  }

  getCustomHandoverOnFormattedDate(String handoverDate) {
    final DateTime docDateTime = DateTime.parse(handoverDate);
    formattedHandoverOn.value = DateFormat('MM-dd-yyyy').format(docDateTime);
  }

}