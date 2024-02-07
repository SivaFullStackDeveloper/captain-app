import 'package:captain_app/deliveryFlow/screens/splash/view/SplashScreen.dart';
import 'package:flutter/material.dart';
import '../../../constants/ConstantColor.dart';
import '../../../utils/SizeConfig.dart';


class SplashScaffold extends StatelessWidget {
  const SplashScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: ConstantColor.whiteScreenBackgroundColor,
      body: SplashScreen(),
    );
  }
}
