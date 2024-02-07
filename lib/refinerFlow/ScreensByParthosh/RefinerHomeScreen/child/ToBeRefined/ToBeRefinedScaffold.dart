import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/ToBeRefined/view/ToBeRefinedScreen.dart';
import 'package:flutter/Material.dart';

class ToBeRefinedScaffold extends StatefulWidget {
  const ToBeRefinedScaffold({Key? key}) : super(key: key);

  @override
  State<ToBeRefinedScaffold> createState() =>
      _ToBeRefinedScaffoldState();
}

class _ToBeRefinedScaffoldState extends State<ToBeRefinedScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ToBeRefinedScreen(),
    );
  }
}
