import 'package:captain_app/managerFlow/screen/verifiedOrder/putInTheBox/view/PutInTheBox.dart';
import 'package:flutter/material.dart';

class PutInTheBoxScaffold extends StatefulWidget {
  const PutInTheBoxScaffold({Key? key}) : super(key: key);

  @override
  State<PutInTheBoxScaffold> createState() => _PutInTheBoxScaffoldState();
}

class _PutInTheBoxScaffoldState extends State<PutInTheBoxScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PutInTheBox(),
    );
  }
}
