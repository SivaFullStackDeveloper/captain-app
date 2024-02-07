import 'package:captain_app/accountingFlow/screens/Service/AdvanceInvoice/child/AdvanceInvoiceDownload/view/AdvanceInvoiceDownloadScreen.dart';
import 'package:captain_app/accountingFlow/screens/Service/AdvanceInvoice/view/AdvanceInvoiceScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../utils/SizeConfig.dart';



class AdvanceInvoiceDownloadScaffold extends StatelessWidget {
  const AdvanceInvoiceDownloadScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: AdvanceInvoiceDownloadScreen(),
    );
  }
}
