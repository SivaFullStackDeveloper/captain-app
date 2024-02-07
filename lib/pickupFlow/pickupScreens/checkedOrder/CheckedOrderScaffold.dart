import 'package:captain_app/pickupFlow/pickupScreens/checkedOrder/view/CheckedOrderScreen.dart';
import 'package:flutter/material.dart';

import '../../../../utils/SizeConfig.dart';
import '../../../constants/ConstantColor.dart';

class CheckedOrderScaffold extends StatelessWidget {
  const CheckedOrderScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: CheckedOrderScreen(),
    );
  }
}
