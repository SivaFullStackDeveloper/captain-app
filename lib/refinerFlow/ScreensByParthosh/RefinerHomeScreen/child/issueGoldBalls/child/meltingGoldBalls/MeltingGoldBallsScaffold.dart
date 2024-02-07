import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/issueGoldBalls/child/meltingGoldBalls/view/MeltingGoldBallsScreen.dart';
import 'package:flutter/Material.dart';

class MeltingGoldBallsScaffold extends StatefulWidget {
  const MeltingGoldBallsScaffold({Key? key}) : super(key: key);

  @override
  State<MeltingGoldBallsScaffold> createState() =>
      _MeltingGoldBallsScaffoldState();
}

class _MeltingGoldBallsScaffoldState extends State<MeltingGoldBallsScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MeltingGoldBallsScreen(),
    );
  }
}
