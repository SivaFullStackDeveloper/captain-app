import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:pinput/pinput.dart';
import '../../../../commonWidgets/ButtonWidget.dart';
import '../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../otpVerification/OtpVerificationScaffold.dart';
import '../controller/LoginController.dart';


class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> with RouteAware{
  Color colorofbox = Colors.transparent;
  final numberController = TextEditingController();
  String initialCountry = 'IN';
  PhoneNumber number = PhoneNumber(isoCode: 'IN');

  var loginController = Get.put(LoginController());



  @override
  Widget build(BuildContext context) {
    //loginController.translate();
    return Obx(() => loginController.isLoading.value ? CustomProgressIndicator()
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
                  child: Text(ConstantString.enterYourPhoneNumber.tr,
                      style: TextStyle(
                        fontFamily: ConstantFonts.poppinsBold,
                        fontSize: SizeConfig.defaultSize * Dimens.size3Point5,
                        color: ConstantColor.secondaryColor,
                      )),
                ),

                  ///------------------- +91 text --------------------
                  Padding(
                    padding: EdgeInsets.only(
                      right: SizeConfig.defaultSize * Dimens.size3,
                      left: SizeConfig.defaultSize * Dimens.size3,
                      top: SizeConfig.defaultSize * Dimens.size2,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex:2,
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: SizeConfig.defaultSize * Dimens.sizePoint2,
                            ),
                            child: Text("+91".tr,
                                style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsBold,
                                  fontSize: SizeConfig.defaultSize * Dimens.size3Point5,
                                  color: ConstantColor.lightGreyColor,
                                )),
                          ),
                        ),

                        ///------------------- textfield  --------------------
                       Expanded(
                          flex: 8,
                          child: TextField(
                            controller: loginController.enterMobileNumber.value,
                            cursorColor: ConstantColor.secondaryColor,
                            style: TextStyle(
                              fontFamily: ConstantFonts.poppinsBold,
                              fontSize: SizeConfig.defaultSize * Dimens.size3Point5,
                              color: ConstantColor.blackColor,
                            ),
                            decoration:  const InputDecoration.collapsed(
                                hintText: '',

                            ),

                          ),
                        ),

                      ],
                    ),
                  )
      ]
              ),
            ),

            Expanded(
              flex: 3,
              child: Column(
                children: [
                  ///---------------------------- CheckBox -----------------------------
                  Padding(
                    padding: EdgeInsets.only(
                      left: SizeConfig.defaultSize * Dimens.size2Point3,
                      top: SizeConfig.defaultSize * Dimens.size2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Checkbox(
                          activeColor: ConstantColor.secondaryColor,
                          value: loginController.value.value,
                          onChanged: (value) {
                            setState(() {
                              loginController.value.value = value!;
                          loginController.whatsapp.value = value;

                            });
                          },
                        ),

                        ///-----------------------you Can Reach Me On Whatsapp text -------------
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(
                              ConstantString.youCanReachMeOnWhatsapp.tr,
                              style: TextStyle(
                                fontFamily: ConstantFonts.poppinsMedium,
                                fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                                color: ConstantColor.textBlackColor,)),
                            Text(
                                ConstantString.thisIsOnlyToProvideUpdatesForYourAccounts.tr,
                                style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsMedium,
                                  fontSize: SizeConfig.defaultSize *
                                      Dimens.size1Point2,
                                  color: ConstantColor.greyColor,)),
                        ]),
                      ],
                    ),
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
                        isChecked: loginController.enterMobileNumber.value.length == 10 ? true : false,
                        press: (BuildContext context) => {
                          print("=----------"),
                          loginController.sendOtp(loginController.enterMobileNumber.value.text,loginController.value.value,true)

                        }),
                  ),

                  ///---------------------------- Privacy Policy content -----------------------------
                  Padding(
                    padding: EdgeInsets.only(
                      left: SizeConfig.defaultSize * Dimens.size4,
                      right: SizeConfig.defaultSize * Dimens.size4,
                      top: SizeConfig.defaultSize * Dimens.size2,
                    ),
                    child: Text(
                        ConstantString.termsAndConditionAcceptText.tr,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: ConstantFonts.poppinsMedium,
                          fontSize: SizeConfig.defaultSize * Dimens.size1Point2,
                          color: ConstantColor.textBlackColor,)),
                  ),
                ],
              ),
            )

            ],
        ),

    ));
  }

}
