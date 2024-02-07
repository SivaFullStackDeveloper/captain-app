import 'package:captain_app/utils/customObject/CustomObject.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';
import '../../../../commonWidgets/ButtonWidget.dart';
import '../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../controller/OtpVerificationController.dart';



class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({Key? key}) : super(key: key);

  @override
  _OtpVerificationScreenState createState() => _OtpVerificationScreenState();
}


class _OtpVerificationScreenState extends State<OtpVerificationScreen> with RouteAware{

  var otpVerificationController = Get.put(OtpVerificationController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => otpVerificationController.isLoading.value ? CustomProgressIndicator()
          : SafeArea(
        child: Column(
            children: [

            Expanded(
              flex: 7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  ///------------------- enter Your Phone Number text --------------------
                  Padding(
                  padding: EdgeInsets.only(
                      right: SizeConfig.defaultSize * Dimens.size3,
                      left: SizeConfig.defaultSize * Dimens.size3,
                  ),
                  child: Text(ConstantString.enterOtpSentTo.tr + otpVerificationController.mobileNumber.value,
                      style: TextStyle(
                        fontFamily: ConstantFonts.poppinsBold,
                        fontSize: SizeConfig.defaultSize * Dimens.size3Point5,
                        color: ConstantColor.secondaryColor,
                      )),
                ),

                  ///------------------- enter otp boxes --------------------
                  Padding(
                    padding: EdgeInsets.only(
                      right: SizeConfig.defaultSize * Dimens.size3,
                      left: SizeConfig.defaultSize * Dimens.size3,
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
                              defaultPinTheme: CustomObject.defaultPinTheme,
                              showCursor: true,
                              onCompleted: (pin)=> {
                                otpVerificationController.enterMobileNumber.value.text = pin,
                                otpVerificationController.isOtpEntered.value = true
                              },
                            )
                        )
                      ],
                    ),
                  )
      ]
              ),
            ),

            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///---------------------------- waiting For OTP content -----------------------------
                  Padding(
                    padding: EdgeInsets.only(
                      left: SizeConfig.defaultSize * Dimens.size4,
                    ),
                    child: Text(
                        ConstantString.waitingForOTP.tr,
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
                      left: SizeConfig.defaultSize * Dimens.size4,
                      right: SizeConfig.defaultSize * Dimens.size4,
                    ),
                    child: ButtonWidget(
                        text:  ConstantString.continueText.tr,
                        fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                        minWidth: SizeConfig.screenWidth!,
                        minHeight: SizeConfig.defaultSize * Dimens.size5,
                        isChecked: otpVerificationController.isOtpEntered.value == true ? true : false,
                        press: (BuildContext context) => {
                          otpVerificationController.login(otpVerificationController.enterMobileNumber.value.text)

                        }),
                  ),
                ],
              ),
            )

            ],
        ),

    ));
  }

}
