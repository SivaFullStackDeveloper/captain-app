import 'package:captain_app/managerFlow/screen/dashboard/view/ManagerDashboardScreen.dart';
import 'package:flutter/Material.dart';

class ManagerDashboardScaffold extends StatefulWidget {
  const ManagerDashboardScaffold({Key? key}) : super(key: key);

  @override
  State<ManagerDashboardScaffold> createState() =>
      _ManagerDashboardScaffoldState();
}

class _ManagerDashboardScaffoldState extends State<ManagerDashboardScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ManagerDashboardScreen(),
    );
  }
}
