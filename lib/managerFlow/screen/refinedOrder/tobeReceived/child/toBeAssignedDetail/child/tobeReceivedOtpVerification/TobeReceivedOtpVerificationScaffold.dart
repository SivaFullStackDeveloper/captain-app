import 'package:captain_app/allUsersAuthentication/auth/otpVerification/view/OtpVerificationScreen.dart';
import 'package:captain_app/deliveryFlow/screens/canceledOrder/child/canceledOrderDetail/child/cancelOtpVerification/view/CancelOtpVerificationScreen.dart';
import 'package:captain_app/managerFlow/screen/refinedOrder/tobeReceived/child/toBeAssignedDetail/child/tobeReceivedOtpVerification/view/TobeReceivedOtpVerificationScreen.dart';
import 'package:captain_app/managerFlow/screen/verifiedOrder/tobeAssigned/child/toBeAssignedDetail/child/toBeAssignedOtpVerification/view/ToBeAssignedOtpVerificationScreen.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../constants/ConstantString.dart';
import '../../../../../../../../utils/SizeConfig.dart';

class TobeReceivedOtpVerificationScaffold extends StatelessWidget {
  const TobeReceivedOtpVerificationScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: TobeReceivedOtpVerificationScreen(),
    );
  }
}
