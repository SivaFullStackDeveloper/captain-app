import 'package:captain_app/allUsersAuthentication/mpin/enterMPin/view/EnterMPinScreen.dart';
import 'package:captain_app/allUsersAuthentication/mpin/registerNewMPin/view/RegisterNewMPinScreen.dart';
import 'package:flutter/material.dart';

import '../../../../constants/ConstantColor.dart';

class EnterMPinScaffold extends StatelessWidget {
  const EnterMPinScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: EnterMPinScreen(),
    );
  }
}
