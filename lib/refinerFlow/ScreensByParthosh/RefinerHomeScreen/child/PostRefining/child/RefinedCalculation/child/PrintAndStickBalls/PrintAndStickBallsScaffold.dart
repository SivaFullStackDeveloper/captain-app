import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/PostRefining/child/RefinedCalculation/child/PrintAndStickBalls/view/PrintAndStickBallsScreen.dart';
import 'package:flutter/Material.dart';

class PrintAndStickBallsScaffold extends StatefulWidget {
  const PrintAndStickBallsScaffold({Key? key}) : super(key: key);

  @override
  State<PrintAndStickBallsScaffold> createState() =>
      _PrintAndStickBallsScaffoldState();
}

class _PrintAndStickBallsScaffoldState extends State<PrintAndStickBallsScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PrintAndStickBallsScreen(),
    );
  }
}
