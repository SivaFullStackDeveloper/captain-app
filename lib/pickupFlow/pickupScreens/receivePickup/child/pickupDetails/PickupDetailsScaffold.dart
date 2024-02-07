import 'package:captain_app/pickupFlow/pickupScreens/receivePickup/child/pickupDetails/view/PickupDetailsScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/ConstantColor.dart';


class PickupDetailsScaffold extends StatelessWidget {
  const PickupDetailsScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: PickupDetailsScreen(),
    );
  }
}
