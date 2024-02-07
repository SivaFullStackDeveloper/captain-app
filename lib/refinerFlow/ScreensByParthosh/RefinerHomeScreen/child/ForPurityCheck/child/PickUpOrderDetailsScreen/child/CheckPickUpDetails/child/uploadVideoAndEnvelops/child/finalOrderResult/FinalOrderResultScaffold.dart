import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/ForPurityCheck/child/PickUpOrderDetailsScreen/child/CheckPickUpDetails/child/uploadVideoAndEnvelops/child/finalOrderResult/view/FinalOrderResultScreen.dart';
import 'package:flutter/material.dart';







class FinalOrderResultsScaffold extends StatefulWidget {
  const FinalOrderResultsScaffold({Key? key}) : super(key: key);

  @override
  State<FinalOrderResultsScaffold> createState() => _FinalOrderResultsScaffoldState();
}

class _FinalOrderResultsScaffoldState extends State<FinalOrderResultsScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FinalOrderResultsScreen(),
    );
  }
}