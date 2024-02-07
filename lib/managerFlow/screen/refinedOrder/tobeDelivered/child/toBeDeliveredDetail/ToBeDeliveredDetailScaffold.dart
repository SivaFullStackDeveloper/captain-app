import 'package:captain_app/managerFlow/screen/pickupOrder/tobeRefunded/child/view/ToBeRefundDetailScreen.dart';
import 'package:captain_app/managerFlow/screen/pickupOrder/tobeReturned/child/view/ToBeReturnedDetailScreen.dart';
import 'package:captain_app/managerFlow/screen/verifiedOrder/tobeDelivered/child/toBeDeliveredDetail/view/ToBeDeliveredDetailScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../../constants/ConstantColor.dart';


class ToBeDeliveredDetailScaffold extends StatelessWidget {
  const ToBeDeliveredDetailScaffold({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: ToBeDeliveredDetailScreen(),
    );
  }
}
