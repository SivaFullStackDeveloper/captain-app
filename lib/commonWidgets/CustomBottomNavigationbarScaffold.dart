import 'package:flutter/material.dart';

import 'CustomBottomNavigationBar.dart';

class CustomBottomNavigationBarScaffold extends StatefulWidget {
  const CustomBottomNavigationBarScaffold({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBarScaffold> createState() =>
      _CustomBottomNavigationBarScaffoldState();
}

class _CustomBottomNavigationBarScaffoldState
    extends State<CustomBottomNavigationBarScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBottomNavigationBar(),
    );
  }
}
