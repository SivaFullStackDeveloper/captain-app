import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/issueGoldBalls/view/IssueGoldBallsScreen.dart';
import 'package:flutter/Material.dart';

class IssueGoldBallsScaffold extends StatefulWidget {
  const IssueGoldBallsScaffold({Key? key}) : super(key: key);

  @override
  State<IssueGoldBallsScaffold> createState() =>
      _IssueGoldBallsScaffoldState();
}

class _IssueGoldBallsScaffoldState extends State<IssueGoldBallsScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: IssueGoldBallsScreen(),
    );
  }
}
