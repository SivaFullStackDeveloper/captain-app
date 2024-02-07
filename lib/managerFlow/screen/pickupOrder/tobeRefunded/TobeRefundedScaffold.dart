import 'package:captain_app/managerFlow/screen/pickupOrder/tobeRefunded/view/TobeRefundedScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants/ConstantColor.dart';
import '../../deliveryOrders/child/shipped/child/view/ShippedDetailScreen.dart';


class TobeRefundedScaffold extends StatelessWidget {
  const TobeRefundedScaffold({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: TobeRefundedScreen(),
    );
  }
}
