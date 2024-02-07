// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'package:captain_app/commonWidgets/CustomProgressIndicator.dart';
import 'package:captain_app/verifierFlow/screens/VerifyItem/VerifyItemScreenScaffold.dart';
import 'package:captain_app/verifierFlow/screens/otpScreen/view/OtpScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../commonWidgets/ButtonWidget.dart';
import '../../../../commonWidgets/CustomConfirmationTextBox.dart';
import '../../../../commonWidgets/CustomTextBoxContainer.dart';
import '../../../../commonWidgets/MySeparator.dart';
import '../../../../commonWidgets/VerifierCustomAppBar.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../aceeptAndReject/views/VerifierAcceptedScreen.dart';
import '../../aceeptAndReject/views/VerifierRejectScreen.dart';
import '../../otpScreen/OtpScreenScaffold.dart';
import '../../verifyItemChild/VerifyItemScreenScaffold2.dart';
import '../controller/VerifyItemController.dart';

class VerifierConfirmationScreen extends StatefulWidget {
  VerifierConfirmationScreen({Key? key}) : super(key: key);

  @override
  State<VerifierConfirmationScreen> createState() =>
      _VerifierConfirmationScreenState();
}

class _VerifierConfirmationScreenState
    extends State<VerifierConfirmationScreen> {
  var verifyConfirmationItemController = Get.put(VerifyConfirmationItemController());
  @override
  Widget build(BuildContext context) {
    return Obx(()=>verifyConfirmationItemController.isLoading.value?CustomProgressIndicator():SafeArea(
        child: Column(
      children: [
        ///--------------------------------- Custom App Bar Verify Item   ------------------------
        Padding(
          padding:  EdgeInsets.only(

            left: SizeConfig.defaultSize*Dimens.size2,
            right: SizeConfig.defaultSize*Dimens.size2,
          ),
          child: VerifierCustomAppBar2(
            title: ConstantString.verifyItem,
          ),
        ),
        ///--------------------------------- Custom Confirmation Text Box Widget (multiple text widgets) ------------------------
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.all(
              SizeConfig.defaultSize * Dimens.size1Point8,
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: ConstantColor.lightYellowColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimens.circularRadius),
                    topRight: Radius.circular(Dimens.circularRadius),
                  )),
              child: Column(
                children: [
                  ///--------------------------------- Custom productName1 Text Box Widget  ------------------------
                  CustomConfirmationTextBox(
                    color: ConstantColor.secondaryColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsMedium,
                    text1: ConstantString.productName1,
                    text2: '',
                  ),
                  ///--------------------------------- Custom gross Weight Text Box Widget  ------------------------
                    CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsMedium,
                    text1: ConstantString.grossWeight,
                    text2: '${verifyConfirmationItemController.grossWeight.value} Gram',
                  ),
                  ///--------------------------------- Custom purity Text Box Widget  ------------------------
                  CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.purity.toUpperCase(),
                    text2: '${verifyConfirmationItemController.purity.value} %',
                  ),

                  ///--------------------------------- Custom MySeparator Text Box Widget  ------------------------
                  Padding(
                    padding:
                        EdgeInsets.all(SizeConfig.defaultSize * Dimens.size1),
                    child: MySeparator(),
                  ),
                  ///--------------------------------- Custom style Details Text Box Widget  ------------------------
                  CustomConfirmationTextBox(
                    color: ConstantColor.secondaryColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.styleDetails,
                    text2: '',
                  ),

                  ///--------------------------------- Custom style Name Text Box Widget  ------------------------
                  CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.styleName,
                    text2:   verifyConfirmationItemController.styleName.value,
                  ),
                  ///--------------------------------- Custom pcs Text Box Widget  ------------------------
                  CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.numberOfPCS.toUpperCase(),
                    text2: ' ${verifyConfirmationItemController.pcs.value} Pcs',
                  ),
                  ///--------------------------------- Custom weight Text Box Widget  ------------------------
                  CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.weight.toUpperCase(),
                    text2: '${verifyConfirmationItemController.weight.value}Ct ( 5 Gram )',
                  ),
                  ///--------------------------------- Custom Approximate Sell Amount Text Box Widget  ------------------------
                  Padding(
                    padding:  EdgeInsets.only(
                      top:SizeConfig.defaultSize*Dimens.size2,
                      left:SizeConfig.defaultSize*Dimens.size2,
                      right:SizeConfig.defaultSize*Dimens.size2,
                    ),
                    child: CustomTextBoxContainer(
                      height:SizeConfig.defaultSize*Dimens.size12,
                      smallText:ConstantString.approximateSellAmount,
                      bigText:"Rs.${verifyConfirmationItemController.sellAmount.value}"
                    ),
                  ),
                  ///--------------------------------- Custom Approximate Sell Amount Text Box Widget  ------------------------
                  Padding(
                    padding:  EdgeInsets.only(
                      top:SizeConfig.defaultSize*Dimens.size2,
                      left:SizeConfig.defaultSize*Dimens.size2,
                      right:SizeConfig.defaultSize*Dimens.size2,
                    ),
                    child: CustomTextBoxContainer(
                        height:SizeConfig.defaultSize*Dimens.size12,
                        smallText: ConstantString.approximateUploadGoldWeight,
                        bigText:"${verifyConfirmationItemController.uploadGoldWeight.value} GRAM"
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        ///--------------------------------- Row for Custom Out line Border Button Widget  ------------------------
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Get.to(() => OtpScreenScaffold());
              },
              child:
              ///--------------------------------- Row for Custom Out line Border Button Widget  ------------------------
              CustomOutlineBorder2(
                width: SizeConfig.defaultSize * Dimens.size14,
                color: ConstantColor.secondaryColor,
                height: SizeConfig.defaultSize * Dimens.size5,
                text: ConstantString.rejected.toUpperCase(),
              ),
            ),
            ///--------------------------------- Row for Custom Out line Border Button PROCEED TO MELT Widget  ------------------------
            //
            Padding(
                padding: EdgeInsets.only(
                    right: SizeConfig.defaultSize * Dimens.size1)),
            InkWell(
              onTap: () {

                verifyConfirmationItemController.sendOTP();
                verifyConfirmationItemController.isLoading.value = true;
                // Get.to(()=>VerifyItemScreenScaffold2());
              },
              child: Container(
                  height: SizeConfig.defaultSize * Dimens.size5,
                  width: SizeConfig.defaultSize * Dimens.size14,
                  decoration: BoxDecoration(
                      color: ConstantColor.secondaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: Text(
                     'PROCEED TO MELT',
                      style: TextStyle(
                          color: ConstantColor.whiteColor,
                          fontFamily: ConstantFonts.poppinsMedium),
                    ),
                  )),
            ),
          ],
        ),


        Padding(
            padding:
                EdgeInsets.only(bottom: SizeConfig.defaultSize * Dimens.size2)),
      ],
    )));
  }
}
