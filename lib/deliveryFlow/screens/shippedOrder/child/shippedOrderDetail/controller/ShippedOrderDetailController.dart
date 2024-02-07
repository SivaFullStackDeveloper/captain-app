import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../apiServices/repository/GetRoutes.dart';
import '../../../../../../managerFlow/screen/deliveryOrders/child/cancelledOrder/child/model/OrderByIdModel.dart';
import '../../../../../../utils/customObject/CustomObject.dart';
import 'package:intl/intl.dart';



class ShippedOrderDetailController extends FullLifeCycleController{
  var isLoading = false.obs;
  dynamic argumentData = Get.arguments;
  var id = "".obs;
  var orderId = "".obs;
  List<Item> allItems = <Item>[].obs;
  var allItemsLength = 0.obs;
  var isAllItemsChecked = false.obs;

  var agentName = "".obs;
  var docketNumber = "".obs;
  var brnNumber = "".obs;
  var estimatedDelivery = "".obs;
  var formattedEstimatedDeliveryDate = "".obs;

  var signatureOfAgentImg = "".obs;
  var idOfAgentImg = "".obs;
  var invoiceImg = "".obs;
  var packageImg = "".obs;



  @override
  void onInit() {
    super.onInit();
    id.value = argumentData[0]['id'];
    orderId.value = argumentData[1]['orderId'];

    print("=========ID  " + id.value);

    getOrdersByIdFunction();
  }


  ///------------------- Get order by id function---------------------
  void getOrdersByIdFunction()async{

    try{
      isLoading.value = true;
      await GetRoutes.getDeliveryOrdersById(id.value);
      switch(CustomObject.responseStatus){
        case 200:
          var result  = orderByIdModelFromMap(CustomObject.responseBody);
          allItems = result.items;
          allItemsLength.value = allItems.length;

          agentName.value = result.agentName;
          docketNumber.value = result.docketNo??"";
          brnNumber.value = result.brnNo??"";
          estimatedDelivery.value = result.estimatedDeliveryDate.toString()??"";

          signatureOfAgentImg.value = result.agentSignature.toString();
          idOfAgentImg.value = result.agentImage.toString();
          invoiceImg.value = result.invoiceImage.toString();
          packageImg.value = result.packageImage.toString();

          print("------------>>> IMG  "  + idOfAgentImg.toString());

          getCustomFormattedDateTime(estimatedDelivery.value);

      }
    }finally{
      isLoading.value = false;
    }
  }

  getCustomFormattedDateTime(String estimatedDelivery) {
    final DateTime docDateTime = DateTime.parse(estimatedDelivery);
    formattedEstimatedDeliveryDate.value = DateFormat('MM-dd-yyyy').format(docDateTime);
  }

}