import 'package:captain_app/managerFlow/screen/verifiedOrder/assignToCaptain/child/verifyOtp/child/customerNotifiedAssigning/view/CustomerNotifiedAssigning.dart';
import 'package:flutter/material.dart';

class CustomerNotifiedAssigningScaffold extends StatefulWidget {
  const CustomerNotifiedAssigningScaffold({Key? key}) : super(key: key);

  @override
  State<CustomerNotifiedAssigningScaffold> createState() =>
      _CustomerNotifiedAssigningScaffoldState();
}

class _CustomerNotifiedAssigningScaffoldState
    extends State<CustomerNotifiedAssigningScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomerNotifiedAssigning(),
    );
  }
}
