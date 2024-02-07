
import 'package:captain_app/pickupFlow/pickupScreens/receivePickup/child/pickupDetails/child/pickupReady/view/PickupReadyScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../../refinerFlow/screens/refinerReceivePickup/child/RefinerReceivePickupDetails/child/refinerReceivePickupReady/view/RefinerReceivePickupReadyScreen.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../constants/ConstantString.dart';



class RefinerReceivePickupReadyScaffold extends StatelessWidget {
  const RefinerReceivePickupReadyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: RefinerReceivePickupReadyScreen(),
    );
  }
}
