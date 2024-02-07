// ignore_for_file: prefer_const_constructors
import 'package:captain_app/verifierFlow/screens/WeStartedScreen/view/VeriferWeStartedScreen.dart';
import 'package:flutter/material.dart';
import '../../../utils/SizeConfig.dart';

class VeriferWeStartedScreenScaffold extends StatefulWidget {
  const VeriferWeStartedScreenScaffold({super.key});

  @override
  State<VeriferWeStartedScreenScaffold> createState() =>
      _VeriferWeStartedScreenScaffoldState();
}

class _VeriferWeStartedScreenScaffoldState
    extends State<VeriferWeStartedScreenScaffold> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: VeriferWeStartedScreen(),
    );
  }
}
