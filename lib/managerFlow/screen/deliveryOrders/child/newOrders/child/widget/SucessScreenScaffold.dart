import 'package:captain_app/deliveryFlow/screens/canceledOrder/CanceledOrderScaffold.dart';
import 'package:captain_app/deliveryFlow/screens/dashboard/DashboardScaffold.dart';

import 'package:captain_app/managerFlow/screen/dashboard/ManagerDashboardScaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:pinput/pinput.dart';

import '../../../../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../../../constants/ConstantString.dart';
import '../../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../../../../utils/SizeConfig.dart';




class SucessScreenScaffold extends StatefulWidget {
  const SucessScreenScaffold({super.key});

  @override
  _SucessScreenScaffoldState createState() => _SucessScreenScaffoldState();
}


class _SucessScreenScaffoldState extends State<SucessScreenScaffold> with RouteAware{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            ///------------------------ Close Container ----------------
            Padding(
              padding: EdgeInsets.only(
                right: SizeConfig.defaultSize * Dimens.size2,
                top: SizeConfig.defaultSize * Dimens.size2,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: ()=>{
                        Get.back(),
                      },
                      child: Container(
                        width: SizeConfig.defaultSize * Dimens.size5,
                        height: SizeConfig.defaultSize * Dimens.size5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            SizeConfig.defaultSize * Dimens.size1Point1,
                          ),
                          border: Border.all(
                            color: ConstantColor.boxBorderGreyColor, //                   <--- border color
                            width: SizeConfig.defaultSize * Dimens.sizePoint2,
                          ),
                        ),
                        child: SvgPicture.asset(
                            ConstantAssets.close,
                            fit: BoxFit.scaleDown
                        ),
                      ),
                    ),
                  ]
              ),
            ),

            Flexible(
              flex: 6,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Image.asset(ConstantAssets.deliveredImage),

                    ///----------------------- Order is packed successfully ready to be shipped View --------------------------
                    Padding(
                      padding: EdgeInsets.only(
                        right: SizeConfig.defaultSize * Dimens.size3,
                        left: SizeConfig.defaultSize * Dimens.size3,
                      ),
                      child: Text("Order is packed successfully ready to be shipped".tr,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: ConstantFonts.poppinsBold,
                            fontSize: SizeConfig.defaultSize * Dimens.size2,
                            color: ConstantColor.secondaryColor,
                          )),
                    ),

                    ///----------------------- Packing complete message text --------------------------
                    Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size2,
                        right: SizeConfig.defaultSize * Dimens.size3,
                        left: SizeConfig.defaultSize * Dimens.size3,
                      ),
                      child: Text("Your packing has been completed, we have notified delivery partner to come and pick the order, sit back and relax".tr,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: ConstantFonts.poppinsRegular,
                            fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                            color: ConstantColor.blackColor,
                          )),
                    ),

                    ///----------------------- Pack Other Order Button --------------------------
                    Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size5,
                        left: SizeConfig.defaultSize * Dimens.size4,
                        right: SizeConfig.defaultSize * Dimens.size4,
                      ),
                      child: ButtonWidget(
                          text:  "Check other handover orders".toUpperCase().tr,
                          fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                          minWidth: SizeConfig.screenWidth,
                          minHeight: SizeConfig.defaultSize * Dimens.size5,
                          isChecked:  true,
                          press: (BuildContext context) => {

                          }),
                    ),
                    SvgPicture.asset(ConstantAssets.deliverdBy),
                    SvgPicture.asset(ConstantAssets.sequal),

                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }

}
