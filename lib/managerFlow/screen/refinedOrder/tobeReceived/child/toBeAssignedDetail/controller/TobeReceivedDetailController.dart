import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/Material.dart';
import 'package:path_provider/path_provider.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:signature/signature.dart';



class TobeReceivedDetailController extends GetxController{
  dynamic argumentData = Get.arguments;

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

  // late File signatureFile;
  late File agentImgFile;

  DateTime selectedDate = DateTime.now();
  TimeOfDay initialTime = TimeOfDay.now();



  /* final SignatureController controller = SignatureController(
    penStrokeWidth: 2,
    penColor: ConstantColor.whiteColor,
    exportBackgroundColor: ConstantColor.blackColor,
    exportPenColor: ConstantColor.whiteColor,
    onDrawStart: () => print('onDrawStart called!'),
    onDrawEnd: () => print('onDrawEnd called!'),
  );*/

  @override
  void onInit() {
    super.onInit();
    id.value = argumentData[0]['id'];
    orderId.value = argumentData[1]['orderId'];
    //controller.addListener(() => print('Value changed'));

    //getHandoverAgentDetailsFunction();

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
  void uploadAgentSignatureAndImg(SvgPicture signature,File agentImg) async{
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

/*
  void convertUnitToPng(SvgPicture signature,File agentImg)async {
  */
/* // Uint8List imageInUnit8List;  // store unit8List image here ;
    final tempDir = await getApplicationSupportDirectory();
    //File.fromRawPath(Uint8List uint8List);

    File file = await File('${tempDir.path}/image.png').create();
    file.writeAsBytesSync(data2!);
*//*

    try{
      isLoading.value = true;
      await PostRoutes.uploadAgentSignatureAndImgApi(signature,agentImg,id.value);
      switch(CustomObject.responseStatus){
        case 201:
          print("==========Uploadedddd ");
      Get.off(()=> const OrderPackedSuccessfullyScaffold());
      }
    }finally{
      isLoading.value = false;
    }

  }
*/

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {

        selectedDate = picked;

    }
  }


  void chooseTime(BuildContext context)async{
    await showTimePicker(
      context: context,
      initialTime: initialTime,
    );
  }


}