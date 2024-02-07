import 'package:captain_app/allUsersAuthentication/mpin/registerNewMPin/RegisterNewMPinScaffold.dart';
import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:pinput/pinput.dart';
import '../../../../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../../../constants/ConstantString.dart';
import '../../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../../utils/SizeConfig.dart';
import '../controller/HandoverOtpVerificationController.dart';



class HandoverOtpVerificationScreen extends StatefulWidget {
  const HandoverOtpVerificationScreen({Key? key}) : super(key: key);

  @override
  _HandoverOtpVerificationScreenState createState() => _HandoverOtpVerificationScreenState();
}


class _HandoverOtpVerificationScreenState extends State<HandoverOtpVerificationScreen> with RouteAware{

  var handoverOtpVerificationController = Get.put(HandoverOtpVerificationController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => handoverOtpVerificationController.isLoading.value ? const CustomProgressIndicator()
          : SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            right: SizeConfig.defaultSize * Dimens.size2,
            left: SizeConfig.defaultSize * Dimens.size2,
          ),
          child: Column(
              children: [

                ActionBar(
                  title: "Verify Otp",
                ),

              Flexible(
                flex: 7,
                child: Column(
                  children: [

                    ///------------------- enter Your Phone Number text --------------------

                    Padding(
                    padding: EdgeInsets.only(
                        right: SizeConfig.defaultSize * Dimens.size1,
                        left: SizeConfig.defaultSize * Dimens.size1,
                        top: SizeConfig.defaultSize * Dimens.size6,
                    ),
                    child: Text("Enter OTP sent to Manager".tr,
                        style: TextStyle(
                          fontFamily: ConstantFonts.poppinsBold,
                          fontSize: SizeConfig.defaultSize * Dimens.size3Point5,
                          color: ConstantColor.secondaryColor,
                        )),
                  ),

                    ///------------------- enter otp boxes --------------------
                    Padding(
                      padding: EdgeInsets.only(
                        right: SizeConfig.defaultSize * Dimens.size1,
                        left: SizeConfig.defaultSize * Dimens.size1,
                        top: SizeConfig.defaultSize * Dimens.size2,
                      ),
                      child: Row(
                        children: [

                          Padding(
                              padding: EdgeInsets.only(
                                right: SizeConfig.defaultSize * Dimens.size1,
                                top: SizeConfig.defaultSize * Dimens.size1,
                              ),
                              child: Pinput(
                                  defaultPinTheme: defaultPinTheme,
                                  showCursor: true,
                                  onCompleted: (pin)=> {
                                    handoverOtpVerificationController.isOtpEntered.value = true,
                                    handoverOtpVerificationController.otp.value = pin,
                                  },


                              )
                          ),

                        ],
                      ),
                    )
      ]
                ),
              ),

              Flexible(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ///---------------------------- waiting For OTP content -----------------------------
                    Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.defaultSize * Dimens.size1,
                      ),
                      child: Text(
                          "Didn't receive? Resend OTP".tr,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: ConstantFonts.poppinsMedium,
                            fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                            color: ConstantColor.greyColor,)),
                    ),

                    ///---------------------------- Continue Button -----------------------------
                    Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size2,

                      ),
                      child: ButtonWidget(
                          text:  ConstantString.proceed.tr.toUpperCase(),
                          fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                          minWidth: SizeConfig.screenWidth,
                          minHeight: SizeConfig.defaultSize * Dimens.size5,
                          isChecked: handoverOtpVerificationController.isOtpEntered.value == true ? true : false,
                          press: (BuildContext context) => {
                            handoverOtpVerificationController.handoverToManager()
                            //cancelOtpVerificationController.login(cancelOtpVerificationController.enterMobileNumber.value.text)
                          }),
                    ),


                  ],
                ),
              )

              ],
          ),
        ),

    ));
  }


  ///---------------------- Otp box theme --------------------------
  final defaultPinTheme = PinTheme(
    width: SizeConfig.defaultSize * Dimens.size5,
    height: SizeConfig.defaultSize * Dimens.size5,
    textStyle: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2, color: ConstantColor.secondaryColor, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: ConstantColor.secondaryColor),
      borderRadius: BorderRadius.circular(SizeConfig.defaultSize * Dimens.size1),
    ),
  );
}
