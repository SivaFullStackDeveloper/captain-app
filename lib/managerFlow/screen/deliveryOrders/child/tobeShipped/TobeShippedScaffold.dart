import 'package:captain_app/managerFlow/screen/deliveryOrders/child/tobeShipped/view/TobeShippedScreen.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';

class TobeShippedScaffold extends StatefulWidget {
  const TobeShippedScaffold({Key? key}) : super(key: key);

  @override
  State<TobeShippedScaffold> createState() =>
      _TobeShippedScaffoldState();
}

class _TobeShippedScaffoldState
    extends State<TobeShippedScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TobeShippedScreen(),
    );
  }
}
