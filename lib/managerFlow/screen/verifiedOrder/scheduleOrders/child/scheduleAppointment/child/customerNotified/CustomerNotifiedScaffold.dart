import 'package:captain_app/managerFlow/screen/verifiedOrder/scheduleOrders/child/scheduleAppointment/child/customerNotified/view/CustomerNotified.dart';
import 'package:flutter/material.dart';

class CustomerNotifiedScaffold extends StatefulWidget {
  const CustomerNotifiedScaffold({Key? key}) : super(key: key);

  @override
  State<CustomerNotifiedScaffold> createState() =>
      _CustomerNotifiedScaffoldState();
}

class _CustomerNotifiedScaffoldState extends State<CustomerNotifiedScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomerNotified(),
    );
  }
}
