import 'package:captain_app/refinerFlow/screens/shippedOrderDetailsScreen/view/ShippedOrderDetails.dart';
import 'package:flutter/material.dart';




class ShippedOrderDetailsScaffold extends StatefulWidget {
  const ShippedOrderDetailsScaffold({Key? key}) : super(key: key);

  @override
  State<ShippedOrderDetailsScaffold> createState() => _ShippedOrderDetailsScaffoldState();
}

class _ShippedOrderDetailsScaffoldState extends State<ShippedOrderDetailsScaffold> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ShippedOrderDetails(),
    );
  }
}
