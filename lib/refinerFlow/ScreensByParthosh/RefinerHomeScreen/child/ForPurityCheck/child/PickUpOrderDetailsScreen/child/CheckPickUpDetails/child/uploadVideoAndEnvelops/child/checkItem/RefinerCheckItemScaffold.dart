import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/ForPurityCheck/child/PickUpOrderDetailsScreen/child/CheckPickUpDetails/child/uploadVideoAndEnvelops/child/checkItem/view/RefinerCheckItem.dart';
import 'package:flutter/material.dart';




class RefinerCheckItemScaffold extends StatefulWidget {
  const RefinerCheckItemScaffold({Key? key}) : super(key: key);

  @override
  State<RefinerCheckItemScaffold> createState() => _RefinerCheckItemScaffoldState();
}

class _RefinerCheckItemScaffoldState extends State<RefinerCheckItemScaffold> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: RefinerCheckItem(),
    );
  }
}
