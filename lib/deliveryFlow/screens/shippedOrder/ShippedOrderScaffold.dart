
import 'package:captain_app/deliveryFlow/screens/shippedOrder/view/ShippedOrderScreen.dart';
import 'package:flutter/material.dart';
import '../../../../utils/SizeConfig.dart';
import '../../../constants/ConstantColor.dart';

class ShippedOrderScaffold extends StatelessWidget {
  const ShippedOrderScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: ShippedOrderScreen(),
    );
  }
}
