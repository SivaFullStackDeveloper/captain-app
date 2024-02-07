import 'package:captain_app/deliveryFlow/screens/reports/view/DeliveryReportsScreen.dart';
import 'package:captain_app/pickupFlow/pickupScreens/reports/view/PickupReportsScreen.dart';
import 'package:captain_app/verifierFlow/screens/generateReports/view/GenerateReports.dart';
import 'package:flutter/material.dart';




class PickupReportsScaffold extends StatefulWidget {
  const PickupReportsScaffold({Key? key}) : super(key: key);

  @override
  State<PickupReportsScaffold> createState() => _PickupReportsScaffoldState();
}

class _PickupReportsScaffoldState extends State<PickupReportsScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PickupReportsScreen(),
    );
  }
}
