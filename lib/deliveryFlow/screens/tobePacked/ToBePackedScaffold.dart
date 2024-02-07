import 'package:captain_app/allUsersAuthentication/mpin/registerNewMPin/view/RegisterNewMPinScreen.dart';
import 'package:captain_app/deliveryFlow/screens/dashboard/view/DashboardScreen.dart';
import 'package:captain_app/deliveryFlow/screens/tobePacked/view/ToBePackedOrdersScreen.dart';
import 'package:flutter/material.dart';
import '../../../../utils/SizeConfig.dart';
import '../../../constants/ConstantColor.dart';

class ToBePackedOrdersScaffold extends StatelessWidget {
  const ToBePackedOrdersScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: ToBePackedOrdersScreen(),
    );
  }
}
