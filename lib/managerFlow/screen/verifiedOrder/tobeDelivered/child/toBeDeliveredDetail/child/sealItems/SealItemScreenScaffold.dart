
import 'package:captain_app/managerFlow/screen/verifiedOrder/tobeDelivered/child/toBeDeliveredDetail/child/sealItems/view/SealItemScreen.dart';
import 'package:captain_app/verifierFlow/screens/sealTheItems/view/SealTheItemScreen.dart';
import 'package:flutter/material.dart';

class SealItemScreenScaffold extends StatefulWidget {
  const SealItemScreenScaffold({super.key});

  @override
  State<SealItemScreenScaffold> createState() =>
      _SealItemScreenScaffoldState();
}

class _SealItemScreenScaffoldState extends State<SealItemScreenScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SealItemScreen(),
    );
  }
}
