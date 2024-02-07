import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/ForPurityCheck/child/PickUpOrderDetailsScreen/child/CheckPickUpDetails/view/CheckPickUpDetails.dart';
import 'package:flutter/material.dart';



class CheckPickUpDetailsScaffold extends StatefulWidget {
  const CheckPickUpDetailsScaffold({Key? key}) : super(key: key);

  @override
  State<CheckPickUpDetailsScaffold> createState() => _CheckPickUpDetailsScaffoldState();
}

class _CheckPickUpDetailsScaffoldState extends State<CheckPickUpDetailsScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CheckPickUpDetails(),
    );
  }
}
