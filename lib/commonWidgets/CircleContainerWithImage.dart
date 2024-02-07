import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/ConstantString.dart';
import '../../constants/ConstantAssets.dart';
import '../../constants/ConstantColor.dart';
import '../../constants/ConstantFonts.dart';
import '../../res/Dimens.dart';
import '../../utils/SizeConfig.dart';

class CircleContainerWithImage extends StatelessWidget {
  String image;

  CircleContainerWithImage({required this.image}) : super();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: SizeConfig.defaultSize * Dimens.size6,
        height: SizeConfig.defaultSize * Dimens.size6,
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: ConstantColor.whiteColor),

        ///-------------------- Icons inside circle -----------------
        child: SvgPicture.asset(image,
            height: SizeConfig.defaultSize * Dimens.size4,
            width: SizeConfig.defaultSize * Dimens.size4,
            fit: BoxFit.scaleDown),
      ),
    ]);
  }
}

class CircleContainerWithImage2 extends StatelessWidget {
  String image;

  CircleContainerWithImage2({required this.image}) : super();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: SizeConfig.defaultSize * Dimens.size2,
        height: SizeConfig.defaultSize * Dimens.size2,
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: ConstantColor.whiteColor),

        ///-------------------- Icons inside circle -----------------
        child: SvgPicture.asset(image,
            height: SizeConfig.defaultSize * Dimens.size1,
            width: SizeConfig.defaultSize * Dimens.size1,
            fit: BoxFit.scaleDown),
      ),
    ]);
  }
}
