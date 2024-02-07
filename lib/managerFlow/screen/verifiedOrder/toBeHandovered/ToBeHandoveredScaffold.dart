import 'package:captain_app/managerFlow/screen/verifiedOrder/sendToWarehouse/view/SendToWarehouseScreen.dart';
import 'package:captain_app/managerFlow/screen/verifiedOrder/toBeHandovered/view/ToBeHandoveredScreen.dart';
import 'package:captain_app/managerFlow/screen/verifiedOrder/tobeDelivered/view/TobeDeliveredScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants/ConstantColor.dart';


class ToBeHandoveredScaffold extends StatelessWidget {
  const ToBeHandoveredScaffold({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: const ToBeHandoveredScreen(),
    );
  }
}
