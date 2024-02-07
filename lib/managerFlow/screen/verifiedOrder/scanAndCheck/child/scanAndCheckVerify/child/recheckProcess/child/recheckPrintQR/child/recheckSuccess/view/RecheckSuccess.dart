import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../../../../../../constants/ConstantString.dart';
import '../../../../../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../../../../../utils/SizeConfig.dart';
import '../../../../../../../../../../homeScreen/VerifierManagerHomeScreenScaffold.dart';
import '../../../../../../../ScanAndCheckScaffold.dart';

class RecheckSuccess extends StatefulWidget {
  const RecheckSuccess({Key? key}) : super(key: key);

  @override
  State<RecheckSuccess> createState() => _RecheckSuccessState();
}

class _RecheckSuccessState extends State<RecheckSuccess> {
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
                  'Sealed Bag is sent to Warehouse',
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
                  'Once your limit is matched all the sealed bags will notify to put in box and place order to sequel',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: ConstantFonts.poppinsMedium,
                      color: ConstantColor.greyColor,
                      fontSize: SizeConfig.defaultSize * Dimens.size1Point6),
                ),
                SizedBox(height: SizeConfig.defaultSize * Dimens.size3),

                ///--------------------- Add more Product button    ---------------------------
                ButtonWidget(
                    text: ConstantString.checkOtherOrders,
                    fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                    minWidth: SizeConfig.defaultSize * Dimens.size40,
                    minHeight: SizeConfig.defaultSize * Dimens.size5,
                    isChecked: true,
                    press: (BuildContext context) {
                      Get.to(() => ScanAndCheckScaffold());
                    })
              ],
            )));
  }
}
