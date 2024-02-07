
import 'package:captain_app/deliveryFlow/screens/toBeShipped/child/handoverShipment/child/orderShippedSuccessfully/view/OrderShippedSuccessfullyScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../../constants/ConstantColor.dart';




class OrderShippedSuccessfullyScaffold extends StatelessWidget {
  const OrderShippedSuccessfullyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: OrderShippedSuccessfullyScreen(),
    );
  }
}
