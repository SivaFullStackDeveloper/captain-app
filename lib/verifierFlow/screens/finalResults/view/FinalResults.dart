import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/commonWidgets/CustomProgressIndicator.dart';
import 'package:captain_app/constants/ConstantColor.dart';
import 'package:captain_app/constants/ConstantFonts.dart';
import 'package:captain_app/verifierFlow/screens/shallProceed/ShallProceedScreenScaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../commonWidgets/ButtonWidget.dart';
import '../../../../commonWidgets/CustomTextBoxContainer.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../confirmation/controller/VerifyItemController.dart';
import '../../otpScreen/OtpScreenScaffold.dart';
import '../../uploadGold/UploadGoldScreenScaffold.dart';
import '../../verifyItemChild/controller/MeltController.dart';




class FinalResults extends StatefulWidget {
  const FinalResults({Key? key}) : super(key: key);

  @override
  State<FinalResults> createState() => _FinalResultsState();
}

class _FinalResultsState extends State<FinalResults> {

  var meltController = Get.put(MeltController());
  var verifyConfirmationItemController = Get.put(VerifyConfirmationItemController());
  @override
  Widget build(BuildContext context) {
    return Obx(()=> meltController.isLoading.value ? CustomProgressIndicator():SafeArea(

        child:Padding(
          padding:  EdgeInsets.only(
            left: SizeConfig.defaultSize*Dimens.size2,
            right: SizeConfig.defaultSize*Dimens.size2,
          ),
          child: Column(
            children: [

              ///--------------------------------- App Bar   ------------------------
              ActionBar(title: 'Final Results',),



              ///--------------------------------- App Bar   ------------------------



              Flexible(
                flex: 5,
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(

                        top:SizeConfig.defaultSize*Dimens.size4,
                        right:SizeConfig.defaultSize*Dimens.size2,
                        left:SizeConfig.defaultSize*Dimens.size2,
                      ),
                      child: Container(

                        decoration: BoxDecoration(
                          color: ConstantColor.lightYellowColor,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        height: SizeConfig.defaultSize*Dimens.size12,
                        width: SizeConfig.screenWidth,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ///--------------------------------- NET WEIGHT Text Widget   ------------------------
                                Text(ConstantString.netWeight.toUpperCase(),
                                  style:TextStyle(
                                    color: ConstantColor.secondaryColor,
                                  ) ,),
                                Text(meltController.netWeightText.value.toString(),
                                  style:TextStyle(
                                    color: ConstantColor.blackColor,
                                    fontFamily: ConstantFonts.poppinsMedium,
                                    fontSize: SizeConfig.defaultSize*Dimens.size4,
                                  ) ,),
                                ///--------------------------------- Gram Text Widget   ------------------------
                                Text(ConstantString.gram,
                                  style:TextStyle(
                                    color: ConstantColor.blackColor,
                                  ) ,)

                              ],
                            ),
                            Container(
                              height: 100,
                              width: 1,
                              decoration: BoxDecoration(
                                color: ConstantColor.darkSecondaryColor,
                              ),
                            ),
                            ///--------------------------------- NET purity Text Widget   ------------------------
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(ConstantString.netPurity,
                                  style:TextStyle(
                                    color: ConstantColor.secondaryColor,


                                  ) ,),
                                Text(meltController.netPurity.value.toString(),
                                  style:TextStyle(
                                    color: ConstantColor.blackColor,
                                    fontFamily: ConstantFonts.poppinsMedium,
                                    fontSize: SizeConfig.defaultSize*Dimens.size4,
                                  ) ,),
                                ///--------------------------------- percentage Text Widget   ------------------------
                                Text(ConstantString.percentage.toUpperCase(),
                                  style:TextStyle(
                                    color: ConstantColor.blackColor,
                                  ) ,)

                              ],
                            )

                          ],
                        ),),
                    ),
                    ///--------------------------------- Approximate Sell Amount Text Widget   ------------------------
                    Padding(
                      padding:  EdgeInsets.only(
                        top:SizeConfig.defaultSize*Dimens.size2,
                        left:SizeConfig.defaultSize*Dimens.size2,
                        right:SizeConfig.defaultSize*Dimens.size2,
                      ),
                      child: CustomTextBoxContainer(
                          height:SizeConfig.defaultSize*Dimens.size12,
                          smallText:ConstantString.approximateSellAmount,
                          bigText:meltController.sellAmount.value.toString(),
                      ),
                    ),
                    ///--------------------------------- Approximate Upload Gold Weight Text Widget   ------------------------
                    Padding(
                      padding:  EdgeInsets.only(
                        top:SizeConfig.defaultSize*Dimens.size2,
                        left:SizeConfig.defaultSize*Dimens.size2,
                        right:SizeConfig.defaultSize*Dimens.size2,
                      ),
                      child: CustomTextBoxContainer(
                          height:SizeConfig.defaultSize*Dimens.size12,
                          smallText: ConstantString.approximateUploadGoldWeight,
                          bigText:meltController.uploadWeight.value.toString()
                      ),
                    ),
                    ///---------------------------------  Button Widgets starts from here  ------------------------
                    Flexible(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            // Get.to(()=>ShallProceedScreenScaffold());
                            verifyConfirmationItemController.getItemOverview();
                          },
                          child:
                          ///--------------------------------- SELL Gold Button   ------------------------
                          CustomOutlineBorder2(
                            width: SizeConfig.defaultSize * Dimens.size14,
                            color: ConstantColor.secondaryColor,
                            height: SizeConfig.defaultSize * Dimens.size5,
                            text: ConstantString.sellGold.toUpperCase(),
                          ),
                        ),
                        //
                        ///--------------------------------- UPLOAD GOLD Button   ------------------------
                        Padding(
                            padding: EdgeInsets.only(
                                right: SizeConfig.defaultSize * Dimens.size1)),
                        InkWell(
                          onTap: () {
                            Get.to(()=>UploadGoldScreenScaffold());

                          },
                          child: Container(
                              height: SizeConfig.defaultSize * Dimens.size5,
                              width: SizeConfig.defaultSize * Dimens.size14,
                              decoration: BoxDecoration(
                                  color: ConstantColor.secondaryColor,
                                  borderRadius: BorderRadius.all(Radius.circular(10))),
                              child: Center(
                                child: Text(
                                  ConstantString.uploadGOLD.toUpperCase(),
                                  style: TextStyle(
                                      color: ConstantColor.whiteColor,
                                      fontFamily: ConstantFonts.poppinsMedium),
                                ),
                              )),
                        ),

                      ],
                    ),
                    ///--------------------------------- reject offer Button   ------------------------
                    InkWell(
                      onTap: (){
                        verifyConfirmationItemController.sendOTP2();
                      },
                      child: Text(
                        ConstantString.rejectOffer.toUpperCase(),
                        style: TextStyle(
                          fontFamily: ConstantFonts.poppinsBold,
                          fontSize: 18,
                          color: ConstantColor.secondaryColor,
                        ),),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
    ]))));
  }
}
