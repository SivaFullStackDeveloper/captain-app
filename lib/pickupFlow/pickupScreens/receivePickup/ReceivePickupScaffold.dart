import 'package:captain_app/allUsersAuthentication/mpin/registerNewMPin/view/RegisterNewMPinScreen.dart';
import 'package:captain_app/deliveryFlow/screens/dashboard/view/DashboardScreen.dart';
import 'package:captain_app/pickupFlow/pickupScreens/receivePickup/view/ReceivePickupScreen.dart';
import 'package:flutter/material.dart';
import '../../../../utils/SizeConfig.dart';
import '../../../constants/ConstantColor.dart';

class ReceivePickupScaffold extends StatelessWidget {
  const ReceivePickupScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: ReceivePickupScreen(),
    );
  }
}
