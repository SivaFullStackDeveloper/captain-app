import 'package:captain_app/verifierFlow/screens/finalResults/view/FinalResults.dart';
import 'package:flutter/material.dart';




class FinalResultsScaffold extends StatefulWidget {
  const FinalResultsScaffold({Key? key}) : super(key: key);

  @override
  State<FinalResultsScaffold> createState() => _FinalResultsScaffoldState();
}

class _FinalResultsScaffoldState extends State<FinalResultsScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FinalResults(),
    );
  }
}
