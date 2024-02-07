import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../apiServices/repository/GetRoutes.dart';
import '../../../../deliveryFlow/screens/dashboard/model/OrdersModel.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../model/ReceivedOrderModel.dart';



class ToBeCheckedController extends FullLifeCycleController{
  var isLoading = false.obs;
  final enterMPin = TextEditingController();
  List<ReceivedOrderModel> allOrders = <ReceivedOrderModel>[].obs;
  var allOrdersLength = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getAllReceivedOrdersFunction("assigned");
  }


  ///-------------------------- Get Order function ------------------------
  void getAllReceivedOrdersFunction(String status)async{

    try{
      isLoading.value = true;
      await GetRoutes.getAllOrders(status);
      switch(CustomObject.responseStatus){
        case 200:
          var result  = receivedOrderModelFromMap(CustomObject.responseBody);
          allOrders =  result;
          allOrdersLength.value = allOrders.length;

      }
    }finally{
      isLoading.value = false;
    }
  }

}