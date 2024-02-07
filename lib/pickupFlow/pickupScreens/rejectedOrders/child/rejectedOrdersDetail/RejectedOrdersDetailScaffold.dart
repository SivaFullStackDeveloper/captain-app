import 'package:captain_app/pickupFlow/pickupScreens/rejectedOrders/child/rejectedOrdersDetail/view/RejectedOrdersDetailsScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../constants/ConstantColor.dart';


class RejectedOrdersDetailScaffold extends StatelessWidget {
  const RejectedOrdersDetailScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: RejectedOrdersDetailsScreen(),
    );
  }
}
