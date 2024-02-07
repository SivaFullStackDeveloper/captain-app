import 'package:captain_app/managerFlow/screen/verifiedOrder/rescheduleOrders/view/RescheduleOrders.dart';
import 'package:flutter/material.dart';

class RescheduleOrdersScaffold extends StatefulWidget {
  const RescheduleOrdersScaffold({Key? key}) : super(key: key);

  @override
  State<RescheduleOrdersScaffold> createState() =>
      _RescheduleOrdersScaffoldState();
}

class _RescheduleOrdersScaffoldState extends State<RescheduleOrdersScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RescheduleOrders(),
    );
  }
}
