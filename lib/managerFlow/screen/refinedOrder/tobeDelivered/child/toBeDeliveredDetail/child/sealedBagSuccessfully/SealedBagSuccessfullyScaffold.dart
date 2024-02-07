import 'package:captain_app/deliveryFlow/screens/canceledOrder/child/canceledOrderDetail/child/cancelOrderSuccessfully/view/CancelOrderSuccessfullyScreen.dart';
import 'package:captain_app/managerFlow/screen/verifiedOrder/tobeAssigned/child/toBeAssignedDetail/child/toBeAssignedSuccessfully/view/ToBeAssignedSuccessfullyScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../constants/ConstantColor.dart';
import 'view/SealedBagSuccessfullyScreen.dart';


class SealedBagSuccessfullyScaffold extends StatelessWidget {
  const SealedBagSuccessfullyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: SealedBagSuccessfullyScreen(),
    );
  }
}
