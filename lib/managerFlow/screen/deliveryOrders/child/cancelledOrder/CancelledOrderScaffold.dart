import 'package:captain_app/managerFlow/screen/deliveryOrders/child/cancelledOrder/view/CancelledOrderScreen.dart';
import 'package:flutter/material.dart';


class CancelledOrderScaffold extends StatefulWidget {
  const CancelledOrderScaffold({Key? key}) : super(key: key);

  @override
  State<CancelledOrderScaffold> createState() =>
      _CancelledOrderScaffoldState();
}

class _CancelledOrderScaffoldState
    extends State<CancelledOrderScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CancelledOrderScreen(),
    );
  }
}
