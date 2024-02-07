import 'package:flutter/Material.dart';
import 'package:get/get.dart';

class RequestSuccessfullyController extends GetxController{
  dynamic argumentData = Get.arguments;

  var id = "".obs;
  var orderId = "".obs;
  var isLoading = false.obs;

  var bannerImage = "".obs;
  var title = "".obs;
  var description = "".obs;
  var buttonText = "".obs;
  var wantSequelImageVisible = false.obs;
  late Scaffold scaffoldOpenAt;


  @override
  void onInit() {
    super.onInit();
    bannerImage.value = argumentData[0]['bannerImage'];
    title.value = argumentData[1]['title'];
    description.value = argumentData[2]['description'];
    buttonText.value = argumentData[3]['buttonText'];
    wantSequelImageVisible.value = argumentData[4]['wantSequelImageVisible'];
    scaffoldOpenAt = argumentData[5]['scaffoldOpenAt'];


  }


}