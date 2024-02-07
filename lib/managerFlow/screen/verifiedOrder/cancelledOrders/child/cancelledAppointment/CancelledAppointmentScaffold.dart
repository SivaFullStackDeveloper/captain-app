import 'package:captain_app/managerFlow/screen/verifiedOrder/cancelledOrders/child/cancelledAppointment/view/CancelledAppointment.dart';
import 'package:flutter/material.dart';

class CancelledAppointmentScaffold extends StatefulWidget {
  const CancelledAppointmentScaffold({Key? key}) : super(key: key);

  @override
  State<CancelledAppointmentScaffold> createState() =>
      _CancelledAppointmentScaffoldState();
}

class _CancelledAppointmentScaffoldState
    extends State<CancelledAppointmentScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CancelledAppointment(),
    );
  }
}
