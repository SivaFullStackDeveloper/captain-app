import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../../constants/ConstantString.dart';
import '../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../utils/SizeConfig.dart';
import '../../../../../../homeScreen/VerifierManagerHomeScreenScaffold.dart';
import '../../../../../ShipOrdersScaffold.dart';

class ShippedSuccessfully extends StatefulWidget {
  const ShippedSuccessfully({Key? key}) : super(key: key);

  @override
  State<ShippedSuccessfully> createState() => _ShippedSuccessfullyState();
}

class _ShippedSuccessfullyState extends State<ShippedSuccessfully> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.defaultSize * Dimens.size3,
              left: SizeConfig.defaultSize * Dimens.size2,
              right: SizeConfig.defaultSize * Dimens.size3,
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ///--------------------- close button   ---------------------------
                    IconButton(
                        onPressed: () {
                          Get.to(const VerifierManagerHomeScreenScaffold());
                        },
                        icon: Icon(
                          Icons.close,
                          size: SizeConfig.defaultSize * Dimens.size2Point3,
                        ))
                  ],
                ),

                ///--------------------- Added Success image   ---------------------------
                Image.asset(ConstantAssets.delivery),

                ///--------------------- Product Added    ---------------------------
                Text(
                  'Order is shipped successfully',
                  style: TextStyle(
                      fontFamily: ConstantFonts.poppinsBold,
                      color: ConstantColor.secondaryColor,
                      fontSize: SizeConfig.defaultSize * Dimens.size2),
                ),
                SizedBox(
                  height: SizeConfig.defaultSize * Dimens.size1,
                ),

                ///--------------------- Your Product has been added  ---------------------------
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Your shipment has been picked by',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: ConstantFonts.poppinsRegular,
                          fontSize:
                              SizeConfig.defaultSize * Dimens.size1Point6),
                    ),
                    Text(
                      ' Arshit R,',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: ConstantFonts.poppinsBold,
                          fontSize:
                              SizeConfig.defaultSize * Dimens.size1Point6),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'estimated delivery',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: ConstantFonts.poppinsRegular,
                          fontSize:
                              SizeConfig.defaultSize * Dimens.size1Point6),
                    ),
                    Text(
                      '14-06-22 20:00',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: ConstantFonts.poppinsBold,
                          fontSize:
                              SizeConfig.defaultSize * Dimens.size1Point6),
                    ),
                  ],
                ),
                SizedBox(height: SizeConfig.defaultSize * Dimens.size3),

                ///--------------------- Add more Product button    ---------------------------
                ButtonWidget(
                    text: ConstantString.shipOtherOrders,
                    fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                    minWidth: SizeConfig.defaultSize * Dimens.size40,
                    minHeight: SizeConfig.defaultSize * Dimens.size5,
                    isChecked: true,
                    press: (BuildContext context) {
                      Get.to(() => ShipOrdersScaffold());
                    })
              ],
            )));
  }
}
