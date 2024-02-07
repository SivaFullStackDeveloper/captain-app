// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../commonWidgets/ButtonWidget.dart';
import '../../../../commonWidgets/CustomVerifierWestartedWidget.dart';
import '../../../../constants/ConstantAssets.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../constants/ConstantString.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';

class RefinerAcceptedScreen extends StatefulWidget {
  const RefinerAcceptedScreen({super.key});

  @override
  State<RefinerAcceptedScreen> createState() => _RefinerAcceptedScreenState();
}

class _RefinerAcceptedScreenState extends State<RefinerAcceptedScreen> {
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
                CustomVerifierWestartedWidget(
                  text: 'Refined And Submitted To Manager',
                  fontfamily: ConstantFonts.poppinsBold,
                  fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
                  color: ConstantColor.secondaryColor,
                ),
                CustomVerifierWestartedWidget(
                  text: 'Thank you for verifying the items, Manager ha your refined metal',
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
            child: ButtonWidget(text:  ConstantString.checkOtherRequests,
                fontSize: SizeConfig.defaultSize * Dimens.size2,
                minWidth: SizeConfig.defaultSize * Dimens.size35,
                minHeight: SizeConfig.defaultSize * Dimens.size5,
                isChecked: true,
                press: (BuildContext context){

                }),
          ),
        ]),
      ),
    );
  }
}
