import 'package:captain_app/allUsersAuthentication/mpin/registerNewMPin/view/RegisterNewMPinScreen.dart';
import 'package:captain_app/deliveryFlow/screens/canceledOrder/child/canceledOrderDetail/view/CanceledOrderDetailScreen.dart';
import 'package:captain_app/deliveryFlow/screens/dashboard/view/DashboardScreen.dart';
import 'package:captain_app/deliveryFlow/screens/shippedOrder/child/shippedOrderDetail/view/ShippedOrderDetailScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/ConstantColor.dart';



class CanceledOrderDetailScaffold extends StatelessWidget {
  const CanceledOrderDetailScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: const CanceledOrderDetailScreen(),
    );
  }
}
