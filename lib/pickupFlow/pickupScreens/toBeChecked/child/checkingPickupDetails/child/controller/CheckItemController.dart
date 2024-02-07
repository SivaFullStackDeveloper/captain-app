import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../apiServices/repository/GetRoutes.dart';
import '../../../../../../../apiServices/repository/PatchRoutes.dart';
import '../../../../../../../utils/customObject/CustomObject.dart';
import '../../CheckingPickupDetailsScaffold.dart';
import '../../model/AllReasonsModel.dart';



class CheckItemController extends GetxController{
  dynamic argumentData = Get.arguments;
  var isLoading = false.obs;
  var id = "".obs;
  var itemId = "".obs;
  var value = true.obs;
  var dropdownValue = "".obs;
  var reasonList= <String>[].obs;
  var selectedValue;
  var refundStatus = false.obs;
  var itemStatus = "".obs;
  var rejectedReason = "accepted".obs;

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem(child: Text("Can be refunded".tr ), value:"Can be refunded".tr ),
      DropdownMenuItem(child: Text("Can't be refunded".tr), value: "Can't be refunded".tr),

    ];
    return menuItems;
  }

  @override
  void onInit() {
    super.onInit();
    id.value = argumentData[0]['id'];
    itemId.value = argumentData[1]['itemId'];
    getAllReasons();
  }

  void getAllReasons()async{
    try{
      isLoading.value = true;
      await GetRoutes.getAllReasons();
      switch(CustomObject.responseStatus){
        case 200:
          var result  = allReasonsFromMap(CustomObject.responseBody);

          for(int i = 0 ; i<result.length; i++){
            var cyclePeriod = result[i].title;
            reasonList.add(cyclePeriod);
            print("=====<><><  " + reasonList.toString());
          }

      }
    }finally{
      isLoading.value = false;
    }
  }


  ///------------------------- Check item with video and update ----------------------------
  void checkItemFunction() async{
    try{
      isLoading.value = true;
      await PatchRoutes.itemChecking(id.value,itemId.value,CustomObject.videoKey,rejectedReason.value,itemStatus.value);
      switch(CustomObject.responseStatus){
        case 200:
          Get.off(()=> const CheckingPickupDetailsScaffold());

      }
    }finally{
      isLoading.value = false;
    }

  }



}