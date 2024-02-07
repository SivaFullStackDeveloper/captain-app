import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';

import 'VerificationCompletedDetailsScreen.dart';

class VerificationCompletedDetailsScreenScaffold extends StatefulWidget {
  const VerificationCompletedDetailsScreenScaffold({Key? key})
      : super(key: key);

  @override
  State<VerificationCompletedDetailsScreenScaffold> createState() =>
      _VerificationCompletedDetailsScreenScaffoldState();
}

class _VerificationCompletedDetailsScreenScaffoldState
    extends State<VerificationCompletedDetailsScreenScaffold> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: VerificationCompletedDetailsScreen(),
    );
  }
}
