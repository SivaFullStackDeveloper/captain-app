import 'package:captain_app/managerFlow/screen/verifiedOrder/scheduleOrders/view/CustomerRequests.dart';
import 'package:flutter/material.dart';

class CustomerRequestsScaffold extends StatefulWidget {
  const CustomerRequestsScaffold({Key? key}) : super(key: key);

  @override
  State<CustomerRequestsScaffold> createState() =>
      _CustomerRequestsScaffoldState();
}

class _CustomerRequestsScaffoldState extends State<CustomerRequestsScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomerRequests(),
    );
  }
}
