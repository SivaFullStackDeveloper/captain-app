import 'package:captain_app/managerFlow/screen/verifiedOrder/scheduleOrders/child/scheduleAppointment/view/ScheduleAppointment.dart';
import 'package:flutter/material.dart';

class ScheduleAppointmentScaffold extends StatefulWidget {
  const ScheduleAppointmentScaffold({Key? key}) : super(key: key);

  @override
  State<ScheduleAppointmentScaffold> createState() =>
      _ScheduleAppointmentScaffoldState();
}

class _ScheduleAppointmentScaffoldState
    extends State<ScheduleAppointmentScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScheduleAppointment(),
    );
  }
}
