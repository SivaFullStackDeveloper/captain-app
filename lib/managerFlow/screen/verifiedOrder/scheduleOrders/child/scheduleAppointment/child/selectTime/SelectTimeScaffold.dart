import 'package:captain_app/managerFlow/screen/verifiedOrder/scheduleOrders/child/scheduleAppointment/child/selectTime/view/SelectTime.dart';
import 'package:flutter/material.dart';

class SelectTimeScaffold extends StatefulWidget {
  const SelectTimeScaffold({Key? key}) : super(key: key);

  @override
  State<SelectTimeScaffold> createState() => _SelectTimeScaffoldState();
}

class _SelectTimeScaffoldState extends State<SelectTimeScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SelectTime(),
    );
  }
}
