import 'package:captain_app/managerFlow/screen/verifiedOrder/putInTheBox/child/putInBoxScan/view/PutInBoxScan.dart';
import 'package:flutter/material.dart';

class PutInBoxScanScaffold extends StatefulWidget {
  const PutInBoxScanScaffold({Key? key}) : super(key: key);

  @override
  State<PutInBoxScanScaffold> createState() => _PutInBoxScanScaffoldState();
}

class _PutInBoxScanScaffoldState extends State<PutInBoxScanScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PutInBoxScan(),
    );
  }
}
