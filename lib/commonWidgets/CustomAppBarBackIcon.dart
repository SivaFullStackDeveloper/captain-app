// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../constants/ConstantAssets.dart';
import '../../../constants/ConstantColor.dart';
import '../../../res/Dimens.dart';
import '../../../utils/SizeConfig.dart';

class CustomAppBarBackIcon extends StatefulWidget {
  const CustomAppBarBackIcon({super.key});

  @override
  State<CustomAppBarBackIcon> createState() => _CustomAppBarBackIconState();
}

class _CustomAppBarBackIconState extends State<CustomAppBarBackIcon> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(
              color: ConstantColor.greyColor,
              width: SizeConfig.defaultSize * Dimens.sizePoint1,
            ),
            borderRadius:
                BorderRadius.all(Radius.circular(Dimens.circularRadius))),
        child: Padding(
          padding: EdgeInsets.only(
              top: SizeConfig.defaultSize * Dimens.size1,
              right: SizeConfig.defaultSize * Dimens.size2,
              bottom: SizeConfig.defaultSize * Dimens.size1,
              left: SizeConfig.defaultSize * Dimens.size2),
          child: SvgPicture.asset(
            ConstantAssets.backArrow,
            height: SizeConfig.defaultSize * Dimens.size2,
            width: SizeConfig.defaultSize * Dimens.size2,
          ),
        ),
      ),
    );
  }
}
