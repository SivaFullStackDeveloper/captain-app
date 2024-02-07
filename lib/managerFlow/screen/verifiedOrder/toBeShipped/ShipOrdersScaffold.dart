import 'package:captain_app/managerFlow/screen/verifiedOrder/toBeShipped/view/ShipOrders.dart';
import 'package:flutter/material.dart';

class ShipOrdersScaffold extends StatefulWidget {
  const ShipOrdersScaffold({Key? key}) : super(key: key);

  @override
  State<ShipOrdersScaffold> createState() => _ShipOrdersScaffoldState();
}

class _ShipOrdersScaffoldState extends State<ShipOrdersScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShipOrders(),
    );
  }
}
