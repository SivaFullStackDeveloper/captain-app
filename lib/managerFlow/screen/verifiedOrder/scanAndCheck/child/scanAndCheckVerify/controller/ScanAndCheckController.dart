import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/Material.dart';

import 'package:get/get.dart';

import '../../../../../../../apiServices/repository/GetRoutes.dart';
import '../../../../../../../utils/customObject/CustomObject.dart';
import '../../../../model/VerifierByIdModel.dart';
import '../../../../sendToWarehouse/child/sendToWarehouseDetail/model/GetBoxesByIdModel.dart';

class ScanAndCheckController extends GetxController {
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

  List<VerifierByIdModel> toBeAssignedVerifierOrderList =
      <VerifierByIdModel>[].obs;
  var toBeAssignedVerifierOrderListLength = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getAllVerifierOrdersFunction();
  }

  void getAllVerifierOrdersFunction() async {
    try {
      isLoading.value = true;
      await GetRoutes.getAllVerifierOrders("toBeSent");
      switch (CustomObject.responseStatus) {
        case 200:
          var result = verifierByIdModelFromMap(CustomObject.responseBody);
          toBeAssignedVerifierOrderList = result;
          toBeAssignedVerifierOrderListLength.value =
              toBeAssignedVerifierOrderList.length;
      }
    } finally {
      isLoading.value = false;
    }
  }
}
