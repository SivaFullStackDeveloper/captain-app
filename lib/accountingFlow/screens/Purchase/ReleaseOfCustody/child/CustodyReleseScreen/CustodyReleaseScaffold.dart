import 'package:captain_app/accountingFlow/screens/Purchase/ReleaseOfCustody/child/CustodyReleseScreen/view/CustodyReleaseScreen.dart';

import '../../../../../../utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../constants/ConstantColor.dart';


class CustodyReleaseScaffold extends StatelessWidget {
  CustodyReleaseScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: CustodyReleaseScreen(name: "Yuvaraj Pojaray"),
    );
  }
}
