import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/ConstantColor.dart';
import '../../../constants/ConstantFonts.dart';
import '../constants/ConstantString.dart';
import '../../../res/Dimens.dart';
import '../../../utils/SizeConfig.dart';
import '../verifierFlow/screens/verifyItemChild/controller/MeltController.dart';

class UploadGoldTextWidget extends StatefulWidget {
  const UploadGoldTextWidget({Key? key}) : super(key: key);

  @override
  State<UploadGoldTextWidget> createState() => _UploadGoldTextWidgetState();
}

class _UploadGoldTextWidgetState extends State<UploadGoldTextWidget> {
  var meltController = Get.put(MeltController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig.defaultSize * Dimens.size2Point8,
      ),
      child: Column(
        children: [
          Text('Upload Gold in ' + ConstantString.gram + 's',
              style: TextStyle(
                fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                fontFamily: ConstantFonts.poppinsRegular,
                color: ConstantColor.blackColor,
              )),
          Text('${meltController.declarationPercentage} ' + ConstantString.gram,
              style: TextStyle(
                fontSize: SizeConfig.defaultSize * Dimens.size5,
                fontFamily: ConstantFonts.poppinsMedium,
                color: ConstantColor.blackColor,
              ))
        ],
      ),
    );
  }
}
