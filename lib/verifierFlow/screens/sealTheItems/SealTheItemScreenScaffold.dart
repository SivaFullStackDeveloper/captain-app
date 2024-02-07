// ignore_for_file: prefer_const_constructors

import 'package:captain_app/verifierFlow/screens/sealTheItems/view/SealTheItemScreen.dart';
import 'package:flutter/material.dart';
import '../../../utils/SizeConfig.dart';

class SealTheItemScreenScaffold extends StatefulWidget {
  const SealTheItemScreenScaffold({super.key});

  @override
  State<SealTheItemScreenScaffold> createState() =>
      _SealTheItemScreenScaffoldState();
}

class _SealTheItemScreenScaffoldState extends State<SealTheItemScreenScaffold> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SealTheItemScreen(),
    );
  }
}
