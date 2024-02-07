import 'package:captain_app/commonWidgets/CustomProgressIndicator.dart';
import 'package:captain_app/constants/ConstantAssets.dart';
import 'package:captain_app/constants/ConstantColor.dart';
import 'package:captain_app/constants/ConstantFonts.dart';
import 'package:captain_app/constants/ConstantString.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../commonWidgets/ButtonWidget.dart';
import '../../../../commonWidgets/CustomConfirmationTextBox.dart';
import '../../../../commonWidgets/MySeparator.dart';
import '../../../../commonWidgets/VerifierCustomAppBar.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../confirmation/controller/VerifyItemController.dart';
import '../../sealTheItems/SealTheItemScreenScaffold.dart';
import '../../uploadGold/UploadGoldScreenScaffold.dart';
import '../controller/ShallProceedController.dart';

class ShallProceedScreen extends StatefulWidget {
  const ShallProceedScreen({Key? key}) : super(key: key);

  @override
  State<ShallProceedScreen> createState() => _ShallProceedScreenState();
}

class _ShallProceedScreenState extends State<ShallProceedScreen> {
  var shallProceedController = Get.put(ShallProceedController());
  var verifyConfirmationItemController = Get.put(VerifyConfirmationItemController());
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return verifyConfirmationItemController.isLoading.value ? const CustomProgressIndicator() :SafeArea(
        child: Column(
      children: [
        ///------------------------- App Bar widget --------------------------------
        VerifierCustomAppBar(title: ConstantString.shallIProceed),
        ///------------------------- Shall proceed widgets main container widget --------------------------------
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.all(
              SizeConfig.defaultSize * Dimens.size1Point8,
            ),
            child:
            ///------------------------- Shall proceed widgets main container widget --------------------------------
            Container(
              decoration: BoxDecoration(
                  color: ConstantColor.lightcolor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(SizeConfig.defaultSize*Dimens.circularRadius),
                    topRight: Radius.circular(SizeConfig.defaultSize*Dimens.circularRadius),
                  )),
              child: Column(
                children: [
                  ///------------------------- productName1 text  widget --------------------------------
                  CustomConfirmationTextBox(
                    color: ConstantColor.secondaryColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.productName1,
                    text2: '',
                  ),
                  ///------------------------- gross Weight text  widget --------------------------------
                  CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.grossWeight,
                    text2: '${verifyConfirmationItemController.grossWeight.value} Gram',
                  ),
                  ///------------------------- purity text  widget --------------------------------
                  CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.grossPurity,
                    text2: '${verifyConfirmationItemController.purity.value} %',
                  ),
                  ///-------------------------MySeparator  widget --------------------------------
                  Padding(
                    padding:
                        EdgeInsets.all(SizeConfig.defaultSize * Dimens.size1),
                    child:const MySeparator(),
                  ),
                  ///------------------------- style Details text  widget --------------------------------
                  CustomConfirmationTextBox(
                    color: ConstantColor.secondaryColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.styleDetails,
                    text2: '',
                  ),
                  ///------------------------- style name text  widget --------------------------------

                  CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.styleName,
                    text2:verifyConfirmationItemController.styleName.value,
                  ),
                  ///------------------------- number Of Pcs text  widget --------------------------------
                  CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.numberOfPcs,
                    text2: '${verifyConfirmationItemController.pcs.value} Pcs',
                  ),
                  ///------------------------- weight text  widget --------------------------------
                  CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.weight.toUpperCase(),
                    text2: '${verifyConfirmationItemController.weight.value} Ct ( 5 Gram )',
                  ),
                  ///------------------------- rate text  widget --------------------------------
                  CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.rate,
                    text2: '${ConstantString.rate.toUpperCase()} ${verifyConfirmationItemController.rate.value}',
                  ),
                  ///-------------------------MySeparator  widget --------------------------------
                  Padding(
                    padding:
                        EdgeInsets.all(SizeConfig.defaultSize * Dimens.size1),
                    child: const MySeparator(),
                  ),
                  ///------------------------- net Weight text  widget --------------------------------
                  CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.netWeight1,
                    text2: '${verifyConfirmationItemController.netWeight.value} ${ConstantString.gram}',
                  ),
                  ///------------------------- net Purity text  widget --------------------------------
                  CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.netPurity,
                    text2: '${verifyConfirmationItemController.netPurity.value}%',
                  ),
                  ///------------------------- sell Rate text  widget --------------------------------
                  CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.sellRate,
                    text2: '${ConstantString.inr} ${verifyConfirmationItemController.sellAmount.value}',
                  ),
                  ///------------------------- MySeparator  widget --------------------------------
                  Padding(
                    padding:
                        EdgeInsets.all(SizeConfig.defaultSize * Dimens.size1),
                    child:const MySeparator(),
                  ),
                  ///------------------------- sell Amount text  widget --------------------------------
                  CustomConfirmationTextBox(
                    color2: ConstantColor.greyColor,
                    color: ConstantColor.blackColor,
                    fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontfamily: ConstantFonts.poppinsRegular,
                    text1: ConstantString.sellAmount,
                    text2: '${ConstantString.inr} ${verifyConfirmationItemController.sellAmount.value}',
                  ),
                  ///------------------------- MySeparator  widget --------------------------------
                  Padding(
                    padding:
                        EdgeInsets.all(SizeConfig.defaultSize * Dimens.size1),
                    child:const MySeparator(),
                  ),
                ],
              ),
            ),
          ),
        ),
        ///------------------------- total Sell Amount  widget --------------------------------
        Padding(
          padding: EdgeInsets.only(
            top: SizeConfig.defaultSize * Dimens.size2Point8,
          ),
          child: Column(
            children: [
              ///------------------------- total Sell Amount text widget --------------------------------
              Text(ConstantString.totalSellAmount,
                  style: TextStyle(
                    fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontFamily: ConstantFonts.poppinsRegular,
                    color: ConstantColor.blackColor,
                  )),
              ///------------------------- total Sell Amount value widget --------------------------------
              Text('${verifyConfirmationItemController.sellAmount.value}',
                  style: TextStyle(
                    fontSize: SizeConfig.defaultSize * Dimens.size6,
                    fontFamily: ConstantFonts.poppinsMedium,
                    color: ConstantColor.blackColor,
                  ))
            ],
          ),
        ),
        ///-------------------------  Custom button  widgets --------------------------------
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Get.to(() =>const UploadGoldScreenScaffold());
              },
              child:
              ///------------------------- rejected To Sell Custom button  widget --------------------------------
              CustomOutlineBorder2(
                width: SizeConfig.defaultSize * Dimens.size16,
                color: ConstantColor.secondaryColor,
                height: SizeConfig.defaultSize * Dimens.size5,
                text: ConstantString.rejectedToSell.toUpperCase(),
              ),
            ),
            ///------------------------- PROCEED TO SEAL button  widget --------------------------------
            Padding(
                padding: EdgeInsets.only(
                    right: SizeConfig.defaultSize * Dimens.size1)),
            InkWell(
              onTap: () {
                shallProceedController.sellGold();
              },
              child: Container(
                  height: SizeConfig.defaultSize * Dimens.size5,
                  width: SizeConfig.defaultSize * Dimens.size14,
                  decoration: BoxDecoration(
                      color: ConstantColor.secondaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: Text(
                      ConstantString.proceedToSeal.toUpperCase(),
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
    ));
  }
}
