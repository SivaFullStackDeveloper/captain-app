import 'package:captain_app/deliveryFlow/screens/dashboard/DashboardScaffold.dart';
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
import '../../../../utils/customObject/CustomObject.dart';
import '../controller/EnterMPinController.dart';


class EnterMPinScreen extends StatefulWidget {
  @override
  _EnterMPinScreenState createState() => _EnterMPinScreenState();
}


class _EnterMPinScreenState extends State<EnterMPinScreen> with RouteAware{
  var enterMPinController = Get.put(EnterMPinController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => enterMPinController.isLoading.value ? const CustomProgressIndicator()
          : SafeArea(
        child: Column(
            children: [

            Flexible(
              flex: 8,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  ///------------------- Enter Your MPIN text --------------------

                  Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.defaultSize * Dimens.size3,
                    top: SizeConfig.defaultSize * Dimens.size15,
                  ),
                  child: Text(ConstantString.enterYourMPIN.tr,
                      style: TextStyle(
                        fontFamily: ConstantFonts.poppinsBold,
                        fontSize: SizeConfig.defaultSize * Dimens.size3Point5,
                        color: ConstantColor.secondaryColor,
                      )),
                ),

                    ///------------------- enter mPin boxes --------------------
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
                                  enterMPinController.enterMPin.value.text = pin,
                                  enterMPinController.isNewMPinEntered.value = true
                                },
                              )
                          )
                        ],
                      ),
                    )
      ]
              ),
            ),

            ///----------------------------- Continue button ---------------------------------
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
                    isChecked: enterMPinController.isNewMPinEntered.value == true ? true : false,
                    press: (BuildContext context) => {
                      enterMPinController.mPinApiFunction(enterMPinController.enterMPin.value.text)
                    }),
              ),
            )

            ],
        ),

    ));
  }

}
