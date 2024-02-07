import 'package:captain_app/accountingFlow/screens/Service/ServiceInvoice/child/ServiceInvoiceDownload/view/ServiceInvoiceDownloadScreen.dart';
import 'package:flutter/material.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../utils/SizeConfig.dart';



class ServiceInvoiceDownloadScaffold extends StatelessWidget {
  const ServiceInvoiceDownloadScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: ServiceInvoiceDownloadScreen(),
    );
  }
}
