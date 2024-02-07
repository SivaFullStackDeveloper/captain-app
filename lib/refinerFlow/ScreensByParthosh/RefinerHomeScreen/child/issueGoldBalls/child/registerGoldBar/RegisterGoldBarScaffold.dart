import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/issueGoldBalls/child/registerGoldBar/view/RegisterGoldBarScreen.dart';
import 'package:flutter/Material.dart';

class RegisterGoldBarScaffold extends StatefulWidget {
  const RegisterGoldBarScaffold({Key? key}) : super(key: key);

  @override
  State<RegisterGoldBarScaffold> createState() =>
      _RegisterGoldBarScaffoldState();
}

class _RegisterGoldBarScaffoldState extends State<RegisterGoldBarScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RegisterGoldBarScreen(),
    );
  }
}
