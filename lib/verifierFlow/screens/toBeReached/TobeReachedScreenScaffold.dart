// ignore_for_file: prefer_const_constructors

import 'package:captain_app/verifierFlow/screens/toBeReached/view/ToBeReachedScreen.dart';
import 'package:flutter/material.dart';

import '../../../utils/SizeConfig.dart';

class TobeReachedScreenScaffold extends StatefulWidget {
  const TobeReachedScreenScaffold({super.key});

  @override
  State<TobeReachedScreenScaffold> createState() =>
      _TobeReachedScreenScaffoldState();
}

class _TobeReachedScreenScaffoldState extends State<TobeReachedScreenScaffold> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ToBeReachedScreen(),
    );
  }
}
