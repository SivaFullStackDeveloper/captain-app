import 'package:captain_app/managerFlow/screen/verifiedOrder/tobeAssigned/view/TobeAssignedScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../constants/ConstantColor.dart';


class TobeAssignedScaffold extends StatelessWidget {
  const TobeAssignedScaffold({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: TobeAssignedScreen(),
    );
  }
}
