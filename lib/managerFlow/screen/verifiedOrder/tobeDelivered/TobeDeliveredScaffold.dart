import 'package:captain_app/managerFlow/screen/verifiedOrder/tobeDelivered/view/TobeDeliveredScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants/ConstantColor.dart';


class TobeDeliveredScaffold extends StatelessWidget {
  const TobeDeliveredScaffold({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: const TobeDeliveredScreen(),
    );
  }
}
