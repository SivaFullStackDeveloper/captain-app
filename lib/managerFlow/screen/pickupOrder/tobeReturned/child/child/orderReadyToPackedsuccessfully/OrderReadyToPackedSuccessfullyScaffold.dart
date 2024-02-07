import 'package:captain_app/managerFlow/screen/deliveryOrders/child/tobeShipped/child/child/child/orderReadysuccessfully/view/OrderReadySuccessfullyScreen.dart';
import 'package:captain_app/managerFlow/screen/pickupOrder/tobeReturned/child/child/orderReadyToPackedsuccessfully/view/OrderReadyToPackedSuccessfullyScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../../constants/ConstantColor.dart';




class OrderReadyToPackedSuccessfullyScaffold extends StatelessWidget {
  const OrderReadyToPackedSuccessfullyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: OrderReadyToPackedSuccessfullyScreen(),
    );
  }
}
