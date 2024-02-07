import 'package:captain_app/managerFlow/screen/managerGenerateReports/view/ManagerGenerateReports.dart';
import 'package:flutter/material.dart';




class ManagerGenerateReportsScaffold extends StatefulWidget {
  const ManagerGenerateReportsScaffold({Key? key}) : super(key: key);

  @override
  State<ManagerGenerateReportsScaffold> createState() => _ManagerGenerateReportsScaffoldState();
}

class _ManagerGenerateReportsScaffoldState extends State<ManagerGenerateReportsScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ManagerGenerateReports(),
    );
  }
}
