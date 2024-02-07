// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../../commonWidgets/CustomVerifierWestartedWidget.dart';
import '../../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../res/Dimens.dart';
import '../../../../../../../../utils/SizeConfig.dart';
import '../../../../../RefinerHomeScreenScaffold.dart';


class ManagerAcceptedScreen extends StatefulWidget {
  const ManagerAcceptedScreen({super.key});

  @override
  State<ManagerAcceptedScreen> createState() => _ManagerAcceptedScreenState();
}

class _ManagerAcceptedScreenState extends State<ManagerAcceptedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          CustomOutlineCloseButton(
            color: ConstantColor.greyColor,
            icon: Icons.close,
          ),
          Flexible(
            flex: 7,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size2,
                    left: SizeConfig.defaultSize * Dimens.size2,
                    right: SizeConfig.defaultSize * Dimens.size2,
                  ),
                  child: InkWell(
                    onTap: (){
                      Get.back();
                    },
                    child: Container(
                        height: SizeConfig.defaultSize * Dimens.size30,
                        width: SizeConfig.defaultSize * Dimens.size40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(Dimens.circularRadius),
                          ),
                        ),
                        child: Image.asset(
                          ConstantAssets.cancelOrder,
                        )),
                  ),
                ),
                CustomVerifierWestartedWidget(
                  text: 'Handed over To Manager',
                  fontfamily: ConstantFonts.poppinsBold,
                  fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                  color: ConstantColor.secondaryColor,
                ),
                CustomVerifierWestartedWidget(
                  text: 'Your checking of pickup is over, and items handovered to manager',
                  fontfamily: ConstantFonts.poppinsMedium,
                  fontsize: SizeConfig.defaultSize * Dimens.size1Point6,
                  color: ConstantColor.blackColor,
                ),

              ],
            ),
          ),


          Padding(
            padding:  EdgeInsets.only(
              bottom: SizeConfig.defaultSize * Dimens.size2,
            ),
            child: ButtonWidget(text:  "CHECK OTHER ORDERS",
                fontSize: SizeConfig.defaultSize * Dimens.size2,
                minWidth: SizeConfig.defaultSize * Dimens.size35,
                minHeight: SizeConfig.defaultSize * Dimens.size5,
                isChecked: true,
                press: (BuildContext context){
                    Get.offAll(RefinerHomeScreenScaffold());
                }),
          ),
        ]),
      ),
    );
  }
}
