import 'package:captain_app/commonWidgets/CustomProgressIndicator.dart';
import 'package:captain_app/constants/ConstantString.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:captain_app/verifierFlow/screens/otpScreen/OtpScreenScaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../commonWidgets/ActionBar.dart';
import '../../../../commonWidgets/ButtonWidget.dart';
import '../../../../commonWidgets/CustomConfirmationTextBox.dart';
import '../../../../commonWidgets/MySeparator.dart';
import '../../../../commonWidgets/UploadGoldTextWidget.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../res/Dimens.dart';
import '../../confirmation/controller/VerifyItemController.dart';
import '../../sealTheItems/SealTheItemScreenScaffold.dart';
import '../../verifyItemChild/controller/MeltController.dart';
import '../controller/UploadGoldController.dart';

class UploadGoldScreen extends StatefulWidget {
  const UploadGoldScreen({Key? key}) : super(key: key);

  @override
  State<UploadGoldScreen> createState() => _UploadGoldScreenState();
}

class _UploadGoldScreenState extends State<UploadGoldScreen> {
  var items = ['Select option', 'Yes', 'No'];
  var uploadGoldController = Get.put(UploadGoldController());
  var meltController = Get.put(MeltController());
  var verifyConfirmationItemController = Get.put(VerifyConfirmationItemController());

  @override
  Widget build(BuildContext context) {
    return verifyConfirmationItemController.isLoading.value ? const CustomProgressIndicator():SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: SizeConfig.defaultSize * Dimens.size1Point8,
          right: SizeConfig.defaultSize * Dimens.size1Point8,
        ),
        child: Obx(
          () => Column(
            children: [
              ///------------------------------------------------- App bar widget  --------------------------------------
              ActionBar(
                title: ConstantString.uploadGold,
              ),
              ///------------------------------------------------- Dropdown Button FormField widget  --------------------------------------
              Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.defaultSize * Dimens.size1Point8,
                  right: SizeConfig.defaultSize * Dimens.size1Point8,
                  top: SizeConfig.defaultSize * Dimens.size1Point8,
                  bottom: SizeConfig.defaultSize * Dimens.size1Point8,
                ),
                child: DropdownButtonFormField(
                    decoration: InputDecoration(
                      hintText: ConstantString.selectOption,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ConstantColor.greyColor,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ConstantColor.greyColor,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ConstantColor.greyColor,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ConstantColor.greyColor,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (val) {
                      if (val.toString() == 'Select option') {
                        uploadGoldController.defaultDeclared.value =
                            ConstantString.waitingForResponse;
                      } else {
                        uploadGoldController.defaultDeclared.value =
                            val.toString();
                      }
                    }),
              ),
              ///------------------------------------------------- Dropdown Button FormField widget  --------------------------------------

              Padding(
                padding: EdgeInsets.all(
                  SizeConfig.defaultSize * Dimens.size1Point8,
                ),
                child: Container(
                  height: SizeConfig.defaultSize * Dimens.size20,
                  decoration: BoxDecoration(
                      color: ConstantColor.lightcolor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(SizeConfig.defaultSize*Dimens.circularRadius),
                        topRight: Radius.circular(SizeConfig.defaultSize*Dimens.circularRadius),
                      )),
                  child: Column(
                    children: [
                      ///-------------------------------------------------  net Weight Text widget  --------------------------------------

                      CustomConfirmationTextBox(
                        color2: ConstantColor.greyColor,
                        color: ConstantColor.blackColor,
                        fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                        fontfamily: ConstantFonts.poppinsRegular,
                        text1: ConstantString.netWeight1,
                        text2: '${meltController.netWeightText}  ${ConstantString.gram}',
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeConfig.defaultSize * Dimens.sizePoint4,
                          left: SizeConfig.defaultSize * Dimens.size1Point2,
                          right: SizeConfig.defaultSize * Dimens.size1Point2,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
///-------------------------------------------------  is It Declared  Text widget  --------------------------------------
                            Text(
                              ConstantString.isItDeclared,
                              style: TextStyle(
                                color: ConstantColor.blackColor,
                                fontFamily: ConstantFonts.poppinsRegular,
                                fontSize:
                                    SizeConfig.defaultSize * Dimens.size1Point8,
                              ),
                            ),
 ///-------------------------------------------------  default Declared  Text widget  --------------------------------------
                            Text(
                              uploadGoldController.defaultDeclared.value,
                              style: TextStyle(
                                color: ConstantColor.greyColor,
                                fontFamily: ConstantFonts.poppinsRegular,
                                fontSize:
                                    SizeConfig.defaultSize * Dimens.size1Point4,
                              ),
                            ),
                          ],
                        ),
                      ),
///-------------------------------------------------  My Separator widget  --------------------------------------
                      Padding(
                        padding: EdgeInsets.all(
                            SizeConfig.defaultSize * Dimens.size1),
                        child:const MySeparator(),
                      ),
///------------------------------------------------- declaration Tax widget  --------------------------------------
                      CustomConfirmationTextBox(
                        color2: ConstantColor.greyColor,
                        color: ConstantColor.blackColor,
                        fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                        fontfamily: ConstantFonts.poppinsRegular,
                        text1: ConstantString.declarationTax,
                        text2: '${meltController.declarationPercentage} ${ConstantString.gram}',
                      ),
///-------------------------------------------------  My Separator widget  --------------------------------------
                      Padding(
                        padding: EdgeInsets.all(
                            SizeConfig.defaultSize * Dimens.size1),
                        child:const  MySeparator(),
                      ),
                    ],
                  ),
                ),
              ),
///-------------------------------------------------  Upload Gold Text Widget widget  --------------------------------------
              const Expanded(
                child: UploadGoldTextWidget(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
 ///-------------------------------------------------  rejected To Sell button widget  --------------------------------------
                  InkWell(
                    onTap: () {
                      verifyConfirmationItemController.isLoading.value=true;
                      verifyConfirmationItemController.sendOTP2();
                    },
                    child: CustomOutlineBorder2(
                      width: SizeConfig.defaultSize * Dimens.size16,
                      color: ConstantColor.secondaryColor,
                      height: SizeConfig.defaultSize * Dimens.size5,
                      text: ConstantString.rejectedToSell,
                    ),
                  ),
///-------------------------------------------------  upload gold button widget  --------------------------------------
                  Padding(
                      padding: EdgeInsets.only(
                          right: SizeConfig.defaultSize * Dimens.size1)),
                  InkWell(
                    onTap: () {
                      uploadGoldController.uploadGold();
                    },
                    child: Container(
                        height: SizeConfig.defaultSize * Dimens.size5,
                        width: SizeConfig.defaultSize * Dimens.size14,
                        decoration: BoxDecoration(
                            color: ConstantColor.secondaryColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Center(
                          child: Text(
                            ConstantString.accepted.toUpperCase(),
                            style: TextStyle(
                                color: ConstantColor.whiteColor,
                                fontFamily: ConstantFonts.poppinsMedium),
                          ),
                        )),
                  ),
                ],
              ),
              Padding(
                  padding: EdgeInsets.only(
                      bottom: SizeConfig.defaultSize * Dimens.size2)),
            ],
          ),
        ),
      ),
    );
  }
}
