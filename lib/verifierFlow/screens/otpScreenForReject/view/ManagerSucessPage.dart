// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../commonWidgets/ButtonWidget.dart';
import '../../../../commonWidgets/CustomVerifierWestartedWidget.dart';
import '../../../../constants/ConstantAssets.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';

class ManagerSuccessPage extends StatefulWidget {
  const ManagerSuccessPage({super.key});

  @override
  State<ManagerSuccessPage> createState() => _ManagerSuccessPageState();
}

class _ManagerSuccessPageState extends State<ManagerSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          /// -------------------------------------  Custom Outline Close Button widget ----------------------------------------
          CustomOutlineCloseButton(
            color: ConstantColor.greyColor,
            icon: Icons.close,
          ),
          /// -------------------------------------  cancel Order Image widget ----------------------------------------
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
          /// -------------------------------------  Items Are Hand Overed , To Manager Text widget ----------------------------------------
          CustomVerifierWestartedWidget(
            text: ConstantString.itemsAreHandOveredToManager,
            fontfamily: ConstantFonts.poppinsBold,
            fontsize: SizeConfig.defaultSize * Dimens.size1Point8,
            color: ConstantColor.darkSecondaryColor,
          ),
          /// -------------------------------------  Submitted the items verified to manager Text widget ----------------------------------------
          CustomVerifierWestartedWidget(
            text: ConstantString.submittedTheItemsVerifiedToManager,
            fontfamily: ConstantFonts.poppinsMedium,
            fontsize: SizeConfig.defaultSize * Dimens.size1Point6,
            color: ConstantColor.blackColor,
          ),
          /// -------------------------------------  check Other Requests button widget ----------------------------------------
          Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.defaultSize * Dimens.size8,
              left: SizeConfig.defaultSize * Dimens.size2,
              right: SizeConfig.defaultSize * Dimens.size2,
            ),
            child: InkWell(
              onTap: () {},
              child: Container(
                height: SizeConfig.defaultSize * Dimens.size8,
                width: SizeConfig.defaultSize * Dimens.size35,
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.all(Radius.circular(Dimens.circularRadius)),
                  color: ConstantColor.secondaryColor,
                ),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size2,
                      left: SizeConfig.defaultSize * Dimens.size2,
                      right: SizeConfig.defaultSize * Dimens.size2,
                      bottom: SizeConfig.defaultSize * Dimens.size2,
                    ),
                    child: Text(
                      ConstantString.checkOtherRequests,
                      style: TextStyle(
                        fontFamily: ConstantFonts.poppinsMedium,
                        fontSize: SizeConfig.defaultSize * Dimens.size2,
                        color: ConstantColor.whiteColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
