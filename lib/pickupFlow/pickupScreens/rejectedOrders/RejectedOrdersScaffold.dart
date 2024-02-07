import 'package:captain_app/pickupFlow/pickupScreens/rejectedOrders/view/RejectedOrdersScreen.dart';
import 'package:flutter/material.dart';
import '../../../../utils/SizeConfig.dart';
import '../../../constants/ConstantColor.dart';

class RejectedOrdersScaffold extends StatelessWidget {
  const RejectedOrdersScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: RejectedOrdersScreen(),
    );
  }
}
