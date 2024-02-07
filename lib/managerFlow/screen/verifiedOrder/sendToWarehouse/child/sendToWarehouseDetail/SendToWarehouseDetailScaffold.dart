import 'package:captain_app/managerFlow/screen/pickupOrder/tobeRefunded/child/view/ToBeRefundDetailScreen.dart';
import 'package:captain_app/managerFlow/screen/pickupOrder/tobeReturned/child/view/ToBeReturnedDetailScreen.dart';
import 'package:captain_app/managerFlow/screen/verifiedOrder/sendToWarehouse/child/sendToWarehouseDetail/view/SendToWarehouseDetailScreen.dart';
import 'package:captain_app/managerFlow/screen/verifiedOrder/tobeDelivered/child/toBeDeliveredDetail/view/ToBeDeliveredDetailScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../../constants/ConstantColor.dart';


class SendToWarehouseDetailScaffold extends StatelessWidget {
  const SendToWarehouseDetailScaffold({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: SendToWarehouseDetailScreen(),
    );
  }
}
