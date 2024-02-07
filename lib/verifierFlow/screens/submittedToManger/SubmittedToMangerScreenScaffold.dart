import 'package:captain_app/utils/SizeConfig.dart';
import 'package:captain_app/verifierFlow/screens/submittedToManger/view/SubmittedToMangerScreen.dart';
import 'package:flutter/material.dart';

class SubmittedToMangerScreenScaffold extends StatefulWidget {
  const SubmittedToMangerScreenScaffold({Key? key}) : super(key: key);

  @override
  State<SubmittedToMangerScreenScaffold> createState() =>
      _SubmittedToMangerScreenScaffoldState();
}

class _SubmittedToMangerScreenScaffoldState
    extends State<SubmittedToMangerScreenScaffold> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SubmittedToMangerScreen(),
    );
  }
}
