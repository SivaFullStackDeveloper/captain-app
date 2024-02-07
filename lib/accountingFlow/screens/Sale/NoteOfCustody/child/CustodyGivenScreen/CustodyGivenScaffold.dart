import 'package:captain_app/accountingFlow/screens/Sale/NoteOfCustody/child/CustodyGivenScreen/view/CustodyGivenScreen.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../utils/SizeConfig.dart';



class CustodyGivenScaffold extends StatelessWidget {
  CustodyGivenScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: CustodyGivenScreen(name: "Yuvaraj Pojaray"),
    );
  }
}
