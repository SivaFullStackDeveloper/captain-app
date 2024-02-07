import 'package:captain_app/managerFlow/screen/verifiedOrder/scanAndCheck/view/ScanAndCheckList.dart';
import 'package:flutter/material.dart';

class ScanAndCheckListScaffold extends StatefulWidget {
  const ScanAndCheckListScaffold({Key? key}) : super(key: key);

  @override
  State<ScanAndCheckListScaffold> createState() => _ScanAndCheckListScaffoldState();
}

class _ScanAndCheckListScaffoldState extends State<ScanAndCheckListScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ScanAndCheckList(),);
  }
}
