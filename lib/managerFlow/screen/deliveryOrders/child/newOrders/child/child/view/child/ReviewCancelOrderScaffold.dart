import 'package:captain_app/managerFlow/screen/deliveryOrders/child/newOrders/child/child/view/child/view/ReviewCancelOrder.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';





class ReviewCancelOrderScaffold extends StatefulWidget {
  const ReviewCancelOrderScaffold({Key? key}) : super(key: key);

  @override
  State<ReviewCancelOrderScaffold> createState() => _ReviewCancelOrderScaffoldState();
}

class _ReviewCancelOrderScaffoldState extends State<ReviewCancelOrderScaffold> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: ReviewCancelOrder(),
    );
  }
}
