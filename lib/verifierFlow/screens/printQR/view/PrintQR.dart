import 'package:captain_app/commonWidgets/ButtonWidget.dart';
import 'package:captain_app/constants/ConstantColor.dart';
import 'package:captain_app/constants/ConstantString.dart';
import 'package:captain_app/res/Dimens.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../../../commonWidgets/ActionBar.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../sealTheItems/controller/SealTheItemController.dart';
import '../child/CustomBottomSheet.dart';




class PrintQR extends StatefulWidget {
  const PrintQR({Key? key}) : super(key: key);

  @override
  State<PrintQR> createState() => _PrintQRState();
}

class _PrintQRState extends State<PrintQR> {
  var sealTheItemController = Get.put(SealTheItemController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:

    Padding(
      padding:  EdgeInsets.only(
        left: SizeConfig.defaultSize*Dimens.size2,
        top: SizeConfig.defaultSize*Dimens.size2,
        right: SizeConfig.defaultSize*Dimens.size2,
        bottom: SizeConfig.defaultSize*Dimens.size2,
      ),
      child: Column(

        children: [
          ///-----------------------------------------------App Bar widget---------------------------------
          ActionBar(
              title:'Print and Stick'
          ),
          ///-----------------------------------------------print QR widget---------------------------------
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///-----------------------------------------------Print QR And Stick To Seal Bags text widget---------------------------------
              Padding(
                padding:  EdgeInsets.only(
                  top: SizeConfig.defaultSize*Dimens.size6,
                ),
                child: Text(ConstantString.printQRAndStickToSealBags,
                  style: TextStyle(
                    color: ConstantColor.secondaryColor,
                    fontSize: SizeConfig.defaultSize*Dimens.size2Point1,
                    fontFamily: ConstantFonts.poppinsBold,

                  ),
                ),
              ),
              ///----------------------------------------------- QR code generator  widget---------------------------------
              Padding(
                padding:  EdgeInsets.only(
                  top: SizeConfig.defaultSize*Dimens.size2,
                  bottom: SizeConfig.defaultSize*Dimens.size2,

                ),
                child:QrImage(
                data: sealTheItemController.qrCode.value,
                version: QrVersions.auto,
                size: 300.0,
              ),),
            ],
          ),
          ///-----------------------------------------------Print QR button widget---------------------------------
          ButtonWidget(
              text: ConstantString.printQr.toUpperCase(),
              fontSize: 20,
              minWidth: SizeConfig.screenWidth,
              minHeight: SizeConfig.defaultSize*Dimens.size6,
              isChecked: true,
              press: (BuildContext context){
                CustomBottomSheet(context,false);
              })
        ],
      ),
    ),

    );
  }
}
