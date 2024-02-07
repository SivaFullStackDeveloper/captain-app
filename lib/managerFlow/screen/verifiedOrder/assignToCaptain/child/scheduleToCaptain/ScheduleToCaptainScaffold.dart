import 'package:captain_app/managerFlow/screen/verifiedOrder/assignToCaptain/child/scheduleToCaptain/view/ScheduleToCaptain.dart';
import 'package:flutter/material.dart';

class ScheduleToCaptainScaffold extends StatefulWidget {
  const ScheduleToCaptainScaffold({Key? key}) : super(key: key);

  @override
  State<ScheduleToCaptainScaffold> createState() =>
      _ScheduleToCaptainScaffoldState();
}

class _ScheduleToCaptainScaffoldState extends State<ScheduleToCaptainScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScheduleToCaptain(),
    );
  }
}
