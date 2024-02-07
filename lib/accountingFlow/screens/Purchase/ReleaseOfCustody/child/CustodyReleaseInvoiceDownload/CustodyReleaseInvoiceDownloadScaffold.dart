import 'package:captain_app/accountingFlow/screens/Purchase/ReleaseOfCustody/child/CustodyReleaseInvoiceDownload/view/CustodyreleaseInvoiceDownloadScreen.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../utils/SizeConfig.dart';



class CustodyReleaseInvoiceDownloadScaffold extends StatelessWidget {
  const CustodyReleaseInvoiceDownloadScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: CustodyReleaseInvoiceDownloadScreen(),
    );
  }
}
