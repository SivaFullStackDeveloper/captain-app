import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../apiServices/repository/GetRoutes.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../../pickupDashboard/model/PickupAllOrders.dart';



class RejectedOrdersController extends FullLifeCycleController{
  var isLoading = false.obs;
  List<PickupAllOrders> allRejectedPickupOrders = <PickupAllOrders>[].obs;
  var allRejectedOrderLength = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getAllRejectedOrder("rejected");
  }


  void getAllRejectedOrder(String status)async{
    try{
      isLoading.value = true;
      await GetRoutes.getAllOrders(status);
      switch(CustomObject.responseStatus){
        case 200:
          var result  = pickupAllOrdersFromMap(CustomObject.responseBody);
          allRejectedPickupOrders =  result;
          allRejectedOrderLength.value = allRejectedPickupOrders.length;
      }
    }finally{
      isLoading.value = false;
    }
  }

}