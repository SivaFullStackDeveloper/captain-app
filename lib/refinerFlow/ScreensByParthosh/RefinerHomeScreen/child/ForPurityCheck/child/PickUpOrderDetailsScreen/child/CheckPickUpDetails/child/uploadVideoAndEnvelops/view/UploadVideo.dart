import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/commonWidgets/ButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../../../../../../commonWidgets/CameraCaptureMessage.dart';
import '../../../../../../../../../../../../commonWidgets/VerifierCustomTextFormFeild.dart';
import '../../../../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../../../../utils/SizeConfig.dart';
import '../child/checkItem/RefinerCheckItemScaffold.dart';





class UploadVideo extends StatefulWidget {
  const UploadVideo({Key? key}) : super(key: key);

  @override
  State<UploadVideo> createState() => _UploadVideoState();
}

class _UploadVideoState extends State<UploadVideo> {
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

                  Container(
                    margin:  EdgeInsets.all(
                        SizeConfig.defaultSize * Dimens.size1Point8
                    ),
                    padding:  EdgeInsets.all(
                        SizeConfig.defaultSize * Dimens.size1Point8
                    ),
                    height: SizeConfig.defaultSize * Dimens.size20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          SizeConfig.defaultSize * Dimens.size1Point3,
                        ),
                        color: ConstantColor.extraLightYellowColor),
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
                              title: "Upload Video Of Opening Of Package",
                            )
                            // : ShowImage(
                            //     title: "Id of agent",
                            //     imgFile: pickupDetailsController
                            //         .agentImgFile)
                            //getAgentImage("Id of agent",pickupDetailsController.agentImgFile)
                          ]),
                    ),
                  ),


                  VerifierCustomTextFormFeild3(
                    labeltext: 'NUMBER OF INDIVIDUAL ENVELOPS ',
                    hintText:'NUMBER OF INDIVIDUAL ENVELOPS ',
                    sufixText: 'No.s',
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
                    Get.to(()=> RefinerCheckItemScaffold());
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}

