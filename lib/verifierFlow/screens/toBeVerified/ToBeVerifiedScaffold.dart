import 'package:captain_app/verifierFlow/screens/toBeVerified/view/ToBeVerified.dart';
import 'package:flutter/material.dart';




class ToBeVerifiedScaffold extends StatefulWidget {
  const ToBeVerifiedScaffold({Key? key}) : super(key: key);

  @override
  State<ToBeVerifiedScaffold> createState() => _ToBeVerifiedScaffoldState();
}

class _ToBeVerifiedScaffoldState extends State<ToBeVerifiedScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ToBeVerified(),
    );
  }
}
