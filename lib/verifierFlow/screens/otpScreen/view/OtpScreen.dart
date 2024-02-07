import 'package:captain_app/constants/ConstantString.dart';
import 'package:captain_app/verifierFlow/screens/aceeptAndReject/views/VerifierAcceptedScreen.dart';
import 'package:captain_app/verifierFlow/screens/verifyItemChild/view/VerifierItemScreen2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../../../commonWidgets/ActionBar.dart';
import '../../../../commonWidgets/ButtonWidget.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../confirmation/controller/VerifyItemController.dart';




class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  var verifyConfirmationItemController = Get.put(VerifyConfirmationItemController());
  var pintext = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:  Padding(
          padding:  EdgeInsets.only(

            right:SizeConfig.defaultSize*Dimens.size2,
            left:SizeConfig.defaultSize*Dimens.size2,

          ),
          child:Column(
            children: [

              /// ------------------------------------- App Bar----------------------------------------
              ActionBar(title:'Verify OTP'),
              /// ------------------------------------- Enter OTP  send to 99XXXXXXXX12 Text widget ----------------------------------------
              Flexible(
                  flex: 7,
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(
                          top:SizeConfig.defaultSize*Dimens.size8,


                        ),
                        child: Text(
                          'Enter OTP  send to 99XXXXXXXX12',
                          style: TextStyle(
                            fontFamily: ConstantFonts.poppinsBold,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: ConstantColor.secondaryColor,
                          ),
                        ),
                      ),
                      /// ------------------------------------- pin put  widget ----------------------------------------
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
                                pintext = pin,
                                verifyConfirmationItemController.verifyOTP(pin),

                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
              ),
              /// ------------------------------------- Resend OTP Text widget ----------------------------------------
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
                            TextButton(
                              onPressed: (){
                                verifyConfirmationItemController.reSendOTP();

                            },
                              child: Text("Resend OTP",style: TextStyle(
                                color: ConstantColor.secondaryColor,
                              ),),
                            ),
                          ],
                        ),
                      ),

                      /// ------------------------------------- proceed button widget ----------------------------------------
                      ButtonWidget(
                        fontSize: 20,
                        isChecked: true,
                        minHeight: SizeConfig.defaultSize*Dimens.size6,
                        minWidth: SizeConfig.defaultSize*Dimens.size35,
                        press: (BuildContext context){
                          Get.to(()=>VerifyItemScreen2());

                          verifyConfirmationItemController.verifyOTP(pintext);
                        },
                        text: ConstantString.proceed.toUpperCase(),),

                    ],
                  ))


            ],
          ),


        ));
  }
}
