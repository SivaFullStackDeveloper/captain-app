import 'package:captain_app/deliveryFlow/screens/reports/view/DeliveryReportsScreen.dart';
import 'package:captain_app/verifierFlow/screens/generateReports/view/GenerateReports.dart';
import 'package:flutter/material.dart';




class DeliveryReportsScaffold extends StatefulWidget {
  const DeliveryReportsScaffold({Key? key}) : super(key: key);

  @override
  State<DeliveryReportsScaffold> createState() => _DeliveryReportsScaffoldState();
}

class _DeliveryReportsScaffoldState extends State<DeliveryReportsScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DeliveryReportsScreen(),
    );
  }
}
