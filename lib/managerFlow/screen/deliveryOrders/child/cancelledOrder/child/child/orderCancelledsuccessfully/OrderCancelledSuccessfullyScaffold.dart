
import 'package:captain_app/managerFlow/screen/deliveryOrders/child/cancelledOrder/child/child/orderCancelledsuccessfully/view/OrderCancelledSuccessfullyScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../constants/ConstantColor.dart';




class OrderCancelledSuccessfullyScaffold extends StatelessWidget {
  const OrderCancelledSuccessfullyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: OrderCancelledSuccessfullyScreen(),
    );
  }
}
