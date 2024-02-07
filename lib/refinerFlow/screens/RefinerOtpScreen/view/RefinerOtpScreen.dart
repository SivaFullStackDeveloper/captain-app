import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import '../../../../commonWidgets/ActionBar.dart';
import '../../../../commonWidgets/ButtonWidget.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../submitToManager/RefinerAcceptedScreen.dart';




class RefinerOtpScreen extends StatefulWidget {
  const RefinerOtpScreen({Key? key}) : super(key: key);

  @override
  State<RefinerOtpScreen> createState() => _RefinerOtpScreenState();
}

class _RefinerOtpScreenState extends State<RefinerOtpScreen> {
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
              ActionBar(title:'Verify OTP'),
              Flexible(
                  flex: 7,
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(
                          top:SizeConfig.defaultSize*Dimens.size8,


                        ),
                        child: Text(
                          'Enter OTP sent to Manager',
                          style: TextStyle(
                            fontFamily: ConstantFonts.poppinsBold,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: ConstantColor.secondaryColor,
                          ),
                        ),
                      ),

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

                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  )

              ),

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

                            },
                              child: Text("Resend OTP",style: TextStyle(
                                color: ConstantColor.secondaryColor,
                              ),),
                            ),
                          ],
                        ),
                      ),
                      ButtonWidget(
                        fontSize: 20,
                        isChecked: true,
                        minHeight: SizeConfig.defaultSize*Dimens.size6,
                        minWidth: SizeConfig.defaultSize*Dimens.size35,
                        press: (BuildContext context){
                          Get.to(()=>RefinerAcceptedScreen());
                        },
                        text: 'PROCEED',),

                    ],
                  ))


            ],
          ),


        ));
  }
}
