import 'package:captain_app/allUsersAuthentication/auth/otpVerification/view/OtpVerificationScreen.dart';
import 'package:captain_app/deliveryFlow/screens/canceledOrder/child/canceledOrderDetail/child/cancelOtpVerification/view/CancelOtpVerificationScreen.dart';
import 'package:captain_app/pickupFlow/pickupScreens/checkedOrder/child/checkedOrderDetail/child/checkedOtpVerification/view/CheckedOtpVerificationScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../constants/ConstantString.dart';
import '../../../../../../../utils/SizeConfig.dart';

class CheckedOtpVerificationScaffold extends StatelessWidget {
  const CheckedOtpVerificationScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: CheckedOtpVerificationScreen(),
    );
  }
}
