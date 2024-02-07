import 'package:captain_app/managerFlow/screen/deliveryOrders/child/shipped/view/ShippedScreen.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';


class ShippedScaffold extends StatefulWidget {
  const ShippedScaffold({Key? key}) : super(key: key);

  @override
  State<ShippedScaffold> createState() =>
      _ShippedScaffoldState();
}

class _ShippedScaffoldState
    extends State<ShippedScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ShippedScreen(),
    );
  }
}
