import 'package:get/get.dart';

import '../../../../apiServices/repository/PostRoutes.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../utils/AnimationMessage.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../../sealTheItems/SealTheItemScreenScaffold.dart';




class ShallProceedController extends GetxController{
  var defaultDeclared = 'Waiting For Response'.obs;
  var animMessage = AnimationMessage();
  var isLoading = false.obs;
  @override
  void onInit() {
    super.onInit();
  }

  ///------------------------- Sell gold Api function --------------------------------
  sellGold()async{
    try{
      isLoading.value = true;
      await PostRoutes.sellGold();
      switch (CustomObject.responseStatus) {
        case 201:
          var responseData =CustomObject.responseBody;
          Get.to(() => const SealTheItemScreenScaffold());
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