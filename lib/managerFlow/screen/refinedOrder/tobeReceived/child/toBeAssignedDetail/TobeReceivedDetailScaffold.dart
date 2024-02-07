import 'package:captain_app/managerFlow/screen/pickupOrder/tobeReturned/child/view/ToBeReturnedDetailScreen.dart';
import 'package:captain_app/managerFlow/screen/refinedOrder/tobeReceived/child/toBeAssignedDetail/view/TobeReceivedDetailScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants/ConstantColor.dart';


class TobeReceivedDetailScaffold extends StatelessWidget {
  const TobeReceivedDetailScaffold({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: TobeReceivedDetailScreen(),
    );
  }
}
