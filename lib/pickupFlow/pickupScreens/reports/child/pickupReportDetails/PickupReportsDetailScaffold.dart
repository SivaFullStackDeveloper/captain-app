import 'package:captain_app/deliveryFlow/screens/reports/child/reportDetails/view/ReportsDetailScreen.dart';
import 'package:captain_app/deliveryFlow/screens/reports/view/DeliveryReportsScreen.dart';
import 'package:captain_app/pickupFlow/pickupScreens/reports/child/pickupReportDetails/view/PickupReportsDetailScreen.dart';
import 'package:captain_app/verifierFlow/screens/generateReports/view/GenerateReports.dart';
import 'package:flutter/material.dart';




class PickupReportsDetailScaffold extends StatefulWidget {
  const PickupReportsDetailScaffold({Key? key}) : super(key: key);

  @override
  State<PickupReportsDetailScaffold> createState() => _PickupReportsDetailScaffoldState();
}

class _PickupReportsDetailScaffoldState extends State<PickupReportsDetailScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PickupReportsDetailScreen(),
    );
  }
}
