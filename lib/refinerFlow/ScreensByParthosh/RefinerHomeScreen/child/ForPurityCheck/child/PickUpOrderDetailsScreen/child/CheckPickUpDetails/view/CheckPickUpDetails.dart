import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/commonWidgets/ButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../../../../commonWidgets/CameraCaptureMessage.dart';
import '../../../../../../../../../../commonWidgets/VerifierCustomTextFormFeild.dart';
import '../../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../../utils/SizeConfig.dart';
import '../child/uploadVideoAndEnvelops/UploadVideoScaffold.dart';






class CheckPickUpDetails extends StatefulWidget {
  const  CheckPickUpDetails({Key? key}) : super(key: key);

  @override
  State<CheckPickUpDetails> createState() => _CheckPickUpDetailsState();
}

class _CheckPickUpDetailsState extends State<CheckPickUpDetails> {
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
              title: 'Pickup #BKS00034',
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
                                        title: "Take Photo Of The Weight Scale With Bag",
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
                          labeltext: 'Enter Weight',
                          hintText:'Enter Weight',
                          sufixText: 'GRAM',
                        ),
                      ],
                    ),
           ),






            Flexible(
              flex: 1,
              child: ButtonWidget(
                  text: 'START CHECKING',
                  fontSize: 20,
                  minWidth: SizeConfig.defaultSize*Dimens.size30,
                  minHeight: SizeConfig.defaultSize*Dimens.size5,
                  isChecked: true,
                  press: (BuildContext context){
                    Get.to(()=>UploadVideoScaffold());
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
