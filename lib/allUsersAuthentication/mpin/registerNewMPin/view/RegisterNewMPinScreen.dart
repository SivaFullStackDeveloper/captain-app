import 'package:captain_app/deliveryFlow/screens/dashboard/DashboardScaffold.dart';
import 'package:captain_app/utils/customObject/CustomObject.dart';
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
import '../../../../deliveryFlow/screens/bottomNavBar/BottomNavBarScaffold.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../controller/RegisterNewMPinController.dart';


class RegisterNewMPinScreen extends StatefulWidget {
  @override
  _RegisterNewMPinScreenState createState() => _RegisterNewMPinScreenState();
}


class _RegisterNewMPinScreenState extends State<RegisterNewMPinScreen> with RouteAware{
  var registerNewMPinController = Get.put(RegisterNewMPinController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => registerNewMPinController.isLoading.value ? const CustomProgressIndicator()
          : SafeArea(
        child: Column(
            children: [

            Flexible(
              flex: 8,
              child: Column(
                children: [
                  ///------------------- enter Your Phone Number text --------------------

                  Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size15,
                      right: SizeConfig.defaultSize * Dimens.size3,
                      left: SizeConfig.defaultSize * Dimens.size3,
                  ),
                  child: Text(ConstantString.registerMPINForSecurity.tr,
                      style: TextStyle(
                        fontFamily: ConstantFonts.poppinsBold,
                        fontSize: SizeConfig.defaultSize * Dimens.size3Point5,
                        color: ConstantColor.secondaryColor,
                      )),
                ),

                  ///------------------- enter new mPin boxes --------------------
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
                                registerNewMPinController.enterMPin.value.text = pin,
                                registerNewMPinController.isNewMPinEntered.value = true
                              },
                            )
                        )
                      ],
                    ),
                  )
      ]
              ),
            ),

            Flexible(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.defaultSize * Dimens.size4,
                  right: SizeConfig.defaultSize * Dimens.size4,
                ),
                child: ButtonWidget(
                    text:  ConstantString.continueText.tr,
                    fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                    minWidth: SizeConfig.screenWidth,
                    minHeight: SizeConfig.defaultSize * Dimens.size5,
                    isChecked:  registerNewMPinController.isNewMPinEntered.value == true ? true : false,
                    press: (BuildContext context) => {
                      registerNewMPinController.mPinApiFunction(registerNewMPinController.enterMPin.value.text)
                    }),
              ),
            )

            ],
        ),

    ));
  }
}
