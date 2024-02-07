import 'package:captain_app/managerFlow/screen/pickupOrder/view/PickupScreen.dart';
import 'package:captain_app/managerFlow/screen/verifiedOrder/view/VerifiedScreen.dart';
import 'package:flutter/material.dart';

class VerifiedScaffold extends StatefulWidget {
  const VerifiedScaffold({Key? key}) : super(key: key);

  @override
  State<VerifiedScaffold> createState() =>
      _VerifiedScaffoldState();
}

class _VerifiedScaffoldState
    extends State<VerifiedScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: VerifiedScreen(),
    );
  }
}
