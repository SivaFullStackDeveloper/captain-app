import 'package:captain_app/deliveryFlow/screens/canceledOrder/view/CanceledOrderScreen.dart';
import 'package:flutter/material.dart';
import '../../../../utils/SizeConfig.dart';
import '../../../constants/ConstantColor.dart';

class CanceledOrderScaffold extends StatelessWidget {
  const CanceledOrderScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: CanceledOrderScreen(),
    );
  }
}
