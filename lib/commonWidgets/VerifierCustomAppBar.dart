// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:captain_app/verifierFlow/screens/VerifyItem/VerifyItemScreenScaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../constants/ConstantAssets.dart';
import '../../../constants/ConstantColor.dart';
import '../../../constants/ConstantFonts.dart';
import '../../../res/Dimens.dart';
import '../../../utils/SizeConfig.dart';
import 'ButtonWidget.dart';

class VerifierCustomAppBar extends StatefulWidget {
  var title;
  VerifierCustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  State<VerifierCustomAppBar> createState() => _VerifierCustomAppBarState();
}

class _VerifierCustomAppBarState extends State<VerifierCustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig.defaultSize * Dimens.size1Point8,
        left: SizeConfig.defaultSize * Dimens.size2,
        right: SizeConfig.defaultSize * Dimens.size2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () => Get.back(),
                child: Container(
                  width: SizeConfig.defaultSize * Dimens.size5,
                  height: SizeConfig.defaultSize * Dimens.size5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      SizeConfig.defaultSize * Dimens.size1Point1,
                    ),
                    border: Border.all(
                      color: ConstantColor
                          .greyColor, //                   <--- border color
                      width: SizeConfig.defaultSize * Dimens.sizePoint2,
                    ),
                  ),
                  child: SvgPicture.asset(ConstantAssets.backArrow,
                      fit: BoxFit.scaleDown),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.defaultSize * Dimens.size1,
                  right: SizeConfig.defaultSize * Dimens.size2,
                ),
                child: Text(
                  widget.title,
                  style: TextStyle(
                      color: ConstantColor.secondaryColor,
                      fontFamily: ConstantFonts.poppinsBold,
                      fontSize: SizeConfig.defaultSize * Dimens.size1Point8),
                ),
              ),
            ],
          ),
          Row(
            children: [
              SvgPicture.asset(ConstantAssets.googleTranslate,
                  fit: BoxFit.scaleDown),
              //Image.asset(ConstantAssets.startupIndia.toString(),height: 30,),
            ],
          ),
        ],
      ),
    );
  }
}

class VerifierCustomAppBar2 extends StatefulWidget {
  var title;
  VerifierCustomAppBar2({Key? key, required this.title}) : super(key: key);

  @override
  State<VerifierCustomAppBar2> createState() => _VerifierCustomAppBar2State();
}

class _VerifierCustomAppBar2State extends State<VerifierCustomAppBar2> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig.defaultSize * Dimens.size1Point8,

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () => Get.back(),
                child: Container(
                  width: SizeConfig.defaultSize * Dimens.size5,
                  height: SizeConfig.defaultSize * Dimens.size5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      SizeConfig.defaultSize * Dimens.size1Point1,
                    ),
                    border: Border.all(
                      color: ConstantColor
                          .greyColor, //                   <--- border color
                      width: SizeConfig.defaultSize * Dimens.sizePoint2,
                    ),
                  ),
                  child: SvgPicture.asset(ConstantAssets.backArrow,
                      fit: BoxFit.scaleDown),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.defaultSize * Dimens.size2,
                  right: SizeConfig.defaultSize * Dimens.size2,
                ),
                child: Text(
                  widget.title,
                  style: TextStyle(
                      color: ConstantColor.secondaryColor,
                      fontFamily: ConstantFonts.poppinsBold,
                      fontSize: SizeConfig.defaultSize * Dimens.size1Point8),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    right: SizeConfig.defaultSize * Dimens.size1Point1),
                child: SvgPicture.asset(ConstantAssets.googleTranslate,
                    fit: BoxFit.scaleDown),
              ),
              ButtonWidget4(
                icon: Icons.add,
                minHeight: 40,
                minWidth: 0,
                isChecked: true,
                press: (BuildContext context) {
                  Get.to(VerifyItemScreenScaffold());
                },
              ),

              //Image.asset(ConstantAssets.startupIndia.toString(),height: 30,),
            ],
          ),
        ],
      ),
    );
  }
}
