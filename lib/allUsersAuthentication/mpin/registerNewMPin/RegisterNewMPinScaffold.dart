import 'package:captain_app/allUsersAuthentication/mpin/registerNewMPin/view/RegisterNewMPinScreen.dart';
import 'package:flutter/material.dart';

import '../../../../constants/ConstantColor.dart';


class RegisterNewMPinScaffold extends StatelessWidget {
  const RegisterNewMPinScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: RegisterNewMPinScreen(),
    );
  }
}
