
import 'package:captain_app/managerFlow/screen/deliveryOrders/child/cancelledOrder/child/view/CancelledOrderDetailScreen.dart';
import 'package:flutter/material.dart';
import '../../../../../../constants/ConstantColor.dart';


class CancelledOrderDetailScaffold extends StatelessWidget {
  const CancelledOrderDetailScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: CancelledOrderDetailScreen(),
    );
  }
}
