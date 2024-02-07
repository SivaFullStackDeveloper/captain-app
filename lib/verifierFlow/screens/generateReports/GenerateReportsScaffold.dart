import 'package:captain_app/verifierFlow/screens/generateReports/view/GenerateReports.dart';
import 'package:flutter/material.dart';




class GenerateReportsScaffold extends StatefulWidget {
  const GenerateReportsScaffold({Key? key}) : super(key: key);

  @override
  State<GenerateReportsScaffold> createState() => _GenerateReportsScaffoldState();
}

class _GenerateReportsScaffoldState extends State<GenerateReportsScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ReportsScaffold(),
    );
  }
}
