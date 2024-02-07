import 'package:flutter/material.dart';

import 'ReviewOrderItems.dart';




class ReviewOrderItemsScaffold extends StatefulWidget {
  const ReviewOrderItemsScaffold({Key? key}) : super(key: key);

  @override
  State<ReviewOrderItemsScaffold> createState() => _ReviewOrderItemsScaffoldState();
}

class _ReviewOrderItemsScaffoldState extends State<ReviewOrderItemsScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReviewOrderItems(),
    );
  }
}
