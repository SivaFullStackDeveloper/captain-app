import 'package:captain_app/managerFlow/screen/verifiedOrder/putInTheBox/child/putInBoxScan/child/orderReadyToShip/view/OrderReadyToShip.dart';
import 'package:flutter/material.dart';

class OrderReadyToShipScaffold extends StatefulWidget {
  const OrderReadyToShipScaffold({Key? key}) : super(key: key);

  @override
  State<OrderReadyToShipScaffold> createState() =>
      _OrderReadyToShipScaffoldState();
}

class _OrderReadyToShipScaffoldState extends State<OrderReadyToShipScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrderReadyToShip(),
    );
  }
}
