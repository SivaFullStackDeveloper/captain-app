import 'package:captain_app/deliveryFlow/screens/shippedOrder/child/shippedOrderDetail/view/ShippedOrderDetailScreen.dart';
import 'package:flutter/material.dart';
import '../../../../../../constants/ConstantAssets.dart';
import '../../../../../../constants/ConstantColor.dart';
import '../../../../../../constants/ConstantFonts.dart';


class ShippedOrderDetailScaffold extends StatelessWidget {
  const ShippedOrderDetailScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: ShippedOrderDetailScreen(),
    );
  }
}
