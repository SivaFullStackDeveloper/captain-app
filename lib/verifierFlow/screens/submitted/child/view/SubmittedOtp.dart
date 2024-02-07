import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/constants/ConstantColor.dart';
import 'package:captain_app/constants/ConstantFonts.dart';
import 'package:captain_app/constants/ConstantString.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:pinput/pinput.dart';

import '../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../res/Dimens.dart';
import '../../../../../utils/SizeConfig.dart';
import '../../controller/TobeSubmittedController.dart';




class SubmittedOtp extends StatefulWidget {
  const SubmittedOtp({Key? key}) : super(key: key);

  @override
  State<SubmittedOtp> createState() => _SubmittedOtpState();
}

class _SubmittedOtpState extends State<SubmittedOtp> {
  var tobeSubmittedController  = Get.put(TobeSubmittedController());

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
          child:  Padding(
            padding:  EdgeInsets.only(
              right:SizeConfig.defaultSize*Dimens.size2,
              left:SizeConfig.defaultSize*Dimens.size2,
            ),
            child:Column(
          children: [
///------------------------- App Bar --------------------------------
         ActionBar(title:'Verify OTP'),
///------------------------- Enter OTP  send to Manager widgets --------------------------------
          Flexible(
              flex: 7,
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(
                        top:SizeConfig.defaultSize*Dimens.size8,
                    ),
                    child:
///------------------------- Enter OTP  send to Manager Text widgets --------------------------------
                    Text(
                      'Enter OTP  send to Manager',
                      style: TextStyle(
                        fontFamily: ConstantFonts.poppinsBold,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: ConstantColor.secondaryColor,
                      ),
                    ),
                  ),
///------------------------- pin put widget --------------------------------
                  Row(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(
                            top:SizeConfig.defaultSize*Dimens.size1Point8
                        ),
                        child: Pinput(

                            defaultPinTheme: PinTheme(
                              width: SizeConfig.defaultSize * Dimens.size6,
                              height: SizeConfig.defaultSize * Dimens.size6,
                              textStyle: TextStyle(
                                  fontSize: SizeConfig.defaultSize * Dimens.size2,
                                  color: ConstantColor.secondaryColor,
                                  fontWeight: FontWeight.w600),
                              decoration: BoxDecoration(
                                border: Border.all(color: ConstantColor.secondaryColor),
                                borderRadius: BorderRadius.circular(
                                    SizeConfig.defaultSize * Dimens.size2),
                              ),
                            ),
                            showCursor: true,
                            onCompleted: (pin) => {
                              tobeSubmittedController.pinText.value = pin,
                              tobeSubmittedController.handOverToManager(pin),

                            },
                          ),
                      ),
                    ],
                  ),
                ],
              )
          ),
///------------------------- Resend OTP widget --------------------------------
            Flexible(
                flex: 2,
                child: Column(
              children: [

                Padding(
                  padding:  EdgeInsets.only(
                    left:SizeConfig.defaultSize*Dimens.size4,
                    right:SizeConfig.defaultSize*Dimens.size1Point8,
                  ),
                  child: Row(
                    children: [
                    Text("Didn't  receive ?"),
                      TextButton(onPressed: (){
                        tobeSubmittedController.sendOtpToManager();

                      },
                          child:
///------------------------- Resend OTP widget Text --------------------------------
                          Text("Resend OTP",style: TextStyle(
                            color: ConstantColor.secondaryColor,
                          ),),
                      ),
                    ],
                  ),
                ),
///------------------------- proceed button widget --------------------------------
                ButtonWidget(
                  fontSize: 20,
                  isChecked: false,
                  minHeight: SizeConfig.defaultSize*Dimens.size6,
                  minWidth: SizeConfig.defaultSize*Dimens.size35,
                  press: (BuildContext context){
                    tobeSubmittedController.handOverToManager(tobeSubmittedController.pinText.value);
                  },
                  text: ConstantString.proceed.toUpperCase(),),

              ],
            ))


          ],
          ),


          ));
          }



}



