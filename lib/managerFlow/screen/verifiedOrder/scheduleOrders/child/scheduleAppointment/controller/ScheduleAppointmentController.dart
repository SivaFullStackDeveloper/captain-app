import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class ScheduleAppointmentController extends GetxController {
  DateTime selectedDate = DateTime.now();
  TimeOfDay initialTime = TimeOfDay.now();
  var formattedDate = "".obs;
  var formattedTimeOfDay = "".obs;

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
}
