import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/issueGoldBalls/child/finalGoldBarSubmission/widget/IssueGoldBarOrderList.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../../utils/SizeConfig.dart';
import '../../../../../RefinerHomeScreenScaffold.dart';






class FinalGoldBarSubmissionScreen extends StatefulWidget {
  const FinalGoldBarSubmissionScreen({Key? key}) : super(key: key);

  @override
  State<FinalGoldBarSubmissionScreen> createState() => _FinalGoldBarSubmissionScreenState();
}

class _FinalGoldBarSubmissionScreenState extends State<FinalGoldBarSubmissionScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:  EdgeInsets.only(
          left: SizeConfig.defaultSize*Dimens.size2,
          right: SizeConfig.defaultSize*Dimens.size2,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ActionBar(title: 'Final Submission',),
            ///-------------------------------------------- Filter icon and Today date---------------------------------
            Padding(
              padding:  EdgeInsets.only(
                top:SizeConfig.defaultSize*Dimens.size2,
                left:SizeConfig.defaultSize*Dimens.size2,
                right:SizeConfig.defaultSize*Dimens.size2,
              ),
              child: Container(
                padding:  EdgeInsets.all(
                  SizeConfig.defaultSize*Dimens.size2,
                ),
                color:ConstantColor.extraLightYellowColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Gold Bars Added",style: TextStyle(
                      fontFamily: ConstantFonts.poppinsBold,
                      fontSize: SizeConfig.defaultSize * Dimens.size2Point1,
                      color: ConstantColor.blackColor,
                    )),
                    Text("Count : 02",style: TextStyle(
                      fontFamily: ConstantFonts.poppinsMedium,
                      fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                      color: ConstantColor.blackColor,
                    )),

                  ],
                ),
              ),
            ),
            ///-------------------------------------------- List of Gold Bar order ---------------------------------
            const Flexible(
                flex: 1,
                child: IssueGoldBarOrderList()),

            Padding(
              padding:  EdgeInsets.only(
                top:SizeConfig.defaultSize*Dimens.size1,
                right:SizeConfig.defaultSize*Dimens.size2,
                left:SizeConfig.defaultSize*Dimens.size2,
              ),
              child: Container(
                padding:  EdgeInsets.all(
                  SizeConfig.defaultSize*Dimens.size1,
                ),
                decoration: BoxDecoration(
                  color: ConstantColor.extraLightYellowColor,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                height: SizeConfig.defaultSize*Dimens.size15,
                width: SizeConfig.screenWidth,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('WEIGHT OF\nGOLD BALLS',
                              style:TextStyle(
                                color: ConstantColor.secondaryColor,


                              ) ,),
                            Text('2051',
                              style:TextStyle(
                                color: ConstantColor.blackColor,
                                fontFamily: ConstantFonts.poppinsMedium,
                                fontSize: SizeConfig.defaultSize*Dimens.size3,
                              ) ,),
                            Text('GRAM',
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
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('         TOTAL\nENTERED WEIGHT',
                              style:TextStyle(
                                color: ConstantColor.secondaryColor,


                              ) ,),
                            Text('2050.990',
                              style:TextStyle(
                                color: ConstantColor.blackColor,
                                fontFamily: ConstantFonts.poppinsMedium,
                                fontSize: SizeConfig.defaultSize*Dimens.size3,
                              ) ,),
                            Text('PERCENTAGE',
                              style:TextStyle(
                                color: ConstantColor.blackColor,
                              ) ,)

                          ],
                        )
                      ],
                    ),
                  ],
                ),),
            ),

            Padding(
              padding: EdgeInsets.only(
                left: SizeConfig.defaultSize * Dimens.size2,
                right: SizeConfig.defaultSize * Dimens.size2,
                top: SizeConfig.defaultSize * Dimens.size3,
                bottom: SizeConfig.defaultSize * Dimens.size3,
              ),
              child: ButtonWidget(
                  text:  "SUBMIT".tr,
                  fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                  minWidth: SizeConfig.screenWidth,
                  minHeight: SizeConfig.defaultSize * Dimens.size5,
                  isChecked: true ,
                  press: (BuildContext context) => {
                    customBottomSheet(context,false),
                    Future.delayed(const Duration(seconds: 2,),(){
                      Get.offAll(()=> const RefinerHomeScreenScaffold());
                    })
                    // Get.to(()=> PrintAndStickBarScaffold())
                    //reviewOrdersController.uploadInvoiceAndPackageApiFunction(reviewOrdersController.invoiceFile,reviewOrdersController.packageFile),

                  }),
            ),
            // allTab ==true? Expanded(child: AllInvoiceOrderList()):
            // assignedTab==true?Expanded(child: AssignedOrdersList()):Container(),
            // packedTab==true? Expanded(child: PackedOrdersList()):Container(),
          ],
        ),
      ),
    );
  }

  customBottomSheet(BuildContext context, bool close) {
    return showModalBottomSheet<void>(
      useRootNavigator: close,
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: SizeConfig.defaultSize * Dimens.size30,
            width: SizeConfig.defaultSize * Dimens.size40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(
                    SizeConfig.defaultSize * Dimens.size1,
                  ),
                  child: Text(
                    'Thank you!',
                    style: TextStyle(
                      color: ConstantColor.secondaryColor,
                      fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                      fontFamily: ConstantFonts.poppinsBold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(
                    SizeConfig.defaultSize * Dimens.size1,
                  ),
                  child: Text(
                    'Refined Details Successfully Submitted',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ConstantColor.secondaryColor,
                      fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                      fontFamily: ConstantFonts.poppinsBold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
