import 'package:flutter/material.dart';

import '../../../../../../deliveryFlow/screens/tobePacked/child/view/ReviewOrdersScreen.dart';




class ReviewOrdersScreenScaffold extends StatefulWidget {
  const ReviewOrdersScreenScaffold({Key? key}) : super(key: key);

  @override
  State<ReviewOrdersScreenScaffold> createState() => _ReviewOrdersScreenScaffoldState();
}

class _ReviewOrdersScreenScaffoldState extends State<ReviewOrdersScreenScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ReviewOrdersScreen(),
    );
  }
}
