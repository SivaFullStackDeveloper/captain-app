import 'package:captain_app/managerFlow/screen/deliveryOrders/child/newOrders/child/child/view/CancelOrder.dart';
import 'package:flutter/material.dart';




class CancelOrderScaffold extends StatefulWidget {
  const CancelOrderScaffold({Key? key}) : super(key: key);

  @override
  State<CancelOrderScaffold> createState() => _CancelOrderScaffoldState();
}

class _CancelOrderScaffoldState extends State<CancelOrderScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CancelOrder(),
    );
  }
}
