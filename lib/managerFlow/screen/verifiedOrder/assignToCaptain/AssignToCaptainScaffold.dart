import 'package:captain_app/managerFlow/screen/verifiedOrder/assignToCaptain/view/AssignToCaptain.dart';
import 'package:flutter/material.dart';

class AssignToCaptainScaffold extends StatefulWidget {
  const AssignToCaptainScaffold({Key? key}) : super(key: key);

  @override
  State<AssignToCaptainScaffold> createState() =>
      _AssignToCaptainScaffoldState();
}

class _AssignToCaptainScaffoldState extends State<AssignToCaptainScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AssignToCaptain(),
    );
  }
}
