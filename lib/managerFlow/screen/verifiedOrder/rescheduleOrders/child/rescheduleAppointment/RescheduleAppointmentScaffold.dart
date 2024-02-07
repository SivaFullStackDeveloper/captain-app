import 'package:captain_app/managerFlow/screen/verifiedOrder/rescheduleOrders/child/rescheduleAppointment/view/RescheduleAppointment.dart';
import 'package:flutter/material.dart';

class RescheduleAppointmentScaffold extends StatefulWidget {
  const RescheduleAppointmentScaffold({Key? key}) : super(key: key);

  @override
  State<RescheduleAppointmentScaffold> createState() =>
      _RescheduleAppointmentScaffoldState();
}

class _RescheduleAppointmentScaffoldState
    extends State<RescheduleAppointmentScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RescheduleAppointment(),
    );
  }
}
