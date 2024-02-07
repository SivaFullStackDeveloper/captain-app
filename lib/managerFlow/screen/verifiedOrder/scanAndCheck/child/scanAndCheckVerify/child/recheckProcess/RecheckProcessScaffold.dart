import 'package:captain_app/managerFlow/screen/verifiedOrder/scanAndCheck/child/scanAndCheckVerify/child/recheckProcess/view/RecheckProcess.dart';
import 'package:flutter/material.dart';

class RecheckProcessScaffold extends StatefulWidget {
  const RecheckProcessScaffold({Key? key}) : super(key: key);

  @override
  State<RecheckProcessScaffold> createState() => _RecheckProcessScaffoldState();
}

class _RecheckProcessScaffoldState extends State<RecheckProcessScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RecheckProcess(),
    );
  }
}
