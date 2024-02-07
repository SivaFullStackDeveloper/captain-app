import 'package:captain_app/managerFlow/screen/deliveryOrders/child/tobeShipped/managerShipped/view/child/transitOrderDetails/view/TransitOrderDetails.dart';
import 'package:flutter/material.dart';



class TransitOrderDetailsScaffold extends StatefulWidget {
  const TransitOrderDetailsScaffold({Key? key}) : super(key: key);

  @override
  State<TransitOrderDetailsScaffold> createState() => _TransitOrderDetailsScaffoldState();
}

class _TransitOrderDetailsScaffoldState extends State<TransitOrderDetailsScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:TransitOrderDetails(),
    );
  }
}
