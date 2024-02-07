import 'package:captain_app/verifierFlow/screens/otpScreen/view/OtpScreen.dart';
import 'package:flutter/material.dart';




class OtpScreenScaffold extends StatefulWidget {
  const OtpScreenScaffold({Key? key}) : super(key: key);

  @override
  State<OtpScreenScaffold> createState() => _OtpScreenScaffoldState();
}

class _OtpScreenScaffoldState extends State<OtpScreenScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OtpScreen(),
    );
  }
}
