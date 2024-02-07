import 'package:captain_app/accountingFlow/screens/Sale/NoteOfCustody/view/NoteOfCustodyScreen.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../utils/SizeConfig.dart';


class NoteOfCustodyScaffold extends StatelessWidget {
  const NoteOfCustodyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: NoteOfCustodyScreen(),
    );
  }
}
