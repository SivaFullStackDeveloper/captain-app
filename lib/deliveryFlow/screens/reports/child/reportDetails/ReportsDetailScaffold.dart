import 'package:captain_app/deliveryFlow/screens/reports/child/reportDetails/view/ReportsDetailScreen.dart';
import 'package:captain_app/deliveryFlow/screens/reports/view/DeliveryReportsScreen.dart';
import 'package:captain_app/verifierFlow/screens/generateReports/view/GenerateReports.dart';
import 'package:flutter/material.dart';




class ReportsDetailScaffold extends StatefulWidget {
  const ReportsDetailScaffold({Key? key}) : super(key: key);

  @override
  State<ReportsDetailScaffold> createState() => _ReportsDetailScaffoldState();
}

class _ReportsDetailScaffoldState extends State<ReportsDetailScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ReportsDetailScreen(),
    );
  }
}
