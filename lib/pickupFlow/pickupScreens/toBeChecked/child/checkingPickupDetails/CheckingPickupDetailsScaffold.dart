import 'package:captain_app/pickupFlow/pickupScreens/toBeChecked/child/checkingPickupDetails/view/CheckingPickupDetailsScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/ConstantColor.dart';



class CheckingPickupDetailsScaffold extends StatelessWidget {
  const CheckingPickupDetailsScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: CheckingPickupDetailsScreen(),
    );
  }
}
