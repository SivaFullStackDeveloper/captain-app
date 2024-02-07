import 'package:captain_app/deliveryFlow/screens/dashboard/view/DashboardScreen.dart';
import 'package:flutter/material.dart';
import '../../../../utils/SizeConfig.dart';
import '../../../constants/ConstantColor.dart';

class DashboardScaffold extends StatelessWidget {
  const DashboardScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: DashboardScreen(),
    );
  }
}
