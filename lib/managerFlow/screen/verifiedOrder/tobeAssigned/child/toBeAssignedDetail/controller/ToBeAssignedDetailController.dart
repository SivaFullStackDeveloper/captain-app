import 'dart:io';
import 'dart:typed_data';
import 'package:captain_app/utils/AnimationMessage.dart';
import 'package:flutter/Material.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:signature/signature.dart';

import '../../../../../../../apiServices/repository/GetRoutes.dart';
import '../../../../../../../apiServices/repository/PostRoutes.dart';
import '../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../constants/ConstantString.dart';
import '../../../../../../../utils/customObject/CustomObject.dart';
import '../../../../../deliveryOrders/child/tobeShipped/child/child/model/AllCaptainsModel.dart';
import '../child/toBeAssignedOtpVerification/ToBeAssignedOtpVerificationScaffold.dart';


class ToBeAssignedDetailController extends GetxController {
  dynamic argumentData = Get.arguments;

  var animMessage = AnimationMessage();
  var id = "".obs;
  var orderId = "".obs;
  var isLoading = false.obs;

  //late final SvgPicture data;
  late final Uint8List? data2;


  final agentName = "".obs;
  final docketNumber = "".obs;
  final brnNumber = "".obs;
  var isAllItemsChecked = false.obs;
  var value = false.obs;

  var dropdownValue = "".obs;
  var captainNameList = <String>[].obs;
  var captainIdList = <String>[].obs;
  var captainId = "".obs;

  // late File signatureFile;
  late File agentImgFile;

  DateTime selectedDate = DateTime.now();
  TimeOfDay initialTime = TimeOfDay.now();

  var formattedDate = "".obs;
  var formattedTimeOfDay = "".obs;


  @override
  void onInit() {
    super.onInit();
    id.value = argumentData[0]['id'];
    orderId.value = argumentData[1]['orderId'];

    getAllCaptainTypeFunction();
  }

/*
  ///------------------- Get order by id function---------------------
  void getHandoverAgentDetailsFunction()async{

    try{
      isLoading.value = true;
      await GetRoutes.getDeliveryOrdersById(id.value);
      switch(CustomObject.responseStatus){
        case 200:
          var result  = orderByIdModelFromMap(CustomObject.responseBody);

          agentName.value = result.agentName;
          docketNumber.value = result.docketNo??"";
          brnNumber.value = result.brnNo??"";

      }
    }finally{
      isLoading.value = false;
    }
  }*/


  ///--------------------- Upload invoice image and package image function -------------------
  void uploadAgentSignatureAndImg(SvgPicture signature, File agentImg) async {
    /* try{
      isLoading.value = true;
      convertUnitToPng();
      await PostRoutes.uploadAgentSignatureAndImgApi("",agentImg,id.value);
      switch(CustomObject.responseStatus){
        case 201:
          print("==========Uploadedddd ");
        //Get.off(()=> const OrderPackedSuccessfullyScaffold());
      }
    }finally{
      isLoading.value = false;
    }
*/
  }

  ///------------------- Choose Date -------------------------
  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
      formattedDate.value = DateFormat('MM-dd-yyyy').format(selectedDate);
    }
  }


  ///------------------- Choose Time -------------------------
  void chooseTime(BuildContext context) async {
    final TimeOfDay? timeOfDay = await showTimePicker(
      context: context,
      initialTime: initialTime,
      initialEntryMode: TimePickerEntryMode.dial,
    );
    final localizations = MaterialLocalizations.of(context);
    formattedTimeOfDay.value = localizations.formatTimeOfDay(timeOfDay!);

    print("====>>>>  " + formattedTimeOfDay.toString());
    //formattedTime.value = DateFormat('hh:mm:ss').format(initialTime);

  }


  ///------------------- get all captains ---------------------
  Future<bool> getAllCaptainTypeFunction() async {
    try {
      isLoading.value = true;
      await GetRoutes.getAllCaptains("delivery");
      switch (CustomObject.responseStatus) {
        case 200:
          var result = allCaptainsModelFromMap(CustomObject.responseBody);

          for (int i = 0; i < result.length; i++) {
            var captainName = result[i].fullName;
            var captainId = result[i].id;
            captainNameList.add(captainName);
            captainIdList.add(captainId);
            print("=====<><><  " + captainNameList.toString());
          }
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
    } finally {
      isLoading.value = false;
    }
    return true;
  }


  ///-------------------------- handover To Verifier Captain function ------------------------------
  void handoverToVerifierCaptain() async {
    try {
      isLoading.value = true;
      await PostRoutes.assignVerifierCaptain(
          id.value, formattedDate.value, formattedTimeOfDay.value,
          captainId.value);

      switch (CustomObject.responseStatus) {
        case 201:
          Get.off(
              (() => const ToBeAssignedOtpVerificationScaffold()),arguments: [
                  {"id": id.value},
                  {"captain": captainId.value}
                  ]);
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
    } finally {
      isLoading.value = false;
    }
  }


}