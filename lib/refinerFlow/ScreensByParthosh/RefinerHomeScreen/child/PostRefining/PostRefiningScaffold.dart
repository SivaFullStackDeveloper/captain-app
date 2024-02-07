import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/PostRefining/view/PostRefiningScreen.dart';
import 'package:flutter/Material.dart';

class PostRefiningScaffold extends StatefulWidget {
  const PostRefiningScaffold({Key? key}) : super(key: key);

  @override
  State<PostRefiningScaffold> createState() =>
      _PostRefiningScaffoldState();
}

class _PostRefiningScaffoldState extends State<PostRefiningScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PostRefiningScreen(),
    );
  }
}
