import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/ToBeRefined/child/MeltingProcess/view/MeltingProcessScreen.dart';
import 'package:flutter/Material.dart';

class MeltingProcessScaffold extends StatefulWidget {
  const MeltingProcessScaffold({Key? key}) : super(key: key);

  @override
  State<MeltingProcessScaffold> createState() =>
      _MeltingProcessScaffoldState();
}

class _MeltingProcessScaffoldState extends State<MeltingProcessScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MeltingProcessScreen(),
    );
  }
}
