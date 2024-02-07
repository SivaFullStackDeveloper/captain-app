import 'package:captain_app/commonWidgets/ButtonWidget.dart';
import 'package:captain_app/constants/ConstantColor.dart';
import 'package:captain_app/managerFlow/screen/refinedOrder/tobeDelivered/TobeDeliveredScaffold.dart';
import 'package:captain_app/res/Dimens.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:captain_app/utils/customObject/CustomObject.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../../../../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../../../../../constants/ConstantFonts.dart';



class PrintQR extends StatefulWidget {
  const PrintQR({Key? key}) : super(key: key);

  @override
  State<PrintQR> createState() => _PrintQRState();
}

class _PrintQRState extends State<PrintQR> {
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
          InkWell(
            onTap: ()=> {
              Get.to(const TobeDeliveredScaffold())
            },
            child: ActionBar(
                title:'Print and Stick'
            ),
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [


              Padding(
                padding:  EdgeInsets.only(
                  top: SizeConfig.defaultSize*Dimens.size6,
                ),
                child: Text('Print QR And Stick To Seal Bags',
                  style: TextStyle(
                    color: ConstantColor.secondaryColor,
                    fontSize: SizeConfig.defaultSize*Dimens.size2Point1,
                    fontFamily: ConstantFonts.poppinsBold,

                  ),
                ),
              ),

              Padding(
                padding:  EdgeInsets.only(
                  top: SizeConfig.defaultSize*Dimens.size2,
                  bottom: SizeConfig.defaultSize*Dimens.size2,

                ),
                child:QrImage(
                data: CustomObject.qrString,
                version: QrVersions.auto,
                size:SizeConfig.defaultSize*Dimens.size25,
              ),),
            ],
          ),
          ButtonWidget(
              text: 'PRINT QR',
              fontSize: SizeConfig.defaultSize*Dimens.size1Point6,
              minWidth: SizeConfig.screenWidth,
              minHeight: SizeConfig.defaultSize*Dimens.size5,
              isChecked: true,
              press: (BuildContext context){



              })
        ],
      ),
    ),

    );
  }
}
