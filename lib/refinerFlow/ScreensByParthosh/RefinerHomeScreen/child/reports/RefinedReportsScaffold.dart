import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/reports/view/RefinedReportsScreen.dart';
import 'package:flutter/material.dart';




class RefinedReportsScaffold extends StatefulWidget {
  const RefinedReportsScaffold({Key? key}) : super(key: key);

  @override
  State<RefinedReportsScaffold> createState() => _RefinedReportsScaffoldState();
}

class _RefinedReportsScaffoldState extends State<RefinedReportsScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RefinedReportsScreen(),
    );
  }
}
