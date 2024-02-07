import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/ForPurityCheck/view/ForPurityCheckScreen.dart';
import 'package:flutter/Material.dart';

class ForPurityCheckScaffold extends StatefulWidget {
  const ForPurityCheckScaffold({Key? key}) : super(key: key);

  @override
  State<ForPurityCheckScaffold> createState() =>
      _ForPurityCheckScaffoldState();
}

class _ForPurityCheckScaffoldState extends State<ForPurityCheckScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ForPurityCheckScreen(),
    );
  }
}
