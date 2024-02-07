import 'package:captain_app/managerFlow/screen/verifiedOrder/scanAndCheck/child/scanAndCheckVerify/child/recheckProcess/child/recheckPrintQR/child/recheckSuccess/view/RecheckSuccess.dart';
import 'package:flutter/material.dart';

class RecheckSuccessScaffold extends StatefulWidget {
  const RecheckSuccessScaffold({Key? key}) : super(key: key);

  @override
  State<RecheckSuccessScaffold> createState() => _RecheckSuccessScaffoldState();
}

class _RecheckSuccessScaffoldState extends State<RecheckSuccessScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RecheckSuccess(),
    );
  }
}
