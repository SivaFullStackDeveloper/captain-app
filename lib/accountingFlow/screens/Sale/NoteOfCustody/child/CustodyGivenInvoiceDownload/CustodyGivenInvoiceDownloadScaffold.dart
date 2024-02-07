import 'package:captain_app/accountingFlow/screens/Sale/NoteOfCustody/child/CustodyGivenInvoiceDownload/view/CustodyGivenInvoiceDownloadScreen.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../utils/SizeConfig.dart';



class CustodyGivenInvoiceDownloadScaffold extends StatelessWidget {
  const CustodyGivenInvoiceDownloadScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: CustodyGivenInvoiceDownloadScreen(),
    );
  }
}
