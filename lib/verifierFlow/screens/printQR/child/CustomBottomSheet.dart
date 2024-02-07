
import 'package:captain_app/constants/ConstantAssets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';

CustomBottomSheet(BuildContext context, bool close) {
  print(close.toString());
  return showModalBottomSheet<void>(
    useRootNavigator: close,
    context: context,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )),
    builder: (BuildContext context) {
      return Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          height: SizeConfig.defaultSize * Dimens.size30,
          width: SizeConfig.defaultSize * Dimens.size40,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(
                  SizeConfig.defaultSize * Dimens.size2,
                ),
                child: Image.asset(ConstantAssets.printer),
              ),
              Padding(
                padding: EdgeInsets.all(
                  SizeConfig.defaultSize * Dimens.size1,
                ),
                child: Text(
                  'Printing in Process',
                  style: TextStyle(
                    color: ConstantColor.secondaryColor,
                    fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontFamily: ConstantFonts.poppinsBold,
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
              Padding(
                padding: EdgeInsets.all(
                  SizeConfig.defaultSize * Dimens.size1,
                ),
                child: Text(
                'Your QR code is printing, please wait don’t close app',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ConstantColor.blackColor,
                    fontSize: SizeConfig.defaultSize * Dimens.size2,
                    fontFamily: ConstantFonts.poppinsRegular,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}