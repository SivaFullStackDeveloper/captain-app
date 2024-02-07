import 'package:captain_app/accountingFlow/screens/Service/CommissionInvoice/child/CommissionInvoiceDownload/view/CommissionInvoiceDownloadScreen.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../utils/SizeConfig.dart';



class CommissionInvoiceDownloadScaffold extends StatelessWidget {
  const CommissionInvoiceDownloadScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: CommissionInvoiceDownloadScreen(),
    );
  }
}
