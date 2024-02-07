// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../../commonWidgets/CustomBottomNavigationbarScaffold.dart';
import '../../../utils/SizeConfig.dart';

class VerifierHomeScreenScaffold extends StatefulWidget {
  const VerifierHomeScreenScaffold({super.key});

  @override
  State<VerifierHomeScreenScaffold> createState() =>
      _VerifierHomeScreenScaffoldState();
}

class _VerifierHomeScreenScaffoldState
    extends State<VerifierHomeScreenScaffold> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      // bottomNavigationBar:VerifierHomeScreen(),
      body: CustomBottomNavigationBarScaffold(),
    );
  }
}
