import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../apiServices/repository/GetRoutes.dart';
import '../../../../apiServices/repository/PostRoutes.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../../dashboard/controller/DashboardController.dart';
import '../../dashboard/model/OrdersModel.dart';



class ShipOrderController extends GetxController{
  var isLoading = false.obs;
  List<OrdersModel> allOrders = <OrdersModel>[].obs;
  var allOrdersLength = 0.obs;


  @override
  void onInit() {
    super.onInit();
    getAllShippedOrder("packed");

  }


  void getAllShippedOrder(String status)async{
    try{
      isLoading.value = true;
      await GetRoutes.getOrders(status);
      switch(CustomObject.responseStatus){
        case 200:
          var result  = ordersModelFromMap(CustomObject.responseBody);
          allOrders =  result;
          allOrdersLength.value = allOrders.length;

      }
    }finally{
      isLoading.value = false;
    }
  }


}