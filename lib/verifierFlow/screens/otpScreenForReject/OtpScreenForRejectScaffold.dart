import 'package:captain_app/verifierFlow/screens/otpScreen/view/OtpScreen.dart';
import 'package:captain_app/verifierFlow/screens/otpScreenForReject/view/OtpScreenForReject.dart';
import 'package:flutter/material.dart';




class OtpScreenForRejectScaffold extends StatefulWidget {
  const OtpScreenForRejectScaffold({Key? key}) : super(key: key);

  @override
  State<OtpScreenForRejectScaffold> createState() => _OtpScreenForRejectScaffoldState();
}

class _OtpScreenForRejectScaffoldState extends State<OtpScreenForRejectScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OtpScreenForReject(),
    );
  }
}
