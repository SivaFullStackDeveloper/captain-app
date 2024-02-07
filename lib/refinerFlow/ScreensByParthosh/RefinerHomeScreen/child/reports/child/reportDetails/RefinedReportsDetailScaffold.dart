import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/reports/child/reportDetails/view/RefinedReportsDetailScreen.dart';
import 'package:flutter/material.dart';




class RefinedReportsDetailScaffold extends StatefulWidget {
  const RefinedReportsDetailScaffold({Key? key}) : super(key: key);

  @override
  State<RefinedReportsDetailScaffold> createState() => _RefinedReportsDetailScaffoldState();
}

class _RefinedReportsDetailScaffoldState extends State<RefinedReportsDetailScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RefinedReportsDetailScreen(),
    );
  }
}
