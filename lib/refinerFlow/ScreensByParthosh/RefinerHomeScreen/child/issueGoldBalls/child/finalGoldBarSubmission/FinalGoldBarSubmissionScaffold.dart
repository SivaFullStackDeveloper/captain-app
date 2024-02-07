import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/issueGoldBalls/child/finalGoldBarSubmission/view/FinalGoldBarSubmissionScreen.dart';
import 'package:flutter/Material.dart';

class FinalGoldBarSubmissionScaffold extends StatefulWidget {
  const FinalGoldBarSubmissionScaffold({Key? key}) : super(key: key);

  @override
  State<FinalGoldBarSubmissionScaffold> createState() =>
      _FinalGoldBarSubmissionScaffoldState();
}

class _FinalGoldBarSubmissionScaffoldState extends State<FinalGoldBarSubmissionScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FinalGoldBarSubmissionScreen(),
    );
  }
}
