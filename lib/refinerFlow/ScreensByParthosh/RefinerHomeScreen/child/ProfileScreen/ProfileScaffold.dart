import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/ProfileScreen/view/ProfileScreen.dart';
import 'package:flutter/Material.dart';

class ProfileScaffold extends StatefulWidget {
  const ProfileScaffold({Key? key}) : super(key: key);

  @override
  State<ProfileScaffold> createState() =>
      _ProfileScaffoldState();
}

class _ProfileScaffoldState extends State<ProfileScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfileScreen(),
    );
  }
}
