import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../utils/LocaleController/LocaleController.dart';
import '../../utils/customObject/CustomObject.dart';
import '../constants/ConstantString.dart';
import '../../constants/ConstantAssets.dart';
import '../../constants/ConstantColor.dart';
import '../../constants/ConstantFonts.dart';
import '../../res/Dimens.dart';
import '../../utils/SizeConfig.dart';
import 'ChangeLanguageDialog.dart';
import 'CustomProgressIndicator.dart';

class GoogleTranslateWidget extends StatefulWidget {
  const GoogleTranslateWidget({Key? key}) : super(key: key);

  @override
  State<GoogleTranslateWidget> createState() => _GoogleTranslateWidgetState();
}

class _GoogleTranslateWidgetState extends State<GoogleTranslateWidget> {
  var localeController = Get.put(LocaleController());


  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap:(){
                showDialog(
                  context: context,
                  barrierDismissible: true,
                  builder: (BuildContext context) {
                    return ChangeLanguageDialog(
                      engPress: (BuildContext context){
                        CustomObject.languageSelected = "english";
                        localeController.changeLanguage("en", "IN");
                        Get.back();
                      },
                      hindiPress: (BuildContext context){
                        CustomObject.languageSelected = "hindi";
                        localeController.changeLanguage("hi", "IN");
                        Get.back();
                      },

                    );
                  },
                );
                },
              child: SvgPicture.asset(
                ConstantAssets.translate,
                color: ConstantColor.secondaryColor,
                width:
                SizeConfig.defaultSize * Dimens.size3,
                height:
                SizeConfig.defaultSize * Dimens.size3,
                fit: BoxFit.cover,
              ),
            ),

          ]),

    ));
  }
}
