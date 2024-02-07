import 'package:captain_app/refinerFlow/screens/refinerReceivePickup/view/RefinerReceivePickupScreen.dart';
import 'package:flutter/material.dart';
import '../../../../utils/SizeConfig.dart';
import '../../../constants/ConstantColor.dart';

class RefinerReceivePickupScaffold extends StatelessWidget {
  const RefinerReceivePickupScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
        backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: RefinerReceivePickupScreen(),
    );
  }
}
