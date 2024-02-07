import 'package:captain_app/verifierFlow/screens/printQR/view/PrintQR.dart';
import 'package:flutter/material.dart';




class PrintQRScaffold extends StatefulWidget {
  const PrintQRScaffold({Key? key}) : super(key: key);

  @override
  State<PrintQRScaffold> createState() => _PrintQRScaffoldState();
}

class _PrintQRScaffoldState extends State<PrintQRScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PrintQR(),
    );
  }
}
