// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'ToBeReachedMapScreen.dart';

class ToBeReachedMapScreenScaffold extends StatefulWidget {
  const ToBeReachedMapScreenScaffold({super.key});

  @override
  State<ToBeReachedMapScreenScaffold> createState() =>
      _ToBeReachedMapScreenScaffoldState();
}

class _ToBeReachedMapScreenScaffoldState
    extends State<ToBeReachedMapScreenScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ToBeReachedMapScreen(),
    );
  }
}
