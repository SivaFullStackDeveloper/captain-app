import 'package:captain_app/deliveryFlow/screens/canceledOrder/child/canceledOrderDetail/child/cancelOrderSuccessfully/view/CancelOrderSuccessfullyScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../../constants/ConstantColor.dart';


class CancelOrderSuccessfullyScaffold extends StatelessWidget {
  const CancelOrderSuccessfullyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: CheckedOrderSuccessfullyScreen(),
    );
  }
}
