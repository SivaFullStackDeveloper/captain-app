import 'package:captain_app/managerFlow/screen/pickupOrder/view/PickupScreen.dart';
import 'package:captain_app/managerFlow/screen/refinedOrder/view/RefinedScreen.dart';
import 'package:captain_app/managerFlow/screen/verifiedOrder/view/VerifiedScreen.dart';
import 'package:flutter/material.dart';

class RefinedScaffold extends StatefulWidget {
  const RefinedScaffold({Key? key}) : super(key: key);

  @override
  State<RefinedScaffold> createState() =>
      _RefinedScaffoldState();
}

class _RefinedScaffoldState
    extends State<RefinedScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RefinedScreen(),
    );
  }
}
