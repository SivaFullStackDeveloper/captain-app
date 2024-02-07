import 'package:captain_app/commonWidgets/MySeparator.dart';
import 'package:captain_app/constants/ConstantAssets.dart';
import 'package:captain_app/constants/ConstantColor.dart';
import 'package:captain_app/constants/ConstantFonts.dart';
import 'package:captain_app/constants/ConstantString.dart';
import 'package:captain_app/res/Dimens.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';

import '../../../commonWidgets/CustomConfirmationTextBox.dart';
import '../../../commonWidgets/VerifierCustomAppBar.dart';

class VerificationCompletedDetailsScreen extends StatefulWidget {
  const VerificationCompletedDetailsScreen({Key? key}) : super(key: key);

  @override
  State<VerificationCompletedDetailsScreen> createState() =>
      _VerificationCompletedDetailsScreenState();
}

class _VerificationCompletedDetailsScreenState
    extends State<VerificationCompletedDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
///-------------------------------------------------  App bar widget  --------------------------------------
          VerifierCustomAppBar(title: '#BKS003432'),
          Padding(
            padding: EdgeInsets.all(
              SizeConfig.defaultSize * Dimens.size1Point8,
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: ConstantColor.lightYellowColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(SizeConfig.defaultSize*Dimens.circularRadius),
                    topRight: Radius.circular(SizeConfig.defaultSize*Dimens.circularRadius),
                  )),
              child: Column(
                children: [
                  CustomConfirmationTextBox(
                    color: ConstantColor.secondaryColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.productName1,
                    text2: '',
                  ),
                  CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.grossWeight,
                    text2: '10 ${ConstantString.gram1}',
                  ),
                  CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.grossPurity,
                    text2: '91.6 %',
                  ),
                  Padding(
                    padding:
                        EdgeInsets.all(SizeConfig.defaultSize * Dimens.size1),
                    child:const  MySeparator(),
                  ),

                  CustomConfirmationTextBox(
                    color: ConstantColor.secondaryColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.styleDetails,
                    text2: '',
                  ),
                  CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.style,
                    text2: ConstantString.dia,
                  ),
                  CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.numberOfPcs,
                    text2: '10 ${ConstantString.pcs}',
                  ),
                  CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.weight.toUpperCase(),
                    text2: '10 Ct ( 5 Gram )',
                  ),
                  CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.rate.toUpperCase(),
                    text2: '${ConstantString.rate.toUpperCase()} 5000',
                  ),
                  Padding(
                    padding:
                        EdgeInsets.all(SizeConfig.defaultSize * Dimens.size1),
                    child: const MySeparator(),
                  ),
                  CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.netWeight,
                    text2: '5 GRAM',
                  ),
                  CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.netPurity,
                    text2: '80%',
                  ),
                  CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.sellRateLocked,
                    text2: '${ConstantString.inr} 50,000',
                  ),
                  Padding(
                    padding:
                        EdgeInsets.all(SizeConfig.defaultSize * Dimens.size1),
                    child:const MySeparator(),
                  ),
                  CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.sellAmount,
                    text2: '${ConstantString.inr} 50,000',
                  ),
                  Padding(
                    padding:
                        EdgeInsets.all(SizeConfig.defaultSize * Dimens.size1),
                    child: const MySeparator(),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.defaultSize * Dimens.size1,
              left: SizeConfig.defaultSize * Dimens.size2,
              right: SizeConfig.defaultSize * Dimens.size2,
            ),
            child: Container(
              height: SizeConfig.defaultSize * Dimens.size12,
              width: SizeConfig.defaultSize * Dimens.size40,
              decoration: BoxDecoration(
                color: ConstantColor.lightYellowColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(SizeConfig.defaultSize*Dimens.circularRadius),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network(
                    'https://etimg.etb2bimg.com/photo/85487718.cms',
                    height: SizeConfig.defaultSize * Dimens.size6,
                  ),
                  Padding(
                    padding: EdgeInsets.all(
                      SizeConfig.defaultSize * Dimens.size1Point8,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'AP 09 TS 123456',
                          style: TextStyle(
                              color: ConstantColor.secondaryColor,
                              fontFamily: ConstantFonts.poppinsBold,
                              fontSize:
                                  SizeConfig.defaultSize * Dimens.size1Point8),
                        ),
                        Text(
                          ConstantString.available,
                          style: TextStyle(
                              color: ConstantColor.blackColor,
                              fontFamily: ConstantFonts.poppinsMedium,
                              fontSize:
                                  SizeConfig.defaultSize * Dimens.size1Point7),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.defaultSize * Dimens.size1,
              left: SizeConfig.defaultSize * Dimens.size2,
              right: SizeConfig.defaultSize * Dimens.size2,
            ),
            child: Container(
              height: SizeConfig.defaultSize * Dimens.size12,
              width: SizeConfig.defaultSize * Dimens.size40,
              decoration: BoxDecoration(
                color: ConstantColor.lightYellowColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(SizeConfig.defaultSize*Dimens.circularRadius),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: SizeConfig.defaultSize * Dimens.size4,
                    ),
                    child: Text(
                      ConstantString.securityGuards,
                      style: TextStyle(
                          color: ConstantColor.secondaryColor,
                          fontFamily: ConstantFonts.poppinsMedium,
                          fontSize:
                              SizeConfig.defaultSize * Dimens.size1Point8),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(
                      SizeConfig.defaultSize * Dimens.size1Point8,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Surya Prabat',
                          style: TextStyle(
                              color: ConstantColor.blackColor,
                              fontFamily: ConstantFonts.poppinsMedium,
                              fontSize:
                                  SizeConfig.defaultSize * Dimens.size1Point7),
                        ),
                        Text(
                          'Pawan Yadav',
                          style: TextStyle(
                              color: ConstantColor.blackColor,
                              fontFamily: ConstantFonts.poppinsMedium,
                              fontSize:
                                  SizeConfig.defaultSize * Dimens.size1Point7),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.defaultSize * Dimens.size1,
              left: SizeConfig.defaultSize * Dimens.size2,
              right: SizeConfig.defaultSize * Dimens.size2,
            ),
            child: Container(
              height: SizeConfig.defaultSize * Dimens.size12,
              width: SizeConfig.defaultSize * Dimens.size40,
              decoration: BoxDecoration(
                color: ConstantColor.lightYellowColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(SizeConfig.defaultSize*Dimens.circularRadius),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    ConstantAssets.badge,
                    height: SizeConfig.defaultSize * Dimens.size6,
                  ),
                  Padding(
                    padding: EdgeInsets.all(
                      SizeConfig.defaultSize * Dimens.size1Point8,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ConstantString.serialNumber,
                          style: TextStyle(
                              color: ConstantColor.secondaryColor,
                              fontFamily: ConstantFonts.poppinsBold,
                              fontSize:
                                  SizeConfig.defaultSize * Dimens.size1Point8),
                        ),
                        Text(
                          '606452364',
                          style: TextStyle(
                              color: ConstantColor.blackColor,
                              fontFamily: ConstantFonts.poppinsMedium,
                              fontSize:
                                  SizeConfig.defaultSize * Dimens.size1Point7),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(
              SizeConfig.defaultSize * Dimens.size1Point8,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  ConstantString.sealingVideo,
                  style: TextStyle(
                      color: ConstantColor.secondaryColor,
                      fontFamily: ConstantFonts.poppinsMedium,
                      fontSize: SizeConfig.defaultSize * Dimens.size1Point8),
                ),
                Image.asset(
                  ConstantAssets.sealingVideo,
                  height: SizeConfig.defaultSize * Dimens.size10,
                  width: SizeConfig.defaultSize * Dimens.size40,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(
              SizeConfig.defaultSize * Dimens.size1Point8,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: ConstantColor.lightYellowColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              height: SizeConfig.defaultSize * Dimens.size40,
              width: SizeConfig.defaultSize * Dimens.size40,
              child: Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * Dimens.size1Point2,
                  right: SizeConfig.defaultSize * Dimens.size1Point2,
                  left: SizeConfig.defaultSize * Dimens.size1Point2,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      ConstantString.signatureOfTheManager,
                      style: TextStyle(
                          color: ConstantColor.secondaryColor,
                          fontFamily: ConstantFonts.poppinsMedium,
                          fontSize: SizeConfig.defaultSize * Dimens.size2),
                    ),
                    Text(
                      ConstantString.usersSignature,
                      style: TextStyle(
                          color: ConstantColor.blackColor,
                          fontFamily: ConstantFonts.poppinsBold,
                          fontSize:
                              SizeConfig.defaultSize * Dimens.size1Point8),
                    ),
                    CustomConfirmationTextBox2(
                      color2: ConstantColor.blackColor,
                      color: ConstantColor.secondaryColor,
                      fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                      fontfamily: ConstantFonts.poppinsBold,
                      fontfamily2: ConstantFonts.poppinsMedium,
                      text1: ConstantString.name,
                      text2: ConstantString.customerName,
                    ),
                    CustomConfirmationTextBox2(
                      color2: ConstantColor.blackColor,
                      color: ConstantColor.secondaryColor,
                      fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                      fontfamily: ConstantFonts.poppinsBold,
                      fontfamily2: ConstantFonts.poppinsMedium,
                      text1: ConstantString.receivedOn,
                      text2: '14-02-2022',
                    ),
                    CustomConfirmationTextBox2(
                      color2: ConstantColor.blackColor,
                      color: ConstantColor.secondaryColor,
                      fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                      fontfamily: ConstantFonts.poppinsBold,
                      fontfamily2: ConstantFonts.poppinsMedium,
                      text1: 'Signed',
                      text2: ConstantString.yes,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
