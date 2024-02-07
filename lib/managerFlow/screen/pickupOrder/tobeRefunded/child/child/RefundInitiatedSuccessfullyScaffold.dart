import 'package:captain_app/managerFlow/screen/pickupOrder/tobeRefunded/child/child/view/RefundInitiatedSuccessfullyScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../constants/ConstantColor.dart';

class InitiatedSuccessfullyScaffold extends StatelessWidget {
  const InitiatedSuccessfullyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: RefundInitiatedSuccessfullyScreen(),
    );
  }
}
