import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../../constants/ConstantString.dart';
import '../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../utils/SizeConfig.dart';
import '../../../../../../homeScreen/VerifierManagerHomeScreenScaffold.dart';
import '../../../../../AssignToCaptainScaffold.dart';

class CustomerNotifiedAssigning extends StatefulWidget {
  const CustomerNotifiedAssigning({Key? key}) : super(key: key);

  @override
  State<CustomerNotifiedAssigning> createState() =>
      _CustomerNotifiedAssigningState();
}

class _CustomerNotifiedAssigningState extends State<CustomerNotifiedAssigning> {
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
                Image.asset(ConstantAssets.success),

                ///--------------------- Product Added    ---------------------------
                Text(
                  ConstantString.customerNotified,
                  style: TextStyle(
                      fontFamily: ConstantFonts.poppinsBold,
                      color: ConstantColor.secondaryColor,
                      fontSize: SizeConfig.defaultSize * Dimens.size2),
                ),
                SizedBox(
                  height: SizeConfig.defaultSize * Dimens.size1,
                ),

                ///--------------------- Your Product has been added  ---------------------------
                Text(
                  'Request to verify is assigned to Yuvaraj, customer got notified',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: ConstantFonts.poppinsMedium,
                      color: ConstantColor.greyColor,
                      fontSize: SizeConfig.defaultSize * Dimens.size1Point6),
                ),
                SizedBox(height: SizeConfig.defaultSize * Dimens.size3),

                ///--------------------- Add more Product button    ---------------------------
                ButtonWidget(
                    text: ConstantString.checkOtherHandOverOrders,
                    fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                    minWidth: SizeConfig.defaultSize * Dimens.size40,
                    minHeight: SizeConfig.defaultSize * Dimens.size5,
                    isChecked: true,
                    press: (BuildContext context) {
                      Get.to(() => AssignToCaptainScaffold());
                    })
              ],
            )));
  }
}
