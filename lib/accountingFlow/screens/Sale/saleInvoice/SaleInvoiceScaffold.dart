import 'package:captain_app/accountingFlow/screens/sale/saleInvoice/view/SaleInvoiceScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../utils/SizeConfig.dart';


class SaleInvoiceScaffold extends StatelessWidget {
  const SaleInvoiceScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: const SaleInvoiceScreen(),
    );
  }
}
