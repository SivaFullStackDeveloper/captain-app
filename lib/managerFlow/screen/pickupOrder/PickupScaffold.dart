import 'package:captain_app/managerFlow/screen/pickupOrder/view/PickupScreen.dart';
import 'package:flutter/material.dart';

class PickupScaffold extends StatefulWidget {
  const PickupScaffold({Key? key}) : super(key: key);

  @override
  State<PickupScaffold> createState() =>
      _PickupScaffoldState();
}

class _PickupScaffoldState
    extends State<PickupScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PickupScreen(),
    );
  }
}
