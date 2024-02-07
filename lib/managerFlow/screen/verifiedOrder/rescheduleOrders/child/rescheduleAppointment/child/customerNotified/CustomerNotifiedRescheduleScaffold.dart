import 'package:captain_app/managerFlow/screen/verifiedOrder/rescheduleOrders/child/rescheduleAppointment/child/customerNotified/view/CustomerNotifiedReschedule.dart';
import 'package:flutter/material.dart';

class CustomerNotifiedRescheduleScaffold extends StatefulWidget {
  const CustomerNotifiedRescheduleScaffold({Key? key}) : super(key: key);

  @override
  State<CustomerNotifiedRescheduleScaffold> createState() =>
      _CustomerNotifiedRescheduleScaffoldState();
}

class _CustomerNotifiedRescheduleScaffoldState
    extends State<CustomerNotifiedRescheduleScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomerNotifiedReschedule(),
    );
  }
}
