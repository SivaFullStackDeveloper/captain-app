import 'package:captain_app/allUsersAuthentication/auth/login/view/LoginScreen.dart';
import 'package:flutter/material.dart';
import '../../../../utils/SizeConfig.dart';
import '../../../constants/ConstantColor.dart';
import '../../mpin/registerNewMPin/view/RegisterNewMPinScreen.dart';

class LoginScaffold extends StatelessWidget {
  const LoginScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: LoginScreen(),
    );
  }
}
