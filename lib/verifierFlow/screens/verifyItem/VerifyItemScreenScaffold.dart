// ignore_for_file: prefer_const_constructors

import 'package:captain_app/verifierFlow/screens/VerifyItem/view/VerifyItemScreen.dart';
import 'package:flutter/material.dart';

import '../../../utils/SizeConfig.dart';

class VerifyItemScreenScaffold extends StatefulWidget {
  const VerifyItemScreenScaffold({super.key});

  @override
  State<VerifyItemScreenScaffold> createState() =>
      _VerifyItemScreenScaffoldState();
}

class _VerifyItemScreenScaffoldState extends State<VerifyItemScreenScaffold> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: VerifyItemScreen(),
    );
  }
}
