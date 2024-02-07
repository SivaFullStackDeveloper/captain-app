import 'package:captain_app/deliveryFlow/screens/dashboard/DashboardScaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:pinput/pinput.dart';

import '../../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../constants/ConstantString.dart';
import '../../../../../../../../res/Dimens.dart';
import '../../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../../utils/SizeConfig.dart';
import '../../../../../../tobePacked/ToBePackedScaffold.dart';



class OrderShippedSuccessfullyScreen extends StatefulWidget {
  @override
  _OrderShippedSuccessfullyScreenState createState() => _OrderShippedSuccessfullyScreenState();
}


class _OrderShippedSuccessfullyScreenState extends State<OrderShippedSuccessfullyScreen> with RouteAware{
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
                       Get.off(()=>DashboardScaffold())
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
              flex: 4,
              child: Column(
                  children: [
                    Container(
                      width:  SizeConfig.defaultSize * Dimens.size30,
                        height:  SizeConfig.defaultSize * Dimens.size30,
                        child: Image.asset(ConstantAssets.delay)),

                    ///----------------------- Order is packed successfully ready to be shipped View --------------------------
                    Padding(
                      padding: EdgeInsets.only(
                        right: SizeConfig.defaultSize * Dimens.size3,
                        left: SizeConfig.defaultSize * Dimens.size3,
                      ),
                      child: Text(ConstantString.orderIsShippedSuccessfullyReadyToBeShipped.tr,
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
                      child: Text(ConstantString.shippedCompleteMessage.tr,
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
                          text:  ConstantString.packOtherOrders.toUpperCase().tr,
                          fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                          minWidth: SizeConfig.screenWidth,
                          minHeight: SizeConfig.defaultSize * Dimens.size5,
                          isChecked:  true,
                          press: (BuildContext context) => {
                             Get.off(()=> ToBePackedOrdersScaffold())
                          }),
                    )
                  ]
              ),
            ),

            Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  ///----------------------- Developed By Text --------------------------
                  Text(ConstantString.deliveredBy.toUpperCase().tr,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: ConstantFonts.poppinsRegular,
                        fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                        color: ConstantColor.blackColor,
                      )),

               ///----------------------- Sequel Image View --------------------------

               Padding(
                   padding: EdgeInsets.only(
                     top: SizeConfig.defaultSize * Dimens.size1,
                   ),
                   child: Image.asset(ConstantAssets.sequelImage)),
            ])
            )
          ],
        ),
    );
  }

}
