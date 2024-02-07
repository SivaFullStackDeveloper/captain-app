// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:captain_app/constants/ConstantAssets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../commonWidgets/CustomAppBarBackIcon.dart';
import '../../../../commonWidgets/NewVerificationCard.dart';
import '../../../../commonWidgets/VerifierCustomWidgets.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../submittedToManger/SubmittedToMangerScreenScaffold.dart';

class VerifierHomeScreen extends StatefulWidget {
  const VerifierHomeScreen({super.key});

  @override
  State<VerifierHomeScreen> createState() => _VerifierHomeScreenState();
}

class _VerifierHomeScreenState extends State<VerifierHomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child:
            //------------------------------- Main Padding--------------------------------

            //------------------- Main column ----------------------------------
            Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //------ Welcome greetings and User name and Translate Icon ----------------------------

        Padding(
          padding: EdgeInsets.only(
            top: SizeConfig.defaultSize * Dimens.size1,
            left: SizeConfig.defaultSize * Dimens.size2,
            right: SizeConfig.defaultSize * Dimens.size2,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomAppBarBackIcon(),
              Row(
                children: [
                  Text(
                    ConstantString.hi,
                    style: TextStyle(
                        fontFamily: ConstantFonts.poppinsRegular,
                        fontSize: SizeConfig.defaultSize * Dimens.size1Point8),
                  ),
                  Text(
                    ConstantString.userName,
                    style: TextStyle(
                        fontFamily: ConstantFonts.poppinsBold,
                        fontSize: SizeConfig.defaultSize * Dimens.size1Point8),
                  ),
                  Text(
                    ConstantString.hiEmoji,
                    style: TextStyle(
                      fontFamily: ConstantFonts.poppinsMedium,
                      fontSize: SizeConfig.defaultSize * Dimens.size2Point5,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    ConstantAssets.googleTranslate,
                  ),
                ],
              ),
            ],
          ),
        ),

        //------------------------------ Order Containers(Recived, Checked, Refunded, Rejected) -----------------------

        Padding(
          padding: EdgeInsets.only(
            top: SizeConfig.defaultSize * Dimens.size1,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  //Get.to(()=>());
                },
                child: VerifierCustomWidget(
                  iconTrue: false,
                  image: ConstantAssets.toBeShipped,
                  toBeVerified: ConstantString.toBeVerifiedString,
                  number: '60',
                ),
              ),
              InkWell(
                onTap: () {
                  Get.to(() => SubmittedToMangerScreenScaffold());
                },
                child: VerifierCustomWidget(
                  icon: Icons.search,
                  iconTrue: true,
                  image: ConstantAssets.toBeShipped,
                  toBeVerified: ConstantString.submittedString,
                  number: '56',
                ),
              ),
            ],
          ),
        ),

        Padding(
          padding: EdgeInsets.only(
            top: SizeConfig.defaultSize * Dimens.size2,
            left: SizeConfig.defaultSize * Dimens.size4,
            right: SizeConfig.defaultSize * Dimens.size2,
          ),
          child: Text(
            'New Verifications',
            style: TextStyle(
                color: ConstantColor.secondaryColor,
                fontFamily: ConstantFonts.poppinsBold,
                fontSize: SizeConfig.defaultSize * Dimens.size2),
          ),
        ),

        Expanded(
          flex: 1,
          child: NewVerificationCard(),
        ),
      ],
    ));
  }
}
