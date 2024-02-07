import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/PostRefining/child/RefinedCalculation/child/PrintAndStickBar/view/PrintAndStickBarScreen.dart';
import 'package:flutter/Material.dart';

class PrintAndStickBarScaffold extends StatefulWidget {
  const PrintAndStickBarScaffold({Key? key}) : super(key: key);

  @override
  State<PrintAndStickBarScaffold> createState() =>
      _PrintAndStickBarScaffoldState();
}

class _PrintAndStickBarScaffoldState extends State<PrintAndStickBarScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PrintAndStickBarScreen(),
    );
  }
}
