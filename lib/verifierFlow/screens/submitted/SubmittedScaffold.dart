import 'package:captain_app/verifierFlow/screens/submitted/view/SubmittedScreen.dart';
import 'package:flutter/material.dart';




class SubmittedScaffold extends StatefulWidget {
  const SubmittedScaffold({Key? key}) : super(key: key);

  @override
  State<SubmittedScaffold> createState() => _SubmittedScaffoldState();
}

class _SubmittedScaffoldState extends State<SubmittedScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SubmittedScreen(),
    );
  }
}
