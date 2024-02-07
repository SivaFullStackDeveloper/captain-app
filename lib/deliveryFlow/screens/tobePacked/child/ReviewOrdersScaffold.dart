
import 'package:captain_app/deliveryFlow/screens/tobePacked/child/view/ReviewOrdersScreen.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/SizeConfig.dart';
import '../../../../constants/ConstantColor.dart';


class ReviewOrdersScaffold extends StatelessWidget {
  const ReviewOrdersScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: ReviewOrdersScreen(),
    );
  }
}
