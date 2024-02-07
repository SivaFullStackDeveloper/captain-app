// ignore_for_file: prefer_const_constructors

import 'package:captain_app/verifierFlow/screens/selectVehicle/view/SelectVehicleScreen.dart';
import 'package:flutter/material.dart';

import '../../../utils/SizeConfig.dart';

class SelectVehicleScreenScaffold extends StatefulWidget {
  const SelectVehicleScreenScaffold({super.key});

  @override
  State<SelectVehicleScreenScaffold> createState() =>
      _SelectVehicleScreenScaffoldState();
}

class _SelectVehicleScreenScaffoldState
    extends State<SelectVehicleScreenScaffold> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SelectVehicleScreen(),
    );
  }
}
