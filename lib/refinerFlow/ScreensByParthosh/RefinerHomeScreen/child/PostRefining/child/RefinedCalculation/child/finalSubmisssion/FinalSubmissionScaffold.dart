import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/PostRefining/child/RefinedCalculation/child/finalSubmisssion/view/FinalSubmissionScreen.dart';
import 'package:flutter/Material.dart';

class FinalSubmissionScaffold extends StatefulWidget {
  const FinalSubmissionScaffold({Key? key}) : super(key: key);

  @override
  State<FinalSubmissionScaffold> createState() =>
      _FinalSubmissionScaffoldState();
}

class _FinalSubmissionScaffoldState extends State<FinalSubmissionScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FinalSubmissionScreen(),
    );
  }
}
