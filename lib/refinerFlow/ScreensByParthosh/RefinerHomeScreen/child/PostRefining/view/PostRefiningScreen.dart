import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/commonWidgets/ButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../../../../../../../commonWidgets/CameraCaptureMessage.dart';
import '../../../../../../../../../../commonWidgets/VerifierCustomTextFormFeild.dart';
import '../../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../../utils/SizeConfig.dart';
import '../../../../../../constants/ConstantFonts.dart';
import '../child/RefinedCalculation/RefinedCalCulationScaffold.dart';






class PostRefiningScreen extends StatefulWidget {
  const  PostRefiningScreen({Key? key}) : super(key: key);

  @override
  State<PostRefiningScreen> createState() => _PostRefiningScreenState();
}

class _PostRefiningScreenState extends State<PostRefiningScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:   Padding(
        padding:  EdgeInsets.only(
          top:SizeConfig.defaultSize*Dimens.size1Point2,
          left:SizeConfig.defaultSize*Dimens.size1Point2,
          right:SizeConfig.defaultSize*Dimens.size1Point2,
        ),
        child: Column(
          children: [
            ActionBar(
              title: 'MELTING PROCESS',
            ),
            Flexible(
              flex: 7,
              child: Column(
                children: [


                  Padding(
                    padding:  EdgeInsets.all(
                        SizeConfig.defaultSize * Dimens.size1Point8

                    ),
                    child: Container(
                      padding:  EdgeInsets.all(
                          SizeConfig.defaultSize * Dimens.size1Point8
                      ),
                      width: SizeConfig.defaultSize * Dimens.size60,
                      height: SizeConfig.defaultSize * Dimens.size20,
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
                                title: "Take photo of Total Weight",
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
                    child: Text('TOTAL RECOVERY FINE GOLD WEIGHT SHOULD BE : 6.270 GRAM',
                      style:TextStyle(
                        color: ConstantColor.blackColor,
                        fontFamily: ConstantFonts.poppinsMedium,
                        fontSize: SizeConfig.defaultSize*Dimens.sizePoint9
                        ,
                      ) ,),
                  ),

                  VerifierCustomTextFormFeild3(
                    labeltext: 'ENTER WEIGHT of REFINED METAL',
                    hintText:'Enter Number',
                    sufixText: 'GRAM',
                  ),
                ],
              ),
            ),

            Flexible(
              flex: 1,
              child: ButtonWidget(
                  text: 'COMPLETED',
                  fontSize: 20,
                  minWidth: SizeConfig.defaultSize*Dimens.size30,
                  minHeight: SizeConfig.defaultSize*Dimens.size5,
                  isChecked: true,
                  press: (BuildContext context){
                    Get.to(()=> RefinedCalculationScaffold());
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
