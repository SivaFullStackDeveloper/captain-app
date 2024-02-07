import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/toManager/view/ToManagerScreen.dart';
import 'package:flutter/Material.dart';

class ToManagerScaffold extends StatefulWidget {
  const ToManagerScaffold({Key? key}) : super(key: key);

  @override
  State<ToManagerScaffold> createState() =>
      _ToManagerScaffoldState();
}

class _ToManagerScaffoldState extends State<ToManagerScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ToManagerScreen(),
    );
  }
}
