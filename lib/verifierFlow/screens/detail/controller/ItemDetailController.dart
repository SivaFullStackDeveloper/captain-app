import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../apiServices/repository/GetRoutes.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../utils/AnimationMessage.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../model/ItemDetails.dart';



class ItemDetailController extends GetxController{
  TextEditingController style = TextEditingController();
  var numberOfPcs = TextEditingController();
  var weight = TextEditingController();
  var rate = TextEditingController();
  var styleName = ''.obs;
  var styleId = ''.obs;
  var animMessage = AnimationMessage();
    var  isLoading = false.obs;
  var itemDetailsStyleName = <String>[].obs;
  var itemDetailsId = <String>[].obs;

  var amountToBeApplied = ''.obs;

  void onInit(){
    super.onInit();
    getItemsDetails();

  }


  ///--------------------------------- get Items Details Api function  ------------------------
  getItemsDetails()async{
    await GetRoutes.getItemsDetails();
    try{

      isLoading.value = true;

      await GetRoutes.getItemsDetails();

      switch (CustomObject.responseStatus) {


        case 200:
          var responseData = itemDetailsFromJson(CustomObject.responseBody);
          for(var i = 0;i<responseData.length;i++){
            itemDetailsStyleName.add(responseData[i].name);
            itemDetailsId.add(responseData[i].id);

          }
          isLoading.value = false;

          break;
        case 400:

          animMessage.toast(ConstantString.in400, ConstantColor.darkRedColor);
          break;
        case 401:
          animMessage.toast(ConstantString.in401, ConstantColor.darkRedColor);
          break;
        case 422:
          animMessage.toast(ConstantString.in422, ConstantColor.darkRedColor);
          break;
        case 500:
          animMessage.toast(ConstantString.in500, ConstantColor.darkRedColor);
          break;
      }
    }finally{
      isLoading.value = false;
    }

  }
}