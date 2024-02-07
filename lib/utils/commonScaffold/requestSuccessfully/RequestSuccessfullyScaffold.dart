import 'package:captain_app/utils/commonScaffold/requestSuccessfully/view/RequestSuccessfullyScreen.dart';
import 'package:flutter/material.dart';
import '../../../../../../../constants/ConstantColor.dart';


class RequestSuccessfullyScaffold extends StatelessWidget {
  const RequestSuccessfullyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: RequestSuccessfullyScreen(),
    );
  }
}
