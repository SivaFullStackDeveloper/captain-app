import 'package:captain_app/accountingFlow/screens/Purchase/PurchaseInvoice/child/PurchaseInvoicePreviewScreen/child/PurchaseInvoiceDownload/view/PurchaseInvoiceDownloadScreen.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../utils/SizeConfig.dart';



class PurchaseInvoiceDownloadScaffold extends StatelessWidget {
  const PurchaseInvoiceDownloadScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: PurchaseInvoiceDownloadScreen(),
    );
  }
}
