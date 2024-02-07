import 'package:captain_app/verifierFlow/screens/confirmation/ConfirmationScreenScaffold.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import '../../../../apiServices/repository/PostRoutes.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../utils/AnimationMessage.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../../confirmation/controller/VerifyItemController.dart';


class VerifyItemController extends GetxController{
  var verifyConfirmationItemController = Get.put(VerifyConfirmationItemController());
  TextEditingController productName = TextEditingController();
  TextEditingController grossWeight = TextEditingController();
  TextEditingController purity = TextEditingController();
  var animMessage = AnimationMessage();
  var isImagePickedForPackagePic = false.obs;
  final printedInvoicePic = "".obs;
   File? invoiceFile;
   File? packageFile;
  var  isLoading = false.obs;
  List allItems = [].obs;
///---------------------------------------- Verify Item Api function -------------------------------------------------
   verifyItem( itemImage,productName,grossWeight,purity)async{
     await PostRoutes.verifyItem(
       itemImage,
       productName,
      grossWeight,
    purity,
       allItems,
     );
     try{
     switch (CustomObject.responseStatus) {
       case 201:
         var responseData = CustomObject.responseBody;
         verifyConfirmationItemController.isLoading.value=true;
         Get.to(()=>const ConfirmationScreenScaffold());
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

