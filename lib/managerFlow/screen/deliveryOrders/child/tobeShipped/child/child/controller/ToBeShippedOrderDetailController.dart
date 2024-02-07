import 'dart:io';
import 'dart:typed_data';
import 'package:captain_app/utils/AnimationMessage.dart';
import 'package:path_provider/path_provider.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:signature/signature.dart';

import '../../../../../../../../apiServices/repository/GetRoutes.dart';
import '../../../../../../../../apiServices/repository/PostRoutes.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../constants/ConstantString.dart';
import '../../../../../../../../utils/customObject/CustomObject.dart';
import '../child/handoverOtpVerification/HandoverOtpVerificationScaffold.dart';
import '../model/AllCaptainsModel.dart';
import '../model/DeliveryOrderByIdModel.dart';



class ToBeShippedOrderDetailController extends GetxController{
  dynamic argumentData = Get.arguments;

  var animMessage = AnimationMessage();

  var id = "".obs;
  var orderId = "".obs;
  var isLoading = false.obs;

  var value = false.obs;
  var isAllItemsChecked = false.obs;

  List<ToBeShippedItem> allDeliveryItemsList = <ToBeShippedItem>[].obs;
  var allDeliveryItemsListLength = 0.obs;

  //List<AllCaptainsModel> allDeliveryCaptainsList = <AllCaptainsModel>[].obs;
  var allDeliveryCaptainsListLength = 0.obs;
  var dropdownValue = "".obs;
  var captainNameList= <String>[].obs;
  var captainIdList= <String>[].obs;
  var captainId = "".obs;

  @override
  void onInit() {
    super.onInit();
    id.value = argumentData[0]['id'];
    orderId.value = argumentData[1]['orderId'];

    print("-->>IDDD  " + id.value);

    getDeliveryOrderById();
    getAllCaptainTypeFunction();
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
  void sendOtpForAssignCaptainFunction()async{
    try{
      isLoading.value = true;
      await PostRoutes.sendOtpForAssignCaptainApi(id.value,captainId.value);

      switch(CustomObject.responseStatus){
        case 201:
          Get.to((()=> const HandoverOtpVerificationScaffold()),arguments: [
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