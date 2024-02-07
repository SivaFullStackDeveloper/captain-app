import 'package:captain_app/managerFlow/screen/pickupOrder/tobeRefunded/child/view/ToBeRefundDetailScreen.dart';
import 'package:captain_app/managerFlow/screen/pickupOrder/tobeReturned/child/view/ToBeReturnedDetailScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants/ConstantColor.dart';


class TobeRefundedDetailScaffold extends StatelessWidget {
  const TobeRefundedDetailScaffold({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: TobeRefundedDetailScreen(),
    );
  }
}
