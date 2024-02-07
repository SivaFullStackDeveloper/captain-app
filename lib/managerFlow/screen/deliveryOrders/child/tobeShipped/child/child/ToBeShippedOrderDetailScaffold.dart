import 'package:captain_app/allUsersAuthentication/mpin/registerNewMPin/view/RegisterNewMPinScreen.dart';
import 'package:captain_app/deliveryFlow/screens/dashboard/view/DashboardScreen.dart';
import 'package:captain_app/managerFlow/screen/deliveryOrders/child/cancelledOrder/child/view/CancelledOrderDetailScreen.dart';
import 'package:captain_app/managerFlow/screen/deliveryOrders/child/tobeShipped/child/child/view/ToBeShippedOrderDetailScreen.dart';
import 'package:flutter/material.dart';
import '../../../../../../../constants/ConstantColor.dart';


class ToBeShippedOrderDetailScaffold extends StatelessWidget {
  const ToBeShippedOrderDetailScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: ToBeShippedOrderDetailScreen(),
    );
  }
}
