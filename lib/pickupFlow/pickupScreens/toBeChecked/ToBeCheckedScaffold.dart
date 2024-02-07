import 'package:captain_app/pickupFlow/pickupScreens/toBeChecked/view/ToBeCheckedScreen.dart';
import 'package:flutter/material.dart';
import '../../../../utils/SizeConfig.dart';
import '../../../constants/ConstantColor.dart';

class ToBeCheckedScaffold extends StatelessWidget {
  const ToBeCheckedScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: ToBeCheckedScreen(),
    );
  }
}
