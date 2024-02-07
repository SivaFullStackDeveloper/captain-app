import 'package:captain_app/allUsersAuthentication/mpin/registerNewMPin/view/RegisterNewMPinScreen.dart';
import 'package:captain_app/deliveryFlow/screens/dashboard/view/DashboardScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants/ConstantColor.dart';
import 'child/view/ToBeShippedOrderDetailScreen.dart';


class TobeShippedDetailScaffold extends StatelessWidget {
  const TobeShippedDetailScaffold({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: ToBeShippedOrderDetailScreen(),
    );
  }
}
