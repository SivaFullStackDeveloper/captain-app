import 'package:flutter/material.dart';

import '../constants/ConstantColor.dart';
import '../constants/ConstantFonts.dart';
import '../res/Dimens.dart';
import '../utils/SizeConfig.dart';

class ShowImage extends StatelessWidget {

  var title;
  var imgFile;
  ShowImage({Key? key,this.title,this.imgFile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: SizeConfig.defaultSize * Dimens.size1,),
          child: Text(title,
              style: TextStyle(
                fontFamily: ConstantFonts.poppinsBold,
                fontSize: SizeConfig.defaultSize *
                    Dimens.size1Point6,
                color: ConstantColor.secondaryColor,
              )),
        ),
        ClipOval(
            child: Image.file(
              // pickupDetailsController.agentImgFile,
              imgFile,
              width: SizeConfig.defaultSize * Dimens.size14,
              height: SizeConfig.defaultSize * Dimens.size14,
              fit: BoxFit.cover,
            ))
      ],
    );
  }
}
