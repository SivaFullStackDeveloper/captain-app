// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../commonWidgets/ButtonWidget.dart';
import '../../../../commonWidgets/CustomVerifierWestartedWidget.dart';
import '../../../../constants/ConstantAssets.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';

class VerifierAcceptedScreen extends StatefulWidget {
  const VerifierAcceptedScreen({super.key});

  @override
  State<VerifierAcceptedScreen> createState() => _VerifierAcceptedScreenState();
}

class _VerifierAcceptedScreenState extends State<VerifierAcceptedScreen> {
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
            text: 'Complete Order got canceled',
            fontfamily: ConstantFonts.poppinsBold,
            fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
            color: ConstantColor.secondaryColor,
          ),
          /// ------------------------------------- Custom small Text Widget   -----------------------------------------------
           CustomVerifierWestartedWidget(
              text:'Return entire items to the store',
              fontfamily: ConstantFonts.poppinsMedium,
              fontsize: SizeConfig.defaultSize * Dimens.size1Point6,
              color: ConstantColor.blackColor,
            ),
          /// ------------------------------------- sized box Widget for space   -----------------------------------------------
          SizedBox(
            height: SizeConfig.defaultSize*Dimens.size8,
          ),
          /// ------------------------------------- Check Other Button Widget   -----------------------------------------------
          ButtonWidget(text: "Check Other Request",
              fontSize: SizeConfig.defaultSize*Dimens.size2,

              minWidth: SizeConfig.defaultSize*Dimens.size6,
              minHeight: SizeConfig.defaultSize*Dimens.size6,
              isChecked: true,
              press: (context){

              }),

        ]),
      ),
    );
  }
}
