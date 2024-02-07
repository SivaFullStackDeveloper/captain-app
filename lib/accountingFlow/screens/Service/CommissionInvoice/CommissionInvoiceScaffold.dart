import 'package:captain_app/accountingFlow/screens/Service/CommissionInvoice/view/CommissionInvoiceScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../utils/SizeConfig.dart';


class CommissionInvoiceScaffold extends StatelessWidget {
  const CommissionInvoiceScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: CommissionInvoiceScreen(),
    );
  }
}
