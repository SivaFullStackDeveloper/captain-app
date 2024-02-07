import 'package:captain_app/managerFlow/screen/deliveryOrders/child/newOrders/view/NewOrders.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/SizeConfig.dart';






class NewOrdersScaffold extends StatefulWidget {
  const NewOrdersScaffold({Key? key}) : super(key: key);

  @override
  State<NewOrdersScaffold> createState() => _NewOrdersScaffoldState();
}

class _NewOrdersScaffoldState extends State<NewOrdersScaffold> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: NewOrders(),
    );
  }
}
