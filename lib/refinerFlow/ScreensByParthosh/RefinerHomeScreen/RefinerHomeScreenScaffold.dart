import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/view/RefinerHomeScreen.dart';
import 'package:flutter/Material.dart';

class RefinerHomeScreenScaffold extends StatefulWidget {
  const RefinerHomeScreenScaffold({Key? key}) : super(key: key);

  @override
  State<RefinerHomeScreenScaffold> createState() =>
      _RefinerHomeScreenScaffoldState();
}

class _RefinerHomeScreenScaffoldState extends State<RefinerHomeScreenScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RefinerHomeScreen(),
    );
  }
}
