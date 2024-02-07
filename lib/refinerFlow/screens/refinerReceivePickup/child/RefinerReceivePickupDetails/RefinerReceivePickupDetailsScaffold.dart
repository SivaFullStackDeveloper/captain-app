import 'package:captain_app/refinerFlow/screens/refinerReceivePickup/child/RefinerReceivePickupDetails/view/RefinerReceivePickupDetailsScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/ConstantColor.dart';



class RefinerReceivePickupDetailsScaffold extends StatelessWidget {
  const RefinerReceivePickupDetailsScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: RefinerReceivePickupDetailsScreen(),
    );
  }
}
