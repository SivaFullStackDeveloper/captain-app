import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../../../apiServices/repository/GetRoutes.dart';
import '../../../../../../utils/customObject/CustomObject.dart';
import '../../../../receivePickup/child/pickupDetails/model/PIckupOrderById.dart';



class RejectedOrdersDetailsController extends GetxController{
  dynamic argumentData = Get.arguments;
  var isLoading = false.obs;
  var id = "".obs;
  var orderId = "".obs;
  List<Item> allItems = <Item>[].obs;
  var allItemsLength = 0.obs;
  var isAllItemsChecked = false.obs;
  var invoiceImg = "".obs;
  var packageImg = "".obs;

  var name = "".obs;
  var receivedOn = "".obs;
  var formattedReceivedOn = "".obs;


  @override
  void onInit() {
    super.onInit();
    id.value = argumentData[0]['id'];
    orderId.value = argumentData[1]['orderId'];
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
          name.value = result.agentName.toString();
          receivedOn.value = result.receivedAt.toString();
          allItems =  result.items;
          allItemsLength.value = allItems.length;
          getCustomFormattedDate(receivedOn.value);
      }
    }finally{
      isLoading.value = false;
    }
  }

  getCustomFormattedDate(String estimatedDelivery) {
    final DateTime docDateTime = DateTime.parse(estimatedDelivery);
    formattedReceivedOn.value = DateFormat('MM-dd-yyyy').format(docDateTime);
  }

}