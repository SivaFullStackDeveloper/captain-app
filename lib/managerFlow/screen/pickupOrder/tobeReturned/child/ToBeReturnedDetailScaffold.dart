import 'package:captain_app/managerFlow/screen/pickupOrder/tobeReturned/child/view/ToBeReturnedDetailScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants/ConstantColor.dart';


class ToBeReturnedDetailScaffold extends StatelessWidget {
  const ToBeReturnedDetailScaffold({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: ToBeReturnedDetailScreen(),
    );
  }
}
