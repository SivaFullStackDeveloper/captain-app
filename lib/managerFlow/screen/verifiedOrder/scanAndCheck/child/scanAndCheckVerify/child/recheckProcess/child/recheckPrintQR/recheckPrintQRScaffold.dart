import 'package:captain_app/managerFlow/screen/verifiedOrder/scanAndCheck/child/scanAndCheckVerify/child/recheckProcess/child/recheckPrintQR/view/recheckPrintQR.dart';
import 'package:flutter/material.dart';

class recheckPrintQRScaffold extends StatefulWidget {
  const recheckPrintQRScaffold({Key? key}) : super(key: key);

  @override
  State<recheckPrintQRScaffold> createState() => _recheckPrintQRScaffoldState();
}

class _recheckPrintQRScaffoldState extends State<recheckPrintQRScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: recheckPrintQR(),
    );
  }
}
