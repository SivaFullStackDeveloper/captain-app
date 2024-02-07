import 'package:captain_app/allUsersAuthentication/mpin/registerNewMPin/view/RegisterNewMPinScreen.dart';
import 'package:captain_app/deliveryFlow/screens/dashboard/view/DashboardScreen.dart';
import 'package:captain_app/pickupFlow/pickupScreens/pickupDashboard/view/PickupDashboardScreen.dart';
import 'package:captain_app/refinerFlow/screens/refinerDashboard/view/RefinerDashboardScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../utils/SizeConfig.dart';
import '../../../constants/ConstantColor.dart';

class RefinerDashboardScaffold extends StatelessWidget {
  const RefinerDashboardScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: RefinerDashboardScreen(),
    );
  }
}
