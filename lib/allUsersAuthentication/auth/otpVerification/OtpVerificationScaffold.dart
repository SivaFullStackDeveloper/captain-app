import 'package:captain_app/allUsersAuthentication/auth/otpVerification/view/OtpVerificationScreen.dart';
import 'package:flutter/material.dart';
import '../../../../constants/ConstantColor.dart';


class OtpVerificationScaffold extends StatelessWidget {
  const OtpVerificationScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: const OtpVerificationScreen(),
    );
  }
}
