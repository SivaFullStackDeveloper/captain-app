
import 'package:captain_app/refinerFlow/screens/RefinerOtpScreen/view/RefinerOtpScreen.dart';
import 'package:flutter/material.dart';




class RefinerOtpScreenScaffold extends StatefulWidget {
  const RefinerOtpScreenScaffold({Key? key}) : super(key: key);

  @override
  State<RefinerOtpScreenScaffold> createState() => _RefinerOtpScreenScaffoldState();
}

class _RefinerOtpScreenScaffoldState extends State<RefinerOtpScreenScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RefinerOtpScreen(),
    );
  }
}
