import 'package:flutter/material.dart';
import '../../commonWidgets/LanguageWidget.dart';



class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  _LanguageScreenState createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> with RouteAware {

  // static List languageNames = ["English",""];
  @override
  Widget build(BuildContext context) {
    //loginController.translate();
    return const Scaffold(
      body: SafeArea(
          child: LanguageWidget()),
    );
  }
}
