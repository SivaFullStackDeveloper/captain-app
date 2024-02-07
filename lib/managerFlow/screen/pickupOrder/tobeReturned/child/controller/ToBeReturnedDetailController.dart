import 'dart:io';
import 'dart:typed_data';
import 'package:captain_app/utils/AnimationMessage.dart';
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
import '../../../../deliveryOrders/child/tobeShipped/child/child/child/handoverOtpVerification/HandoverOtpVerificationScaffold.dart';
import '../../../../deliveryOrders/child/tobeShipped/child/child/model/AllCaptainsModel.dart';
import '../../../../deliveryOrders/child/tobeShipped/child/child/model/DeliveryOrderByIdModel.dart';
import '../child/handoverToCaptainOtpVerification/HandoverToCaptainOtpVerificationScaffold.dart';
import '../model/ToBeReturnedDetailModel.dart';



class ToBeReturnedDetailController extends GetxController{
  dynamic argumentData = Get.arguments;

  var id = "".obs;
  var orderId = "".obs;
  var isLoading = false.obs;

  var value = false.obs;
  var isAllItemsChecked = false.obs;

  List<ToBeReturnedItem> allToBeReturnedDeliveryItemsList = <ToBeReturnedItem>[].obs;
  var allToBeReturnedDeliveryLength = 0.obs;

  //List<AllCaptainsModel> allDeliveryCaptainsList = <AllCaptainsModel>[].obs;
  var allDeliveryCaptainsListLength = 0.obs;
  var dropdownValue = "".obs;
  var captainNameList= <String>[].obs;
  var captainIdList= <String>[].obs;
  var captainId = "".obs;
  var allItems = "".obs;

  var animMessage = AnimationMessage();


  @override
  void onInit() {
    super.onInit();
    id.value = argumentData[0]['id'];
    orderId.value = argumentData[1]['orderId'];
    getToBeReturnedById();
    getAllCaptainTypeFunction();
    //getHandoverAgentDetailsFunction();

  }

  ///------------------- Get order by id function---------------------
  void getToBeReturnedById()async{
    try{
      isLoading.value = true;
      await GetRoutes.getManagerPickupOrderById(id.value);
      switch(CustomObject.responseStatus){
        case 200:
          var result  = toBeReturnedDetailModelFromMap(CustomObject.responseBody);
          allToBeReturnedDeliveryItemsList =  result.items;
          allToBeReturnedDeliveryLength.value = allToBeReturnedDeliveryItemsList.length;
      }
    }finally{
      isLoading.value = false;
    }
  }


  ///------------------- get all captains ---------------------
  Future<bool> getAllCaptainTypeFunction()async{
    try{
      isLoading.value = true;
      await GetRoutes.getAllCaptains("delivery");
      switch(CustomObject.responseStatus){
        case 200:
          var result  = allCaptainsModelFromMap(CustomObject.responseBody);

          for(int i = 0 ; i<result.length; i++){
            var captainName = result[i].fullName;
            var captainId = result[i].id;
            captainNameList.add(captainName);
            captainIdList.add(captainId);
            print("=====<><><  " + captainNameList.toString());
          }
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
    return true;
  }



  ///---------------------- Send otp to captain ---------------------
  void sendOtpToDeliveryCaptainCaptainFunction()async{
    try{
      isLoading.value = true;
      await PostRoutes.sendOtpForAssignPickupCaptainApi(id.value,captainId.value);

      switch(CustomObject.responseStatus){
        case 201:
          Get.to((()=> const HandoverToCaptainOtpVerificationScaffold()),arguments: [
            {"id": id.value},
            {"captain": captainId.value}
          ]);
          break;
        case 400:
          animMessage.toast(ConstantString.in400, ConstantColor.darkRedColor);
          break;
        case 500:
          animMessage.toast(ConstantString.in500, ConstantColor.darkRedColor);

      }
    }finally{
      isLoading.value = false;
    }

  }


}