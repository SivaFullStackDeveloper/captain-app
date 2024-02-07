import 'package:captain_app/verifierFlow/screens/ShallProceed/view/ShallProceedScreen.dart';
import 'package:flutter/material.dart';

import '../../../utils/SizeConfig.dart';

class ShallProceedScreenScaffold extends StatefulWidget {
  const ShallProceedScreenScaffold({Key? key}) : super(key: key);

  @override
  State<ShallProceedScreenScaffold> createState() =>
      _ShallProceedScreenScaffoldState();
}

class _ShallProceedScreenScaffoldState
    extends State<ShallProceedScreenScaffold> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ShallProceedScreen(),
    );
  }
}
