import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../../../commonWidgets/ReportShareSectionWidget.dart';
import '../../../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../../constants/ConstantString.dart';
import '../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../utils/SizeConfig.dart';
import '../../../../../PutInTheBoxScaffold.dart';


class OrderReadyToShip extends StatefulWidget {
  const OrderReadyToShip({Key? key}) : super(key: key);

  @override
  State<OrderReadyToShip> createState() => _OrderReadyToShipState();
}

class _OrderReadyToShipState extends State<OrderReadyToShip> {
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
                          Get.to(const PutInTheBoxScaffold());
                        },
                        icon: Icon(
                          Icons.close,
                          size: SizeConfig.defaultSize * Dimens.size2Point3,
                        ))
                  ],
                ),
                Image.asset(ConstantAssets.delivery),
                Text(
                  ConstantString.orderReadyToShip,
                  style: TextStyle(
                      fontFamily: ConstantFonts.poppinsBold,
                      color: ConstantColor.secondaryColor,
                      fontSize: SizeConfig.defaultSize * Dimens.size2),
                ),
                SizedBox(
                  height: SizeConfig.defaultSize * Dimens.size1,
                ),
                Text(
                  ConstantString.yourOrderToRefiner,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: ConstantFonts.poppinsMedium,
                      color: ConstantColor.greyColor,
                      fontSize: SizeConfig.defaultSize * Dimens.size1Point6),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ReportShareSectionWidget(
                          text: "download",
                          icon: ConstantAssets.download,
                          press: (context) {}),
                      ReportShareSectionWidget(
                          text: "watsapp",
                          icon: ConstantAssets.watsApp,
                          press: (context) {}),
                      ReportShareSectionWidget(
                          text: "share",
                          icon: ConstantAssets.share2,
                          press: (context) {}),
                      ReportShareSectionWidget(
                          text: "mail",
                          icon: ConstantAssets.mail,
                          press: (context) {}),
                    ],
                  ),
                ),
                SizedBox(height: SizeConfig.defaultSize * Dimens.size3),
                ButtonWidget(
                    text: ConstantString.checkOtherOrdersToShip,
                    fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                    minWidth: SizeConfig.defaultSize * Dimens.size40,
                    minHeight: SizeConfig.defaultSize * Dimens.size5,
                    isChecked: true,
                    press: (BuildContext context) {
                      Get.to(() => PutInTheBoxScaffold());
                      // Get.to(() => RescheduleOrdersScaffold());
                    })
              ],
            )));
  }
}
