import 'package:captain_app/allUsersAuthentication/auth/otpVerification/view/OtpVerificationScreen.dart';
import 'package:captain_app/deliveryFlow/screens/canceledOrder/child/canceledOrderDetail/child/cancelOtpVerification/view/CancelOtpVerificationScreen.dart';
import 'package:captain_app/managerFlow/screen/deliveryOrders/child/tobeShipped/child/child/child/handoverOtpVerification/view/HandoverOtpVerificationScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../../constants/ConstantColor.dart';

class HandoverOtpVerificationScaffold extends StatelessWidget {
  const HandoverOtpVerificationScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: HandoverOtpVerificationScreen(),
    );
  }
}
