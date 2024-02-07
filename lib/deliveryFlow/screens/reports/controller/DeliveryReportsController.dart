import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../apiServices/repository/GetRoutes.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../model/ReportDetailModel.dart';



class DeliveryReportsController extends FullLifeCycleController{
  var isLoading = false.obs;
  var value = false.obs;


  List reportItem = ['Assigned','Packed','Canceled','Shipped'];
  var stageList = [];
  List<String> stageTitleList = <String>[].obs;
  
  var today = "".obs;
  var yesterday = "".obs;
  var week = "".obs;
  var month = "".obs;
  DateTime selectedDate = DateTime.now();
  var formattedDate = "".obs;

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



  ///---------------------------- Cancelled Order function ----------------------
  void getStageReportDetail()async{
    String finalStageTitles = stageTitleList.reduce((value, element) {
      return "$value,$element";
    });

    try{
      isLoading.value = true;
      await GetRoutes.getSelectedStageReport("01/09/2022","30/12/2022",finalStageTitles);
      switch(CustomObject.responseStatus){
        case 200:
          var result  = reportDetailModelFromMap(CustomObject.responseBody);
          print("==>>>> REport  " + result.toString());

      }
    }finally{
      isLoading.value = false;
    }
  }

  void getTodayDate(){
    DateTime now = DateTime.now();
    final DateTime selectedDate = DateTime.parse(now.toString());
    var formattedDate = DateFormat.MMMMd('en_US').format(selectedDate);
   // print("------>> Date  " + formattedDate.toString());

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
}