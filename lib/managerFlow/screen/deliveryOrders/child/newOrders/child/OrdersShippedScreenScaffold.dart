import 'package:flutter/material.dart';

import 'OrderShipped2.dart';





class OrdersShippedScreenScaffold extends StatefulWidget {
  const OrdersShippedScreenScaffold({Key? key}) : super(key: key);

  @override
  State<OrdersShippedScreenScaffold> createState() => _OrdersShippedScreenScaffoldState();
}

class _OrdersShippedScreenScaffoldState extends State<OrdersShippedScreenScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrdersShippedScreen(),
    );
  }
}
