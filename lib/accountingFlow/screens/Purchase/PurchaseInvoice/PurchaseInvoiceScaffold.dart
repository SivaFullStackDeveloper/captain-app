import 'package:captain_app/accountingFlow/screens/Purchase/PurchaseInvoice/view/PurchaseInvoiceScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../utils/SizeConfig.dart';


class PurchaseInvoiceScaffold extends StatelessWidget {
  const PurchaseInvoiceScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: PurchaseInvoiceScreen(),
    );
  }
}
