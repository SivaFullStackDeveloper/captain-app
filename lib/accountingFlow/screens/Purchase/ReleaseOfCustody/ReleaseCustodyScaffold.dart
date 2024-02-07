import 'package:captain_app/accountingFlow/screens/Purchase/ReleaseOfCustody/view/ReleaseOfCustodyScreen.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../utils/SizeConfig.dart';


class ReleaseOfCustodyScaffold extends StatelessWidget {
  const ReleaseOfCustodyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: ReleaseOfCustodyScreen(),
    );
  }
}
