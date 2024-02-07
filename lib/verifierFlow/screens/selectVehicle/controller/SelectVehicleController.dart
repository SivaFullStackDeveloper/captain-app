import 'package:get/get.dart';

import '../../../../apiServices/repository/GetRoutes.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../utils/AnimationMessage.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../models/SelectVehicle.dart';





class SelectVehicleController extends GetxController{

  var selectedVehicle = ''.obs;
  var change = false.obs;
  var isLoading = false.obs;
  var length = 0.obs;
  var animMessage = AnimationMessage();
  List <SelectVehicle> selectVehicle = <SelectVehicle>[].obs;

  @override
  void onInit(){
    super.onInit();
    getVehicles();
  }
  ///------------------------- get Vehicles Api function --------------------------------
  void getVehicles()async{
    try{
      isLoading.value = true;

      await GetRoutes.getVehicles();

      switch (CustomObject.responseStatus) {
        case 200:
          var responseData = selectVehicleFromJson(CustomObject.responseBody);
          selectVehicle =  responseData;
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