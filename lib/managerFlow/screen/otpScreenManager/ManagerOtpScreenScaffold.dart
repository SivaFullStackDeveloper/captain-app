import 'package:captain_app/managerFlow/screen/otpScreenManager/view/ManagerOtpScreen.dart';
import 'package:captain_app/verifierFlow/screens/otpScreen/view/OtpScreen.dart';
import 'package:flutter/material.dart';




class ManagerOtpScreenScaffold extends StatefulWidget {
  const ManagerOtpScreenScaffold({Key? key}) : super(key: key);

  @override
  State<ManagerOtpScreenScaffold> createState() => _ManagerOtpScreenScaffoldState();
}

class _ManagerOtpScreenScaffoldState extends State<ManagerOtpScreenScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ManagerOtpScreen(),
    );
  }
}
