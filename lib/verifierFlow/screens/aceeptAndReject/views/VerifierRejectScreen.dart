// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../commonWidgets/ButtonWidget.dart';
import '../../../../commonWidgets/CustomVerifierWestartedWidget.dart';
import '../../../../constants/ConstantAssets.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';

class VerifierRejectScreen extends StatefulWidget {
  const VerifierRejectScreen({super.key});

  @override
  State<VerifierRejectScreen> createState() => _VerifierRejectScreenState();
}

class _VerifierRejectScreenState extends State<VerifierRejectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          /// -------------------------------------Close button to clos the screen -----------------------------------------------------
          CustomOutlineCloseButton(
            color: ConstantColor.greyColor,
            icon: Icons.close,
          ),
          /// -------------------------------------Image widget to show the reject  -----------------------------------------------
          Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.defaultSize * Dimens.size2,
              left: SizeConfig.defaultSize * Dimens.size2,
              right: SizeConfig.defaultSize * Dimens.size2,
            ),
            child: Container(
                height: SizeConfig.defaultSize * Dimens.size30,
                width: SizeConfig.defaultSize * Dimens.size40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(Dimens.circularRadius),
                  ),
                ),
                child: Image.asset(
                  ConstantAssets.cancelOrder,
                )),
          ),
          /// ------------------------------------- Custom Text Widget   -----------------------------------------------
          CustomVerifierWestartedWidget(
            text: ConstantString.customerChosenNotToUploadOrSell,
            fontfamily: ConstantFonts.poppinsBold,
            fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
            color: ConstantColor.darkSecondaryColor,
          ),
          /// ------------------------------------- Custom small Text Widget   -----------------------------------------------
          CustomVerifierWestartedWidget(
            text: ConstantString.thankYouForVerifyingNote,
            fontfamily: ConstantFonts.poppinsMedium,
            fontsize: SizeConfig.defaultSize * Dimens.size1Point6,
            color: ConstantColor.blackColor,
          ),
          /// ------------------------------------- Check Other Button Widget   -----------------------------------------------
          Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.defaultSize * Dimens.size8,
              left: SizeConfig.defaultSize * Dimens.size2,
              right: SizeConfig.defaultSize * Dimens.size2,
            ),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: SizeConfig.defaultSize * Dimens.size8,
                width: SizeConfig.defaultSize * Dimens.size35,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.all(Radius.circular(Dimens.circularRadius)),
                  color: ConstantColor.secondaryColor,
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size2,
                      left: SizeConfig.defaultSize * Dimens.size2,
                      right: SizeConfig.defaultSize * Dimens.size2,
                      bottom: SizeConfig.defaultSize * Dimens.size2,
                    ),
                    child: Text(
                      ConstantString.checkOtherRequests,
                      style: TextStyle(
                        fontFamily: ConstantFonts.poppinsMedium,
                        fontSize: SizeConfig.defaultSize * Dimens.size2,
                        color: ConstantColor.whiteColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
