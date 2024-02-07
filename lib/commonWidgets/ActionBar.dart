import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../constants/ConstantAssets.dart';
import '../../constants/ConstantColor.dart';
import '../../constants/ConstantFonts.dart';
import '../../res/Dimens.dart';
import '../../utils/SizeConfig.dart';
import '../../res/Dimens.dart';

class ActionBar extends StatelessWidget {
  var title;

  ActionBar({Key? key,this.title}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig.defaultSize * Dimens.size2,
      ),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Row(
              children: [

                InkWell(
                  onTap: ()=> Get.back(),
                  child: Container(
                    width: SizeConfig.defaultSize * Dimens.size5,
                    height: SizeConfig.defaultSize * Dimens.size5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        SizeConfig.defaultSize * Dimens.size1Point1,
                      ),
                      border: Border.all(
                        color: ConstantColor.boxBorderGreyColor, //                   <--- border color
                        width: SizeConfig.defaultSize * Dimens.sizePoint2,
                      ),
                    ),
                    child: SvgPicture.asset(
                        ConstantAssets.backArrow,
                        fit: BoxFit.scaleDown
                    ),
                  ),
                ),

                ///------------------- status ---------------------------
                Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.defaultSize * Dimens.size2,
                  ),
                  child: Text(title,
                      style: TextStyle(
                        fontFamily: ConstantFonts.poppinsBold,
                        fontSize: SizeConfig.defaultSize * Dimens.size2,
                        color: ConstantColor.secondaryColor,
                      )),
                ),
              ],
            ),
            SvgPicture.asset(
              ConstantAssets.googleTranslate,
              color: ConstantColor.secondaryColor,
              width: SizeConfig.defaultSize * Dimens.size3,
              height: SizeConfig.defaultSize * Dimens.size3,
              fit: BoxFit.cover,
            ),

          ]
      ),
    );
  }
}
