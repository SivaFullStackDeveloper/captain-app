import 'package:captain_app/deliveryFlow/screens/canceledOrder/CanceledOrderScaffold.dart';
import 'package:captain_app/deliveryFlow/screens/dashboard/DashboardScaffold.dart';

import 'package:captain_app/managerFlow/screen/dashboard/ManagerDashboardScaffold.dart';
import 'package:captain_app/managerFlow/screen/verifiedOrder/tobeAssigned/TobeAssignedScaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:pinput/pinput.dart';

import '../../../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../../constants/ConstantString.dart';
import '../../../../../../../../../utils/SizeConfig.dart';
import '../../../../../../../../../res/Dimens.dart';



class ToBeAssignedSuccessfullyScreen extends StatefulWidget {
  const ToBeAssignedSuccessfullyScreen({Key? key}) : super(key: key);

  @override
  _ToBeAssignedSuccessfullyScreenState createState() => _ToBeAssignedSuccessfullyScreenState();
}


class _ToBeAssignedSuccessfullyScreenState extends State<ToBeAssignedSuccessfullyScreen> with RouteAware{
  @override
  Widget build(BuildContext context) {
    //loginController.translate();
    return  SafeArea(
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
                       Get.off(()=>const ManagerDashboardScaffold())
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

                       ///------------------------ Close Icon ----------------
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
              flex: 4,
              child: Column(
                  children: [

                    ///------------------------ Cancel Order Icon ------------------
                    Container(
                      width:  SizeConfig.defaultSize * Dimens.size30,
                        height:  SizeConfig.defaultSize * Dimens.size30,
                        child: Image.asset(ConstantAssets.cancelOrder)),

                    ///----------------------- Order is packed successfully ready to be shipped View --------------------------
                    Padding(
                      padding: EdgeInsets.only(
                        right: SizeConfig.defaultSize * Dimens.size3,
                        left: SizeConfig.defaultSize * Dimens.size3,
                      ),
                      child: Text(ConstantString.customerNotified.tr,
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
                      child: Text(ConstantString.requestToVerifyIsAssignedNote.tr,
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
                             Get.off(()=> const TobeAssignedScaffold())
                          }),
                    )
                  ]
              ),
            ),

          ],
        ),
    );
  }

}
