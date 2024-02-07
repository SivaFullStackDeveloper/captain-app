import 'package:captain_app/deliveryFlow/screens/dashboard/DashboardScaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../constants/ConstantString.dart';
import '../../../../../../../res/Dimens.dart';
import '../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../utils/SizeConfig.dart';
import '../../../../ToBePackedScaffold.dart';



class OrderPackedSuccessfullyScreen extends StatefulWidget {
  const OrderPackedSuccessfullyScreen({super.key});

  @override
  _OrderPackedSuccessfullyScreenState createState() => _OrderPackedSuccessfullyScreenState();
}


class _OrderPackedSuccessfullyScreenState extends State<OrderPackedSuccessfullyScreen>{
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Column(
          children: [

            ///------------------------ Close icon inside Container section ----------------
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
                       Get.off(()=>const DashboardScaffold())
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

                  ///-------------------------- Close icon ------------------------
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

                    ///-------------------------- Banner image --------------------------
                    Image.asset(ConstantAssets.deliveredImage),

                    ///----------------------- Order is packed successfully ready to be shipped View text--------------------------
                    Padding(
                      padding: EdgeInsets.only(
                        right: SizeConfig.defaultSize * Dimens.size3,
                        left: SizeConfig.defaultSize * Dimens.size3,
                      ),
                      child: Text(ConstantString.orderIsPackedSuccessfullyReadyToBeShipped.tr,
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
                      child: Text(ConstantString.packingCompleteMessage.tr,
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
                             Get.off(()=> const ToBePackedOrdersScaffold())
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
