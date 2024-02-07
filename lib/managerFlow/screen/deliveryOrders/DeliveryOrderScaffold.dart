import 'package:captain_app/managerFlow/screen/deliveryOrders/view/DeliveryOrderScreen.dart';
import 'package:flutter/material.dart';

class DeliveryOrderScaffold extends StatefulWidget {
  const DeliveryOrderScaffold({Key? key}) : super(key: key);

  @override
  State<DeliveryOrderScaffold> createState() =>
      _DeliveryOrderScaffoldState();
}

class _DeliveryOrderScaffoldState
    extends State<DeliveryOrderScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DeliveryOrderScreen(),
    );
  }
}
