import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/ForPurityCheck/child/PickUpOrderDetailsScreen/view/PickUpOrderDetails.dart';
import 'package:flutter/material.dart';




class PickUpOrderDetailsScaffold extends StatefulWidget {
  const PickUpOrderDetailsScaffold({Key? key}) : super(key: key);

  @override
  State<PickUpOrderDetailsScaffold> createState() => _PickUpOrderDetailsScaffoldState();
}

class _PickUpOrderDetailsScaffoldState extends State<PickUpOrderDetailsScaffold> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: PickUpOrderDetails(),
    );
  }
}
