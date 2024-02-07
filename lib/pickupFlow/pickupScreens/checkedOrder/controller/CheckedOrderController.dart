import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../apiServices/repository/GetRoutes.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../../pickupDashboard/model/PickupAllOrders.dart';



class CheckedOrderController extends FullLifeCycleController{
  var isLoading = false.obs;
  List<PickupAllOrders> allPickupOrders = <PickupAllOrders>[].obs;
  var allPickupOrderLength = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getAllCheckedOrder("checked");
  }


  void getAllCheckedOrder(String status)async{
    try{
      isLoading.value = true;
      await GetRoutes.getAllOrders(status);
      switch(CustomObject.responseStatus){
        case 200:
          var result  = pickupAllOrdersFromMap(CustomObject.responseBody);
          allPickupOrders =  result;
          allPickupOrderLength.value = allPickupOrders.length;
          //estimatedDelivery.value = result.toString()??"";
      }
    }finally{
      isLoading.value = false;
    }
  }

}