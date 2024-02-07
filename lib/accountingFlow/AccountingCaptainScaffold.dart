import 'package:captain_app/accountingFlow/screens/AccountingCaptainScreen.dart';
import 'package:captain_app/accountingFlow/screens/sale/saleInvoice/view/SaleInvoiceScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../utils/SizeConfig.dart';


class AccountingCaptainScaffold extends StatelessWidget {
  const AccountingCaptainScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: AccountingCaptainScreen(),
    );
  }
}
