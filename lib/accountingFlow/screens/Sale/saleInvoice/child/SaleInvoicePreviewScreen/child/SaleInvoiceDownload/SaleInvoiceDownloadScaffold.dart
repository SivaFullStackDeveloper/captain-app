import 'package:captain_app/accountingFlow/screens/Sale/saleInvoice/child/SaleInvoicePreviewScreen/child/SaleInvoiceDownload/view/SaleInvoiceDownloadScreen.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../utils/SizeConfig.dart';



class SaleInvoiceDownloadScaffold extends StatelessWidget {
  const SaleInvoiceDownloadScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: SaleInvoiceDownloadScreen(),
    );
  }
}
