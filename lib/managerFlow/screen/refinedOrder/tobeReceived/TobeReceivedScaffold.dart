import 'package:captain_app/managerFlow/screen/refinedOrder/tobeReceived/view/TobeReceivedScreen.dart';
import 'package:captain_app/managerFlow/screen/verifiedOrder/tobeAssigned/view/TobeAssignedScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants/ConstantColor.dart';
import '../view/RefinedScreen.dart';


class TobeReceivedScaffold extends StatelessWidget {
  const TobeReceivedScaffold({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: TobeReceivedScreen(),
    );
  }
}
