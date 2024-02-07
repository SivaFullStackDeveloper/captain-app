import 'package:captain_app/allUsersAuthentication/mpin/registerNewMPin/view/RegisterNewMPinScreen.dart';
import 'package:captain_app/deliveryFlow/screens/dashboard/view/DashboardScreen.dart';
import 'package:captain_app/managerFlow/screen/deliveryOrders/child/shipped/child/view/ShippedDetailScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants/ConstantColor.dart';


class ShippedDetailScaffold extends StatelessWidget {
  const ShippedDetailScaffold({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: ShippedDetailScreen(),
    );
  }
}
