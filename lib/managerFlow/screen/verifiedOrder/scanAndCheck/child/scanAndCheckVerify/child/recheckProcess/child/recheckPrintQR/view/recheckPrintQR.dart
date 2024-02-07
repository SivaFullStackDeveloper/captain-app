import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../../../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../../../utils/SizeConfig.dart';
import '../../../../../../../../../../../utils/customObject/CustomObject.dart';
import '../child/recheckSuccess/RecheckSuccessScaffold.dart';


class recheckPrintQR extends StatefulWidget {
  const recheckPrintQR({Key? key}) : super(key: key);

  @override
  State<recheckPrintQR> createState() => _recheckPrintQRState();
}

class _recheckPrintQRState extends State<recheckPrintQR> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: SizeConfig.defaultSize * Dimens.size2,
          top: SizeConfig.defaultSize * Dimens.size2,
          right: SizeConfig.defaultSize * Dimens.size2,
          bottom: SizeConfig.defaultSize * Dimens.size2,
        ),
        child: Column(
          children: [
            InkWell(
              onTap: () => {
                // Get.to(const TobeDeliveredScaffold())
              },
              child: ActionBar(title: 'Print and Stick'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size6,
                  ),
                  child: Text(
                    'Print QR And Stick To Seal Bags',
                    style: TextStyle(
                      color: ConstantColor.secondaryColor,
                      fontSize: SizeConfig.defaultSize * Dimens.size2Point1,
                      fontFamily: ConstantFonts.poppinsBold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size2,
                    bottom: SizeConfig.defaultSize * Dimens.size2,
                  ),
                  child: QrImage(
                    data: CustomObject.qrString,
                    version: QrVersions.auto,
                    size: SizeConfig.defaultSize * Dimens.size25,
                  ),
                ),
              ],
            ),
            ButtonWidget(
                text: 'PRINT QR',
                fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                minWidth: SizeConfig.screenWidth,
                minHeight: SizeConfig.defaultSize * Dimens.size5,
                isChecked: true,
                press: (BuildContext context) {
                  Get.to(() => const RecheckSuccessScaffold());
                })
          ],
        ),
      ),
    );
  }
}
