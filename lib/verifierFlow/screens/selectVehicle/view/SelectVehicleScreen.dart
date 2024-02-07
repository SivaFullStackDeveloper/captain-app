// ignore_for_file: prefer_const_constructors

import 'package:captain_app/commonWidgets/CustomProgressIndicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../commonWidgets/NewVerificationCard.dart';
import '../../../../commonWidgets/VerifierCustomAppBar.dart';
import '../controller/SelectVehicleController.dart';

class SelectVehicleScreen extends StatefulWidget {
  const SelectVehicleScreen({super.key});

  @override
  State<SelectVehicleScreen> createState() => _SelectVehicleScreenState();
}

class _SelectVehicleScreenState extends State<SelectVehicleScreen> {
  var selectVehicle = Get.put(SelectVehicleController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => selectVehicle.isLoading.value ? CustomProgressIndicator()
        :SafeArea(
      child: Column(
        children: [
          ///------------------------- App bar --------------------------------
          VerifierCustomAppBar(
            title: 'Select Vehicle',
          ),
          ///------------------------- Select Vehicles custom list widget --------------------------------
          Expanded(
            flex: 1,
            child: SelectVehicleCard(),
          ),
        ],
      ),
    ));
  }
}
