import 'package:captain_app/managerFlow/screen/verifiedOrder/scanAndCheck/child/scanAndCheckVerify/view/ScanAndCheck.dart';
import 'package:flutter/material.dart';

class ScanAndCheckScaffold extends StatefulWidget {
  const ScanAndCheckScaffold({Key? key}) : super(key: key);

  @override
  State<ScanAndCheckScaffold> createState() => _ScanAndCheckScaffoldState();
}

class _ScanAndCheckScaffoldState extends State<ScanAndCheckScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScanAndCheck(),
    );
  }
}
