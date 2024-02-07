import 'package:captain_app/deliveryFlow/screens/canceledOrder/child/canceledOrderDetail/child/cancelOrderSuccessfully/view/CancelOrderSuccessfullyScreen.dart';
import 'package:captain_app/managerFlow/screen/refinedOrder/tobeReceived/child/toBeAssignedDetail/child/orderReadyBeRefinedSuccessfully/view/OrderReadyBeRefinedSuccessfullyScreen.dart';
import 'package:captain_app/managerFlow/screen/verifiedOrder/tobeAssigned/child/toBeAssignedDetail/child/toBeAssignedSuccessfully/view/ToBeAssignedSuccessfullyScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../constants/ConstantColor.dart';


class OrderReadyBeRefinedSuccessfullyScaffold extends StatelessWidget {
  const OrderReadyBeRefinedSuccessfullyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: const OrderReadyBeRefinedSuccessfullyScreen(),
    );
  }
}
