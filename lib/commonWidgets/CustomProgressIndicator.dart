import '../../res/Dimens.dart';
import '../../utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_progress_indicator/liquid_progress_indicator.dart';
import '../constants/ConstantString.dart';
import '../../constants/ConstantAssets.dart';
import '../../constants/ConstantColor.dart';
import '../../constants/ConstantFonts.dart';

class CustomProgressIndicator extends StatelessWidget {
  const CustomProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      color: ConstantColor.lightYellowColor,
      height: SizeConfig.defaultSize * Dimens.size10,
      width: SizeConfig.defaultSize * Dimens.size10,
      child: LiquidCircularProgressIndicator(
        value: 0.30,
        // Defaults to 0.5.
        valueColor: AlwaysStoppedAnimation(ConstantColor.secondaryColor),
        // Defaults to the current Theme's accentColor.
        backgroundColor: ConstantColor.lightYellowColor,
        // Defaults to the current Theme's backgroundColor.
        borderColor: ConstantColor.secondaryColor,
        borderWidth: 1.0,
        direction: Axis.vertical,
        // The direction the liquid moves (Axis.vertical = bottom to top, Axis.horizontal = left to right). Defaults to Axis.vertical.
        center: Text(
          ConstantString.pleaseWait.tr,
          style: TextStyle(
            fontFamily: ConstantFonts.poppinsRegular,
            fontSize:
                SizeConfig.defaultSize * Dimens.size1Point3,
            color: ConstantColor.secondaryColor,
          ),
        ),
      ),
    ));
  }
}
