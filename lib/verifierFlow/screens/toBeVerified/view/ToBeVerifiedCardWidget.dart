import 'package:captain_app/verifierFlow/screens/otpScreen/view/OtpScreen.dart';
import 'package:captain_app/verifierFlow/screens/toBeReached/TobeReachedScreenScaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../../homeScreen/controller/ToBeVerifiedController.dart';
import '../../submitted/child/SubmittedOtpScaffold.dart';
import '../../submitted/controller/TobeSubmittedController.dart';
import '../../submittedToManger/SubmittedToMangerScreenScaffold.dart';
import '../../toBeReached/view/ToBeReachedMapScreenScaffold.dart';





class CustomCardWidget extends StatefulWidget {
  var title;
  var kms;
  CustomCardWidget({Key? key,this.title,this.kms}) : super(key: key);

  @override
  State<CustomCardWidget> createState() => _CustomCardWidgetState();
}

class _CustomCardWidgetState extends State<CustomCardWidget> {
  var toBeVerifiedController = Get.put(VerifierHomeScreenController());
  var tobeSubmittedController = Get.put(TobeSubmittedController());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: toBeVerifiedController.requests.length,
        itemBuilder: (context, var index) {
          SizeConfig().init(context);
          return Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.defaultSize * Dimens.size1,
                left: SizeConfig.defaultSize * Dimens.size2,
                right: SizeConfig.defaultSize * Dimens.size2,
              ),
              child:
 ///------------------------------------------ Verified custom list button widget --------------------------------
              InkWell(
                onTap: () {
                  if(toBeVerifiedController.selected.value == 'toBeVerified'){
                    Get.to(()=>const ToBeReachedMapScreenScaffold());
                    CustomObject.toBeVerifiedId = toBeVerifiedController.requests[index].id;
                  }else if(toBeVerifiedController.selected.value == 'toBeSubmitted'){
                    tobeSubmittedController.sendOtpToManager();
                    CustomObject.toBeVerifiedId = toBeVerifiedController.requests[index].id;
                  }
                },
///------------------------------------------ Verified custom list container widget --------------------------------
                child: Container(
                  height: SizeConfig.defaultSize * Dimens.size12,
                  width: SizeConfig.defaultSize * Dimens.size18,
                  decoration: BoxDecoration(
                    color: ConstantColor.lightYellowColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(SizeConfig.defaultSize*Dimens.circularRadius),
                    ),
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size2,
                        left: SizeConfig.defaultSize * Dimens.size2,
                        right: SizeConfig.defaultSize * Dimens.size2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
///------------------------------------------orderId Text widget --------------------------------
                              Text(
                                toBeVerifiedController.requests[index].orderId,
                                style: TextStyle(
                                    color: ConstantColor.secondaryColor,
                                    fontFamily: ConstantFonts.poppinsBold,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point6),
                              ),
///------------------------------------------Kms Text widget --------------------------------
                              Text(
                                '${toBeVerifiedController.requests[index].distance} kms',
                                style: TextStyle(
                                    color: ConstantColor.blackColor,
                                    fontFamily: ConstantFonts.poppinsMedium,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point6),
                              ),
                            ],
                          ),
///------------------------------------------icon widget --------------------------------
                          Icon(
                            Icons.arrow_forward_ios,
                            color: ConstantColor.blackColor,
                          ),
                        ],
                      )),
                ),
              ));
        });
  }
}
