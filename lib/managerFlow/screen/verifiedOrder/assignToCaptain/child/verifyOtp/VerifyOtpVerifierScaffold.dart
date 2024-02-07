import 'package:captain_app/managerFlow/screen/verifiedOrder/assignToCaptain/child/verifyOtp/view/VerifyOtpVerifier.dart';
import 'package:flutter/material.dart';

class VerifyOtpVerifierScaffold extends StatefulWidget {
  const VerifyOtpVerifierScaffold({Key? key}) : super(key: key);

  @override
  State<VerifyOtpVerifierScaffold> createState() =>
      _VerifyOtpVerifierScaffoldState();
}

class _VerifyOtpVerifierScaffoldState extends State<VerifyOtpVerifierScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VerifyOtpVerifier(),
    );
  }
}
