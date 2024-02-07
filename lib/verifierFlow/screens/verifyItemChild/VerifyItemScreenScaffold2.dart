// ignore_for_file: prefer_const_constructors

import 'package:captain_app/utils/SizeConfig.dart';
import 'package:captain_app/verifierFlow/screens/verifyItemChild/view/VerifierItemScreen2.dart';
import 'package:flutter/material.dart';

class VerifyItemScreenScaffold2 extends StatefulWidget {
  const VerifyItemScreenScaffold2({super.key});

  @override
  State<VerifyItemScreenScaffold2> createState() =>
      _VerifyItemScreenScaffold2State();
}

class _VerifyItemScreenScaffold2State extends State<VerifyItemScreenScaffold2> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: VerifyItemScreen2(),
    );
  }
}
