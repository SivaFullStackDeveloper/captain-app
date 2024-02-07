// ignore_for_file: prefer_const_constructors

import 'package:captain_app/managerFlow/screen/verifiedOrder/homeScreen/view/VerifierManagerHomeScreen.dart';
import 'package:flutter/material.dart';
import '../../../../utils/SizeConfig.dart';

class VerifierManagerHomeScreenScaffold extends StatefulWidget {
  const VerifierManagerHomeScreenScaffold({super.key});

  @override
  State<VerifierManagerHomeScreenScaffold> createState() =>
      _VerifierManagerHomeScreenScaffoldState();
}

class _VerifierManagerHomeScreenScaffoldState
    extends State<VerifierManagerHomeScreenScaffold> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // bottomNavigationBar:VerifierHomeScreen(),
      body: VerifierManagerHomeScreen(),
    );
  }
}
