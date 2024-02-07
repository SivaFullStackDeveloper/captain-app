import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/ToBeRefined/child/MeltingProcess/view/MeltingProcessScreen.dart';
import 'package:flutter/Material.dart';

import 'MeltingGoldProcessScreen.dart';

class MeltingGoldProcessScaffold extends StatefulWidget {
  const MeltingGoldProcessScaffold({Key? key}) : super(key: key);

  @override
  State<MeltingGoldProcessScaffold> createState() =>
      _MeltingGoldProcessScaffoldState();
}

class _MeltingGoldProcessScaffoldState extends State<MeltingGoldProcessScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MeltingGoldProcessScreen(),
    );
  }
}
