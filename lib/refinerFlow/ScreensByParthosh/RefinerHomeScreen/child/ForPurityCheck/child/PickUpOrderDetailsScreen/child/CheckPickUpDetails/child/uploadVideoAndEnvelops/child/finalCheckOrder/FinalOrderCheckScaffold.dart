import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/ForPurityCheck/child/PickUpOrderDetailsScreen/child/CheckPickUpDetails/child/uploadVideoAndEnvelops/child/finalCheckOrder/view/FinalOrderCheckScreen.dart';
import 'package:flutter/material.dart';




class FinalOrderCheckScaffold extends StatefulWidget {
  const FinalOrderCheckScaffold({Key? key}) : super(key: key);

  @override
  State<FinalOrderCheckScaffold> createState() => _FinalOrderCheckScaffoldState();
}

class _FinalOrderCheckScaffoldState extends State<FinalOrderCheckScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:FinalOrderCheckScreen(),
    );
  }
}