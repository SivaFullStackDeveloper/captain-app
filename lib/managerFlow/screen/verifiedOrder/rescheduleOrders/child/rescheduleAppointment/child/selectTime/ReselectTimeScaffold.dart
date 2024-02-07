import 'package:captain_app/managerFlow/screen/verifiedOrder/rescheduleOrders/child/rescheduleAppointment/child/selectTime/view/ReselectTime.dart';
import 'package:flutter/material.dart';

class ReselectTimeScaffold extends StatefulWidget {
  const ReselectTimeScaffold({Key? key}) : super(key: key);

  @override
  State<ReselectTimeScaffold> createState() => _ReselectTimeScaffoldState();
}

class _ReselectTimeScaffoldState extends State<ReselectTimeScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReselectTime(),
    );
  }
}
