import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/customObject/CustomObject.dart';
import '../constants/ConstantString.dart';
import '../../constants/ConstantAssets.dart';
import '../../constants/ConstantColor.dart';
import '../../constants/ConstantFonts.dart';
import '../../res/Dimens.dart';
import '../../utils/SizeConfig.dart';
import 'ButtonWidget.dart';

class ChangeLanguageDialog extends StatefulWidget {
  final  hindiPress;
  final  engPress;

  ChangeLanguageDialog({Key? key, this.hindiPress, this.engPress})
      : super(key: key);

  @override
  State<ChangeLanguageDialog> createState() => _ChangeLanguageDialogState();
}

class _ChangeLanguageDialogState extends State<ChangeLanguageDialog> {

  @override
  Widget build(BuildContext context) {
    return Container(child: dialogBox());
  }

  /*changeLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return dialogBox();
      },
    );
  }*/

  Widget dialogBox() {
    return Dialog(
        elevation: 0.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Wrap(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size4,
                  ),
                  child: Text(
                    ConstantString.chooseYourLanguage.tr,
                    style: TextStyle(
                        fontFamily: ConstantFonts.poppinsMedium,
                        fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                        color: ConstantColor.blackColor,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.defaultSize * Dimens.size5,
                    right: SizeConfig.defaultSize * Dimens.size5,
                    top: SizeConfig.defaultSize * Dimens.size3,
                    bottom: SizeConfig.defaultSize * Dimens.size2,
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ///--------------------- Hindi Button ---------------------
                        CustomObject.languageSelected == "english" || CustomObject.languageSelected == ""
                            ? ButtonWidget(
                                isChecked: true,
                                text: "हिन्दी".tr,
                                fontSize:
                                    SizeConfig.defaultSize * Dimens.size1Point5,
                                minWidth: SizeConfig.screenWidth,
                                minHeight:
                                    SizeConfig.defaultSize * Dimens.size5,
                                press: (BuildContext context) =>
                                {
                                //languageController.isLoading.value = true,
                                  widget.hindiPress(context)
                                })
                            : ButtonWidget(
                                isChecked: false,
                                text: "हिन्दी".tr,
                                fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                                minWidth: SizeConfig.screenWidth,
                                minHeight: SizeConfig.defaultSize * Dimens.size5,
                                press: (BuildContext context) =>
                                    widget.engPress(context)),

                        ///----------------------- English button --------------------
                        Padding(
                          padding: EdgeInsets.only(
                            top: SizeConfig.defaultSize * Dimens.size1,
                            bottom: SizeConfig.defaultSize * Dimens.size2,
                          ),
                          child: CustomObject.languageSelected == "hindi" || CustomObject.languageSelected == ""
                              ? ButtonWidget(
                                  isChecked: true,
                                  text: "English".tr,
                                  fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                                  minWidth: SizeConfig.screenWidth,
                                  minHeight: SizeConfig.defaultSize * Dimens.size5,
                                  press: (BuildContext context) =>{
                                    //languageController.isLoading.value = true,
                                    widget.engPress(context)})
                              : ButtonWidget(
                                  isChecked: false,
                                  text: "English".tr,
                                  fontSize: SizeConfig.defaultSize *
                                      Dimens.size1Point5,
                                  minWidth: SizeConfig.screenWidth,
                                  minHeight:
                                      SizeConfig.defaultSize * Dimens.size5,
                                  press: (BuildContext context) =>
                                      widget.engPress(context)),
                        )
                        /*{
                              languageController.checkLanguage.value = "hi",
                              Get.back(),
                              setState(() {})

                            }*/
                      ]),
                ),
              ],
            ),
          ],
        ));
  }
}
