import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../apiServices/repository/GetRoutes.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../../dashboard/model/OrdersModel.dart';



class CanceledOrderController extends GetxController{
  var isLoading = false.obs;
  List<OrdersModel> allOrders = <OrdersModel>[].obs;
  var allOrdersLength = 0.obs;


  @override
  void onInit() {
    super.onInit();
    getAllCancelledOrder("cancelled");
  }



  ///---------------------------- Cancelled Order function ----------------------
  void getAllCancelledOrder(String status)async{


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