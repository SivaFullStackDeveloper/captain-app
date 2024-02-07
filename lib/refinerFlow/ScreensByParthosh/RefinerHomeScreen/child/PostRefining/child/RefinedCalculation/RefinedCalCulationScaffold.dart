import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/PostRefining/child/RefinedCalculation/view/RefinedCalculationScreen.dart';
import 'package:flutter/Material.dart';

class RefinedCalculationScaffold extends StatefulWidget {
  const RefinedCalculationScaffold({Key? key}) : super(key: key);

  @override
  State<RefinedCalculationScaffold> createState() =>
      _RefinedCalculationScaffoldState();
}

class _RefinedCalculationScaffoldState extends State<RefinedCalculationScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: RefinedCalculationScreen(),
    );
  }
}
