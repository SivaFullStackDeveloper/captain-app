import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../apiServices/repository/GetRoutes.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../../pickupDashboard/model/PickupAllOrders.dart';



class ReceivePickupController extends FullLifeCycleController{
  var isLoading = false.obs;
  List<PickupAllOrders> allPickupOrders = <PickupAllOrders>[].obs;
  var allPickupOrderLength = 0.obs;
  var estimatedDelivery = "".obs;
  var formattedEstimatedDeliveryDate = "".obs;

  @override
  void onInit() {
    super.onInit();
    getAllPlacedOrder("assigned");
  }



  void getAllPlacedOrder(String status)async{
    try{
      isLoading.value = true;
      await GetRoutes.getAllOrders(status);
      switch(CustomObject.responseStatus){
        case 200:
          var result  = pickupAllOrdersFromMap(CustomObject.responseBody);
          allPickupOrders =  result;
          allPickupOrderLength.value = allPickupOrders.length;
          estimatedDelivery.value = result.toString()??"";
      }
    }finally{
      isLoading.value = false;
    }
  }


}