import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../apiServices/repository/GetRoutes.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../model/OrdersModel.dart';
import '../model/OverviewModel.dart';



class DashboardController extends FullLifeCycleController{
  var isLoading = false.obs;
  var packedOrder = 0.obs;
  var toBeShippedOrder = 0.obs;
  var shippedOrder = 0.obs;
  var cancelledOrder = 0.obs;
  var report = 0.obs;

  List<OrdersModel> allOrders = <OrdersModel>[].obs;
  var allOrdersLength = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getLoggedInUserDataFunction();
    getOrdersFunction("placed");
  }


  ///------------------- Latest buy/sell function---------------------
  void getLoggedInUserDataFunction()async{

    try{
      isLoading.value = true;
      await GetRoutes.getOverviewData();
      switch(CustomObject.responseStatus){
        case 200:
          var result  = overviewModelFromMap(CustomObject.responseBody);
          packedOrder.value = result.assigned;
          toBeShippedOrder.value = result.packed;
          shippedOrder.value = result.shipped;
          cancelledOrder.value = result.cancelled;
          report.value = result.reports;
      }
    }finally{
      isLoading.value = false;
    }
  }


  void getOrdersFunction(String status)async{

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