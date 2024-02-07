import 'package:captain_app/verifierFlow/screens/confirmation/view/VerifierConfirmationScreen.dart';
import 'package:flutter/material.dart';

import '../../../utils/SizeConfig.dart';

class ConfirmationScreenScaffold extends StatefulWidget {
  const ConfirmationScreenScaffold({super.key});

  @override
  State<ConfirmationScreenScaffold> createState() =>
      _ConfirmationScreenScaffoldState();
}

class _ConfirmationScreenScaffoldState
    extends State<ConfirmationScreenScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VerifierConfirmationScreen(),
    );
  }
}
