
import 'package:captain_app/deliveryFlow/screens/tobePacked/child/child/orderPackedSuccessfully/view/OrderPackedSuccessfullyScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants/ConstantColor.dart';



class OrderPackedSuccessfullyScaffold extends StatelessWidget {
  const OrderPackedSuccessfullyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: OrderPackedSuccessfullyScreen(),
    );
  }
}
