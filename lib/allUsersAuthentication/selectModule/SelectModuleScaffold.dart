import 'package:captain_app/allUsersAuthentication/mpin/registerNewMPin/view/RegisterNewMPinScreen.dart';
import 'package:captain_app/allUsersAuthentication/selectModule/view/SelectModuleScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../constants/ConstantColor.dart';


class SelectModuleScaffold extends StatelessWidget {
  const SelectModuleScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: SelectModuleScreen(),
    );
  }
}
