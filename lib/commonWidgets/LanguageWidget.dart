import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/ConstantAssets.dart';
import '../constants/ConstantColor.dart';
import '../constants/ConstantFonts.dart';
import '../res/Dimens.dart';
import '../utils/SizeConfig.dart';

class LanguageWidget extends StatelessWidget {
  const LanguageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.defaultSize * Dimens.size2,
        right: SizeConfig.defaultSize * Dimens.size2,
        top: SizeConfig.defaultSize * Dimens.size2,
      ),
      child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: ()=> Get.back(),
                  child: SvgPicture.asset(
                      ConstantAssets.close,
                      color: ConstantColor.secondaryColor,
                      fit: BoxFit.scaleDown
                  ),
                ),

                ///------------------- status ---------------------------
                Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.defaultSize * Dimens.size2,
                  ),
                  child: Text("Change Language",
                      style: TextStyle(
                        fontFamily: ConstantFonts.poppinsRegular,
                        fontSize: SizeConfig.defaultSize * Dimens.size2,
                        color: ConstantColor.blackColor,
                      )),
                ),
              ],
            ),
            Expanded(
              child: GridView.builder(
                  padding: EdgeInsets.only(
                    left: SizeConfig.defaultSize * Dimens.size1,
                    right: SizeConfig.defaultSize * Dimens.size1,
                    top: SizeConfig.defaultSize * Dimens.size2,
                  ),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: 8,
                  itemBuilder: (BuildContext ctx, index) {
                    return Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: ConstantColor.extraLightYellowColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Text("English",
                          style: TextStyle(
                            fontFamily: ConstantFonts.poppinsMedium,
                            fontSize: SizeConfig.defaultSize * Dimens.size2,
                            color: ConstantColor.secondaryColor,
                          )),
                    );
                  }
              ),
            )
          ]
      ),
    );
  }
}
