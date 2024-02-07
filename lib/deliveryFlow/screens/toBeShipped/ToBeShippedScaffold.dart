import 'package:captain_app/deliveryFlow/screens/toBeShipped/view/ToBeShippedScreen.dart';
import 'package:flutter/material.dart';
import '../../../../utils/SizeConfig.dart';
import '../../../constants/ConstantColor.dart';

class ToBeShippedOrderScaffold extends StatelessWidget {
  const ToBeShippedOrderScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: ToBeShippedScreen(),
    );
  }
}
