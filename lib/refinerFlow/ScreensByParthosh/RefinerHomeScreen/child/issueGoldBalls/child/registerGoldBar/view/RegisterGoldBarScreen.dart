import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/commonWidgets/ButtonWidget.dart';
import 'package:captain_app/constants/ConstantAssets.dart';
import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/child/issueGoldBalls/child/finalGoldBarSubmission/view/FinalGoldBarSubmissionScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../../../../../../../commonWidgets/CameraCaptureMessage.dart';
import '../../../../../../../../../../commonWidgets/VerifierCustomTextFormFeild.dart';
import '../../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../../utils/SizeConfig.dart';
import '../../finalGoldBarSubmission/FinalGoldBarSubmissionScaffold.dart';




class RegisterGoldBarScreen extends StatefulWidget {
  const  RegisterGoldBarScreen({Key? key}) : super(key: key);

  @override
  State<RegisterGoldBarScreen> createState() => _RegisterGoldBarScreenState();
}

class _RegisterGoldBarScreenState extends State<RegisterGoldBarScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:   Padding(
        padding:  EdgeInsets.only(
          top:SizeConfig.defaultSize*Dimens.size1Point2,
          left:SizeConfig.defaultSize*Dimens.size1Point2,
          right:SizeConfig.defaultSize*Dimens.size1Point2,
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              ActionBar(
                title: 'Print and Stick',
              ),
              Container(
                margin:  EdgeInsets.all(
                  SizeConfig.defaultSize*Dimens.size1Point2,
                ),
                height: SizeConfig.defaultSize*Dimens.size20,
                width: SizeConfig.defaultSize*Dimens.size60,
                padding:  EdgeInsets.all(
                  SizeConfig.defaultSize*Dimens.size1Point2,
                ),
                child: Image.asset(ConstantAssets.barCode),
              ),
              Text('UNIQUE CODE FOR BAR PRINT',
                style:TextStyle(
                  color: ConstantColor.blackColor,
                  fontFamily: ConstantFonts.poppinsMedium,
                  fontSize: SizeConfig.defaultSize*Dimens.size1Point8,
                ) ,),
              Text('B456798',
                style:TextStyle(
                  color: ConstantColor.secondaryColor,
                  fontFamily: ConstantFonts.poppinsBold,
                  fontSize: SizeConfig.defaultSize*Dimens.size1Point5
                  ,
                ) ,),
              Padding(
                padding:  EdgeInsets.only(
                  top:SizeConfig.defaultSize*Dimens.size1Point2,
                  left:SizeConfig.defaultSize*Dimens.size1Point2,
                  right:SizeConfig.defaultSize*Dimens.size1Point2,
                ),
                child: ButtonWidget(
                    text: 'PRINT ON THE BAR',
                    fontSize: 20,
                    minWidth: SizeConfig.defaultSize*Dimens.size30,
                    minHeight: SizeConfig.defaultSize*Dimens.size5,
                    isChecked: true,
                    press: (BuildContext context){
                      customBottomSheet(context,false);
                      // Get.to(()=> RefinedCalculationScaffold());
                    }
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(
                        SizeConfig.defaultSize * Dimens.size1Point8

                    ),
                    child: Container(
                      padding:  EdgeInsets.all(
                          SizeConfig.defaultSize * Dimens.size1Point8
                      ),
                      height: SizeConfig.defaultSize * Dimens.size20,
                      width: SizeConfig.defaultSize * Dimens.size60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            SizeConfig.defaultSize * Dimens.size1Point3,
                          ),
                          color: ConstantColor.lightYellowColor),
                      child: InkWell(
                        onTap: () {},

                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // pickupDetailsController
                              //             .imagePickedForAgent.value ==
                              //         false
                              //        ?
                              CameraCaptureMessage(
                                scan:false,
                                title: "Take photo of Bar on Weighing Scale",
                              )
                              // : ShowImage(
                              //     title: "Id of agent",
                              //     imgFile: pickupDetailsController
                              //         .agentImgFile)
                              //getAgentImage("Id of agent",pickupDetailsController.agentImgFile)
                            ]),
                      ),
                    ),
                  ),
                  VerifierCustomTextFormFeild3(
                    labeltext: 'ENTER WEIGHT of GOLD BAR',
                    hintText:'Enter Number',
                    sufixText: 'GRAM',
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(
                        SizeConfig.defaultSize * Dimens.size1Point8

                    ),
                    child: Container(
                      padding:  EdgeInsets.all(
                          SizeConfig.defaultSize * Dimens.size1Point8
                      ),
                      height: SizeConfig.defaultSize * Dimens.size20,
                      width: SizeConfig.defaultSize * Dimens.size60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            SizeConfig.defaultSize * Dimens.size1Point3,
                          ),
                          color: ConstantColor.lightYellowColor),
                      child: InkWell(
                        onTap: () {},

                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // pickupDetailsController
                              //             .imagePickedForAgent.value ==
                              //         false
                              //        ?
                              CameraCaptureMessage(
                                scan:false,
                                title: "Take photo of Karatometer",
                              )
                              // : ShowImage(
                              //     title: "Id of agent",
                              //     imgFile: pickupDetailsController
                              //         .agentImgFile)
                              //getAgentImage("Id of agent",pickupDetailsController.agentImgFile)
                            ]),
                      ),
                    ),
                  ),

                  Padding(
                    padding:  EdgeInsets.only(
                      top:SizeConfig.defaultSize*Dimens.size2,
                      right:SizeConfig.defaultSize*Dimens.size4,
                      left:SizeConfig.defaultSize*Dimens.size4,
                      bottom:SizeConfig.defaultSize*Dimens.size2,
                    ),
                    child: Text('PURITY OF  FINE GOLD SHOULD BE : 99.9% (+ 0.05%) ',
                      style:TextStyle(
                        color: ConstantColor.blackColor,
                        fontFamily: ConstantFonts.poppinsMedium,
                        fontSize: SizeConfig.defaultSize*Dimens.sizePoint9
                        ,
                      ) ,),
                  ),

                  VerifierCustomTextFormFeild3(
                    labeltext: 'ENTER PURITY of GOLD BAR',
                    hintText:'Enter Number',
                    sufixText: '%',
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(
                  top:SizeConfig.defaultSize*Dimens.size2,
                  right:SizeConfig.defaultSize*Dimens.size2,
                  left:SizeConfig.defaultSize*Dimens.size2,
                  bottom:SizeConfig.defaultSize*Dimens.size2,
                ),
                child: InkWell(
                  // onTap: ()=> Get.to(()=>SaleInvoiceDownloadScaffold()),
                  child: Container(
                      width: SizeConfig.defaultSize * Dimens.size40,
                      height: SizeConfig.defaultSize * Dimens.size6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          SizeConfig.defaultSize * Dimens.size1,
                        ),
                        border: Border.all(
                          color: ConstantColor.secondaryColor, //                   <--- border color
                          width: SizeConfig.defaultSize * Dimens.sizePoint1,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "ADD GOLD BAR",
                          style: TextStyle(
                            color: ConstantColor.secondaryColor,
                            fontFamily: ConstantFonts.poppinsMedium,
                            fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                          ),

                        ),
                      )
                  ),
                ),
              ),


              Padding(
                padding:
                EdgeInsets.symmetric(vertical: SizeConfig.defaultSize * Dimens.size2),
                child: ButtonWidget(
                    text: 'CONTINUE',
                    fontSize: 20,
                    minWidth: SizeConfig.defaultSize*Dimens.size30,
                    minHeight: SizeConfig.defaultSize*Dimens.size5,
                    isChecked: true,
                    press: (BuildContext context){
                      Get.to(()=> FinalGoldBarSubmissionScaffold());
                    }
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  customBottomSheet(BuildContext context, bool close){
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
                    'Printing in Process',
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
                    'Printing in progress, please don’t close the app',
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
