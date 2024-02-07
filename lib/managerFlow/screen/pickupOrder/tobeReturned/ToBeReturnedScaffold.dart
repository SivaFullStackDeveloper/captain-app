import 'package:captain_app/managerFlow/screen/pickupOrder/tobeReturned/view/ToBeReturnedScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants/ConstantColor.dart';
import '../../deliveryOrders/child/shipped/child/view/ShippedDetailScreen.dart';


class ToBeReturnedScaffold extends StatelessWidget {
  const ToBeReturnedScaffold({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: ToBeReturnedScreen(),
    );
  }
}
