// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:captain_app/utils/customObject/CustomObject.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../commonWidgets/ButtonWidget.dart';
import '../../../../commonWidgets/CustomVerifierWestartedWidget.dart';
import '../../../../constants/ConstantAssets.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../res/Dimens.dart';
import '../../../../res/Dimens.dart';
import '../../../../res/Dimens.dart';
import '../../../../res/Dimens.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../VerifyItem/VerifyItemScreenScaffold.dart';

class VeriferWeStartedScreen extends StatefulWidget {
  const VeriferWeStartedScreen({Key? key}) : super(key: key);

  @override
  State<VeriferWeStartedScreen> createState() => _VeriferWeStartedScreenState();
}

class _VeriferWeStartedScreenState extends State<VeriferWeStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          ///-------------------------------------------- App bar --------------------------------------------
          CustomOutlineCloseButton(
            color: ConstantColor.greyColor,
            icon: Icons.close,
          ),
          ///-------------------------------------------- App bar --------------------------------------------
          Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.defaultSize * Dimens.size2,
              left: SizeConfig.defaultSize * Dimens.size2,
              right: SizeConfig.defaultSize * Dimens.size2,
            ),
            child:
            ///-------------------------------------------- cancel Order Image Container --------------------------------------------
            Container(
                height: SizeConfig.defaultSize * Dimens.size30,
                width: SizeConfig.defaultSize * Dimens.size40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(SizeConfig.defaultSize*Dimens.circularRadius),
                  ),
                ),
                child: Image.asset(
                  ConstantAssets.cancelOrder,
                )),
          ),
          ///-------------------------------------------- verify Yourself With Customer Text Widget --------------------------------------------
          CustomVerifierWestartedWidget(
            text: ConstantString.verifyYourselfWithCustomer,
            fontfamily: ConstantFonts.poppinsBold,
            fontsize: SizeConfig.defaultSize * Dimens.size2,
            color: ConstantColor.secondaryColor,
          ),
          ///-------------------------------------------- use This Otp To Show To Customer Text Widget --------------------------------------------
          CustomVerifierWestartedWidget(
            text: ConstantString.useThisOtpToShowToCustomer,
            fontfamily: ConstantFonts.poppinsMedium,
            fontsize: SizeConfig.defaultSize * Dimens.size1Point6,
            color: ConstantColor.blackColor,
          ),
          ///-------------------------------------------- OTP  Text Widget --------------------------------------------
          CustomVerifierWestartedWidget(
            text: CustomObject.tempOtp.toString(),
            fontfamily: ConstantFonts.poppinsBold,
            fontsize: SizeConfig.defaultSize * Dimens.size6,
            color: ConstantColor.blackColor,
          ),
          ///-------------------------------------------- start Verifying button Widget --------------------------------------------
          Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.defaultSize * Dimens.size2,
              left: SizeConfig.defaultSize * Dimens.size2,
              right: SizeConfig.defaultSize * Dimens.size2,
            ),
            child: InkWell(
              onTap: () {
                Get.to(() => VerifyItemScreenScaffold());
              },
              child: Container(
                height: SizeConfig.defaultSize * Dimens.size6,
                width: SizeConfig.defaultSize * Dimens.size30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: ConstantColor.secondaryColor,
                ),
                child: Center(
                  child: Text(
                    ConstantString.startVerifying.toUpperCase(),
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
        ],
      ),
    );
  }
}
