import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/ConstantAssets.dart';
import '../constants/ConstantColor.dart';
import '../constants/ConstantFonts.dart';
import '../res/Dimens.dart';
import '../utils/SizeConfig.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: SizeConfig.defaultSize * Dimens.size2,
            left: SizeConfig.defaultSize * Dimens.size2,
            right: SizeConfig.defaultSize * Dimens.size2,
          ),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: SizeConfig.defaultSize * Dimens.size6,
                height: SizeConfig.defaultSize * Dimens.size6,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: ConstantColor.whiteColor),

                ///-------------------- Icons inside circle -----------------
                child: Image.asset(ConstantAssets.userProfilePicture,
                    height: SizeConfig.defaultSize * Dimens.size1,
                    width: SizeConfig.defaultSize * Dimens.size1,
                    fit: BoxFit.scaleDown),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Yuvaraj Poojarey',
                    style: TextStyle(
                        color: ConstantColor.blackColor,
                        fontFamily: ConstantFonts.poppinsMedium,
                        fontSize: SizeConfig.defaultSize * Dimens.size1Point5),
                  ),
                  Text(
                    '+91-7673925340',
                    style: TextStyle(
                        color: ConstantColor.greyColor,
                        fontFamily: ConstantFonts.poppinsMedium,
                        fontSize: SizeConfig.defaultSize * Dimens.size1Point2),
                  ),
                ],
              ),
              SizedBox(
                width: SizeConfig.defaultSize * Dimens.size8,
              ),
              InkWell(
                  onTap: (){
                    Get.back();
                  },
                  child: SvgPicture.asset(
                    ConstantAssets.close,
                    height: SizeConfig.defaultSize * Dimens.size2,
                    color: ConstantColor.secondaryColor,
                  )
              ),
            ],
          ),
        ),
        Padding( padding: EdgeInsets.only(
          top: SizeConfig.defaultSize * Dimens.size2,
          left: SizeConfig.defaultSize * Dimens.size2,
          right: SizeConfig.defaultSize * Dimens.size2,
        ),
          child: Column(
            children: [
              ListTile(
                leading: SvgPicture.asset(ConstantAssets.settings),
                title: Text(
                  'My Profile',
                  style: TextStyle(
                      color: ConstantColor.blackColor,
                      fontFamily: ConstantFonts.poppinsMedium,
                      fontSize: SizeConfig.defaultSize * Dimens.size2),
                ),
              ),
              ListTile(
                leading: SvgPicture.asset(ConstantAssets.faq),
                title: Text(
                  'FAQ',
                  style: TextStyle(
                      color: ConstantColor.blackColor,
                      fontFamily: ConstantFonts.poppinsMedium,
                      fontSize: SizeConfig.defaultSize * Dimens.size2),
                ),
              ),
              ListTile(
                leading: SvgPicture.asset(ConstantAssets.support),
                title: Text(
                  'Help and Support',
                  style: TextStyle(
                      color: ConstantColor.blackColor,
                      fontFamily: ConstantFonts.poppinsMedium,
                      fontSize: SizeConfig.defaultSize * Dimens.size2),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
