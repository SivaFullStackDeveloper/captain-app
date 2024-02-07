import 'package:captain_app/managerFlow/screen/deliveryOrders/child/tobeShipped/managerShipped/view/deliverdOrders/view/DeliverdOrder.dart';
import 'package:flutter/material.dart';



class DeliverdOrderScaffold extends StatefulWidget {
  const DeliverdOrderScaffold({Key? key}) : super(key: key);

  @override
  State<DeliverdOrderScaffold> createState() => _DeliverdOrderScaffoldState();
}

class _DeliverdOrderScaffoldState extends State<DeliverdOrderScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DeliverdOrderDetails(),
    );
  }
}
