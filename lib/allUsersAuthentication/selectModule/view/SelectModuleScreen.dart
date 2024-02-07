import 'package:captain_app/constants/ConstantString.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../../../../../res/Dimens.dart';
import '../../../../../../utils/SizeConfig.dart';
import '../../../../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../constants/ConstantFonts.dart';
import '../../../commonWidgets/ButtonWidget.dart';
import '../controller/SelectModuleController.dart';
import '../widget/SelectModuleCards.dart';

class SelectModuleScreen extends StatefulWidget {
  const SelectModuleScreen({super.key});

  @override
  _SelectModuleScreenState createState() => _SelectModuleScreenState();
}

class _SelectModuleScreenState extends State<SelectModuleScreen> {

  var selectModuleControllerController = Get.put(
      SelectModuleControllerController());


  @override
  Widget build(BuildContext context) {
    return Obx(() => selectModuleControllerController.isLoading.value
        ? const CustomProgressIndicator()
        : WillPopScope(
        onWillPop: exitAppDialog,
          child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.defaultSize * Dimens.size2,
              right: SizeConfig.defaultSize * Dimens.size2,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                ///------------------- select One Module To Proceed text ------------
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size3,
                    ),
                    child: Text(ConstantString.selectOneModuleToProceed.tr,
                        style: TextStyle(
                          fontFamily: ConstantFonts.poppinsBold,
                          fontSize: SizeConfig.defaultSize * Dimens.size2,
                          color: ConstantColor.secondaryColor,
                        )),
                  ),
                ),



                Expanded(
                  flex: 10,
                  child: selectModuleControllerController.moduleListLength
                      .value != 0
                      ? GridView.count(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      childAspectRatio: (1.1 / 1.9),
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 10,
                      children: List.generate(
                          selectModuleControllerController.allModuleList.length, (index) {
                        var item = selectModuleControllerController
                            .allModuleList[index];
                        return SelectModuleCards(
                          type: item,
                        );
                      })) : Center(
                    child: Text(ConstantString.noModuleFound.tr, style: TextStyle(
                        fontSize: SizeConfig.defaultSize * Dimens.size2),),
                  ),
                )
              ],
            ),
          )),
        ));
  }

  ///----------------------------- Exit App Dialog box -------------------------
  Future<bool> exitAppDialog() async {
    return await showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        // return object of type Dialog
        return Dialog(
            elevation: 0.0,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            child: Wrap(
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [


                    Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size4,
                      ),
                      child: Text(
                        ConstantString.exitApp.tr,
                        style: TextStyle(
                            fontFamily: ConstantFonts.poppinsMedium,
                            fontSize:
                            SizeConfig.defaultSize * Dimens.size2,
                            color: ConstantColor.blackColor,
                            fontWeight: FontWeight.w900),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size1,
                      ),
                      child: Text(
                        ConstantString.toBeReceived.tr,
                        style: TextStyle(
                          fontFamily: ConstantFonts.poppinsRegular,
                          fontSize:
                          SizeConfig.defaultSize * Dimens.size1Point5,
                          color: ConstantColor.blackColor,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size2,
                        bottom: SizeConfig.defaultSize * Dimens.size2,

                      ),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ///--------------------- No Cancel ---------------------
                            InkWell(
                              onTap: () => {Get.back()},
                              child: Text(
                                ConstantString.no.tr,
                                style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsMedium,
                                    fontSize:
                                    SizeConfig.defaultSize * Dimens.size1Point3,
                                    color: ConstantColor.darkSecondaryColor,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),

                            ///----------------------- Yes button --------------------
                            ButtonWidget(
                                isChecked: true,
                                text: ConstantString.yes.tr,
                                fontSize: SizeConfig.defaultSize * Dimens.size1Point2,
                                minWidth: SizeConfig.defaultSize * Dimens.size10,
                                minHeight: SizeConfig.defaultSize * Dimens.size4,
                                press: (BuildContext context) =>
                                {
                                  SystemNavigator.pop()
                                }
                            ),
                          ]),
                    ),
                  ],
                ),

              ],
            )
        );
      },
    );
  }
}
