import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/toManager/child/verifyManagerOTP/view/VerifyManagerOTPScreen.dart';
import 'package:flutter/material.dart';




class VerifyManagerOtpScaffold extends StatefulWidget {
  const VerifyManagerOtpScaffold({Key? key}) : super(key: key);

  @override
  State<VerifyManagerOtpScaffold> createState() => _VerifyManagerOtpScaffoldState();
}

class _VerifyManagerOtpScaffoldState extends State<VerifyManagerOtpScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: VerifyManagerOtpScreen(),
    );
  }
}
