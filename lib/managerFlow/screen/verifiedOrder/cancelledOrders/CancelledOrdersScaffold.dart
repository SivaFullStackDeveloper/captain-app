import 'package:captain_app/managerFlow/screen/verifiedOrder/cancelledOrders/view/CancelledOrders.dart';
import 'package:flutter/material.dart';

class CancelledOrdersScaffold extends StatefulWidget {
  const CancelledOrdersScaffold({Key? key}) : super(key: key);

  @override
  State<CancelledOrdersScaffold> createState() =>
      _CancelledOrdersScaffoldState();
}

class _CancelledOrdersScaffoldState extends State<CancelledOrdersScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CancelledOrders(),
    );
  }
}
