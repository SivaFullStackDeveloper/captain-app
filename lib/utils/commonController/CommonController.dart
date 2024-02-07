


import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/Material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

import '../../apiServices/repository/PostRoutes.dart';
import '../../constants/ConstantColor.dart';
import '../../pickupFlow/pickupScreens/pickupDashboard/model/UploadVideoModel.dart';
import '../AnimationMessage.dart';
import '../customObject/CustomObject.dart';

class CommonController extends GetxController{
  var isLoading = false.obs;
  var drawPic = false.obs;
  var uploadUrl = "".obs;
  var previewUrl = "".obs;
  var key = "".obs;
  var animMessage = AnimationMessage();
  late Uint8List uint8list;

  var checkingPickupDetailVideoUpload = false.obs;
  var checkItemVideoUpload = false.obs;


  List reportItem = ['Assigned','Packed','Canceled','Shipped'];
  var value = false.obs;


  var today = "".obs;
  var yesterday = "".obs;
  var week = "".obs;
  var month = "".obs;
  DateTime selectedDate = DateTime.now();
  var formattedDate = "".obs;
  var pickedDate= "".obs;



  @override
  void onInit() {
    super.onInit();
    getTodayDate();
    getYesterdayDate();
    getWeekDate();
    getMonthDate();
    //getStageReportDetail();
    //temp
  }

  ///-------------------------- GET aws url for file uploading function ------------------------------
  void getAwsVideoUrlFunction(File filePath,) async {
    try {
      isLoading.value = true;
      await PostRoutes.upload();

      switch (CustomObject.responseStatus) {
        case 201:
          var result  = uploadVideoModelFromMap(CustomObject.responseBody.body);
          uploadUrl.value = result.uploadUrl;
          previewUrl.value = result.url;
          print("-----------Preview URL  " + previewUrl.value );
          key.value = result.key;
          uploadVideoFunction(filePath,key.value);
          break;
      }
    } finally {
      isLoading.value = false;
    }
  }


  void uploadVideoFunction(File videoPath,String key) async {
    try {
      animMessage.toast("Uploading Video...", ConstantColor.greyColor);
      isLoading.value = true;
      await PostRoutes.uploadVideoOnAwsUrl(uploadUrl.value,videoPath,key);

      switch (CustomObject.responseStatus) {
        case 200:
          animMessage.toast("Video Upload Successfully", ConstantColor.greenColor);

          if(CustomObject.videoThumbnailForScreen == "CheckingPickupDetailScreen"){
            CustomObject.orderOpeningVideoKey = key;
          }else{
            CustomObject.videoKey = key;
          }

          uint8list = (await VideoThumbnail.thumbnailData(
            video: CustomObject.videoPath,
            imageFormat: ImageFormat.JPEG,
            maxWidth: 200, // specify the width of the thumbnail, let the height auto-scaled to keep the source aspect ratio
            quality: 25,
            maxHeight: 200
          ))!;

          if(CustomObject.videoThumbnailForScreen == "CheckingPickupDetailScreen") {
            checkingPickupDetailVideoUpload.value = true;
          }else if(CustomObject.videoThumbnailForScreen == "CheckItemScreen") {
            checkItemVideoUpload.value = true;
          }

          break;

      }
    } finally {
      isLoading.value = false;
    }
  }




  void getTodayDate(){
    DateTime now = DateTime.now();
    final DateTime selectedDate = DateTime.parse(now.toString());
    var formattedDate = DateFormat.MMMMd('en_US').format(selectedDate);
    today.value = formattedDate;

  }

  void getYesterdayDate(){
    DateTime now = DateTime.now();
    final date = DateTime(now.year, now.month, now.day - 1);

    final DateTime selectedDate = DateTime.parse(date.toString());
    var formattedDate = DateFormat.MMMMd('en_US').format(selectedDate);
    //print("------>> Date  " + formattedDate.toString());

    yesterday.value = formattedDate;
  }


  void getWeekDate(){
    DateTime dateTime = DateTime.now();
    var firstWeek = dateTime.subtract(Duration(days: dateTime.weekday - 1));
    final DateTime selectedDate = DateTime.parse(firstWeek.toString());
    var formattedDate = DateFormat.MMMMd('en_US').format(selectedDate);
    //  print("------>> Week  " + formattedDate.toString());
    week.value = formattedDate;

  }

  void getMonthDate(){
    DateTime dateTime = DateTime.now();
    var firstWeek = dateTime.subtract(Duration(days: dateTime.weekday - 1));
    final DateTime selectedDate = DateTime.parse(firstWeek.toString());
    var formattedDate = DateFormat.MMMM('en_US').format(selectedDate);
    month.value = formattedDate;

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
      print("------>> Month  " + formattedDate.value .toString());

    }
  }


  ///------------------- Convert date as per api requirement ---------------
  void getFormattedDateForApi(String fromDate, String toDate){
    final DateTime docDateTime = DateTime.parse(fromDate);
    pickedDate.value = DateFormat('MM-dd-yyyy').format(docDateTime);

    print("========>>>>  "+ fromDate);

  }
}