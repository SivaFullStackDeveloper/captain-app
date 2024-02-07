import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/Material.dart';
import 'package:path_provider/path_provider.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:signature/signature.dart';

import '../../../../../../../apiServices/repository/GetRoutes.dart';
import '../../../../../../../apiServices/repository/PostRoutes.dart';
import '../../../../../../../utils/customObject/CustomObject.dart';
import '../child/sealedBagToSentSuccessfully/SealedBagToSentSuccessfullyScaffold.dart';
import '../model/GetBoxesByIdModel.dart';

class SendToWarehouseDetailController extends GetxController {
  dynamic argumentData = Get.arguments;

  var id = "".obs;
  var orderId = "".obs;
  var isLoading = false.obs;

  List<BoxItem> allBoxItemList = <BoxItem>[].obs;
  var allBoxItemListLength = 0.obs;
  var boxWeight = 0.obs;
  final weightController = TextEditingController().obs;
  late File imgFile;
  var imagePicked = false.obs;

  @override
  void onInit() {
    super.onInit();
    // id.value = argumentData[0]['id'];
    // orderId.value = argumentData[1]['orderId'];
  }

  ///--------------------------- Upload documents for place in warehouse --------------------------------
  void sendToWareHouseFunction() async {
    try {
      isLoading.value = true;
      await PostRoutes.sendToWarehouse(
          id.value, "xxx", imgFile, weightController.value.text);
      switch (CustomObject.responseStatus) {
        case 201:
          Get.to(() => const SealedBagToSentSuccessfullyScaffold());
      }
    } finally {
      isLoading.value = false;
    }
  }
}
