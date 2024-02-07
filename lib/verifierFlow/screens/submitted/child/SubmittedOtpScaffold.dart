import 'package:captain_app/verifierFlow/screens/submitted/child/view/SubmittedOtp.dart';
import 'package:flutter/material.dart';



class SubmittedOtpScaffold extends StatefulWidget {
  const SubmittedOtpScaffold({Key? key}) : super(key: key);

  @override
  State<SubmittedOtpScaffold> createState() => _SubmittedOtpScaffoldState();
}

class _SubmittedOtpScaffoldState extends State<SubmittedOtpScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SubmittedOtp(),
    );
  }
}
