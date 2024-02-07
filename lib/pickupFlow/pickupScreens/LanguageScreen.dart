import 'package:flutter/material.dart';
import '../../commonWidgets/LanguageWidget.dart';



class LanguagePickUpScreen extends StatefulWidget {
  const LanguagePickUpScreen({super.key});

  @override
  _LanguagePickUpScreenState createState() => _LanguagePickUpScreenState();
}

class _LanguagePickUpScreenState extends State<LanguagePickUpScreen> with RouteAware {

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
