import 'package:captain_app/constants/ConstantString.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../../../../commonWidgets/ActionBar.dart';
import '../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../constants/ConstantColor.dart';
import '../../../../../constants/ConstantFonts.dart';
import '../../../../../res/Dimens.dart';
import '../../../../../utils/SizeConfig.dart';
import '../../../confirmation/controller/VerifyItemController.dart';




class VerifyOtpToSealItem extends StatefulWidget {
  const VerifyOtpToSealItem({Key? key}) : super(key: key);

  @override
  State<VerifyOtpToSealItem> createState() => _VerifyOtpToSealItemState();
}

class _VerifyOtpToSealItemState extends State<VerifyOtpToSealItem> {
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
///------------------------------------------------ App bar  --------------------------------------
              ActionBar(title:'Verify OTP For Sealing'),
///-------------------------------------------------Enter OTP widgets  --------------------------------------
              Flexible(
                  flex: 7,
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(
                          top:SizeConfig.defaultSize*Dimens.size8,


                        ),
                        child:
 ///-------------------------------------------------Enter OTP text widget  --------------------------------------
                        Text(
                          'Enter OTP  send to 99XXXXXXXX12',
                          style: TextStyle(
                            fontFamily: ConstantFonts.poppinsBold,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: ConstantColor.secondaryColor,
                          ),
                        ),
                      ),
///------------------------------------------------- pin put widget  --------------------------------------
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
///-------------------------------------------------Resend OTP widgets  --------------------------------------
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
///-------------------------------------------------Resend OTP  text widget  --------------------------------------
                              child: Text("Resend OTP",style: TextStyle(
                                color: ConstantColor.secondaryColor,
                              ),),
                            ),
                          ],
                        ),
                      ),
///------------------------------------------------- proceed button widget  --------------------------------------
                      ButtonWidget(
                        fontSize: 20,
                        isChecked: true,
                        minHeight: SizeConfig.defaultSize*Dimens.size6,
                        minWidth: SizeConfig.defaultSize*Dimens.size35,
                        press: (BuildContext context){
                          verifyConfirmationItemController.verifyOTPForSeal(pintext);
                        },
                        text: ConstantString.proceed.toUpperCase(),),
                    ],
                  ))
            ],
          ),
        ));
  }
}
