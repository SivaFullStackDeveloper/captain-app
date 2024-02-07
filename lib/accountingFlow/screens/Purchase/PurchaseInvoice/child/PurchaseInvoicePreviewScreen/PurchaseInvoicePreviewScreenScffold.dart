import 'package:captain_app/accountingFlow/screens/Purchase/PurchaseInvoice/child/PurchaseInvoicePreviewScreen/view/PurchaseInvoicePreviewScreen.dart';
import 'package:captain_app/accountingFlow/screens/sale/saleInvoice/child/SaleInvoicePreviewScreen/view/SaleInvoicePreviewScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../utils/SizeConfig.dart';



class PurchaseInvoicePreviewScreenScaffold extends StatelessWidget {
  const PurchaseInvoicePreviewScreenScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: PurchaseInvoicePreviewScreen()
    );
  }
}
