
import 'package:captain_app/pickupFlow/pickupScreens/toBeChecked/child/checkingPickupDetails/child/view/CheckItemScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants/ConstantColor.dart';


class CheckItemScaffold extends StatelessWidget {
  const CheckItemScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: CheckItemScreen(),
    );
  }
}
