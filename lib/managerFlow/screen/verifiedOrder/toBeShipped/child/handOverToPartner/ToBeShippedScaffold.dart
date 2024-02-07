import 'package:captain_app/managerFlow/screen/verifiedOrder/toBeShipped/child/handOverToPartner/view/ToBeShipped.dart';
import 'package:flutter/material.dart';

class ToBeShippedScaffold extends StatefulWidget {
  const ToBeShippedScaffold({Key? key}) : super(key: key);

  @override
  State<ToBeShippedScaffold> createState() => _ToBeShippedScaffoldState();
}

class _ToBeShippedScaffoldState extends State<ToBeShippedScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ToBeShipped(),
    );
  }
}
