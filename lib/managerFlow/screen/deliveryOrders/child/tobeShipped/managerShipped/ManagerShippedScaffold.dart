import 'package:captain_app/managerFlow/screen/deliveryOrders/child/tobeShipped/managerShipped/view/ManagerShipped.dart';
import 'package:flutter/material.dart';




class ManagerShippedScaffold extends StatefulWidget {
  const ManagerShippedScaffold({Key? key}) : super(key: key);

  @override
  State<ManagerShippedScaffold> createState() => _ManagerShippedScaffoldState();
}

class _ManagerShippedScaffoldState extends State<ManagerShippedScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:ManagerShipped());
  }
}
