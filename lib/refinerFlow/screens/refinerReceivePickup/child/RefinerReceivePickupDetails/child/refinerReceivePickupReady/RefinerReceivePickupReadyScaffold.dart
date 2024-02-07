import 'package:captain_app/refinerFlow/screens/refinerReceivePickup/child/RefinerReceivePickupDetails/child/refinerReceivePickupReady/view/RefinerReceivePickupReadyScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../../constants/ConstantColor.dart';





class RefinerReceivePickupScaffold extends StatelessWidget {
  const RefinerReceivePickupScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: RefinerReceivePickupReadyScreen(),
    );
  }
}
