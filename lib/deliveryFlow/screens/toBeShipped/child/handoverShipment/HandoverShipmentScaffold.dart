
import 'package:captain_app/deliveryFlow/screens/toBeShipped/child/handoverShipment/view/HandoverShipmentScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/ConstantColor.dart';


class HandoverShipmentScaffold extends StatelessWidget {
  const HandoverShipmentScaffold({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: TobeShippedDetailScreen(),
    );
  }
}
