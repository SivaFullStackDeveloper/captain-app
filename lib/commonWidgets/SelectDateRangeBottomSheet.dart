import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../constants/ConstantAssets.dart';
import '../constants/ConstantColor.dart';
import '../constants/ConstantFonts.dart';
import '../res/Dimens.dart';
import '../utils/SizeConfig.dart';
import '../utils/commonController/CommonController.dart';

class SelectDateRangeBottomSheet extends StatefulWidget {
  const SelectDateRangeBottomSheet({Key? key}) : super(key: key);

  @override
  State<SelectDateRangeBottomSheet> createState() => _SelectDateRangeBottomSheetState();
}

class _SelectDateRangeBottomSheetState extends State<SelectDateRangeBottomSheet> {
  var commonController = Get.put(CommonController());


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2.7 +
          MediaQuery.of(context).viewInsets.bottom,
      decoration: BoxDecoration(
        color: ConstantColor.lightYellowColor,
        borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.defaultSize * Dimens.size2,
            ),
            child: Container(
              width: SizeConfig.defaultSize * Dimens.size10,
              height: SizeConfig.defaultSize * Dimens.sizePoint5,
              decoration: BoxDecoration(
                color: ConstantColor.lightSecondaryColor,
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(
                        SizeConfig.defaultSize * Dimens.size1),
                    right: Radius.circular(
                        SizeConfig.defaultSize * Dimens.size1)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.defaultSize * Dimens.size2,
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: SizeConfig.defaultSize * Dimens.size2,
                right: SizeConfig.defaultSize * Dimens.size2,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Select Date Range".tr,
                      style: TextStyle(
                        fontSize: SizeConfig.defaultSize * Dimens.size2,
                        color: ConstantColor.blackColor,
                        fontFamily: ConstantFonts.poppinsMedium,
                      )),


                  ///--------------------Today ------------------------
                  InkWell(
                    onTap: ()=> {
                      commonController.getFormattedDateForApi(commonController.today.value,"")
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size1Point5,
                      ),
                      child: Text("Today, ${commonController.today.value.tr}",
                          style: TextStyle(
                            fontSize: SizeConfig.defaultSize * Dimens.size1Point4,
                            color: ConstantColor.blackColor,
                            fontFamily: ConstantFonts.poppinsRegular,
                          )),
                    ),
                  ),


                  ///--------------------Border ------------------------
                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size1Point5,
                    ),
                    child: SizedBox(
                      width: SizeConfig.screenWidth,
                      height: 0.6,
                      child:  DecoratedBox(
                        decoration: BoxDecoration(
                            color: ConstantColor.lightGreyColor
                        ),
                      ),
                    ),
                  ),


                  ///--------------------Yesterday ------------------------
                  InkWell(
                    onTap: ()=> {
                      commonController.getFormattedDateForApi(commonController.today.value,"")

                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size1,
                      ),
                      child: Text("Yesterday, ${commonController.yesterday.value.tr}".tr,
                          style: TextStyle(
                            fontSize: SizeConfig.defaultSize * Dimens.size1Point4,
                            color: ConstantColor.blackColor,
                            fontFamily: ConstantFonts.poppinsRegular,
                          )),
                    ),
                  ),


                  ///--------------------Border ------------------------
                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size1Point3,
                    ),
                    child: SizedBox(
                      width: SizeConfig.screenWidth,
                      height: 0.6,
                      child:  DecoratedBox(
                        decoration: BoxDecoration(
                            color: ConstantColor.greyColor
                        ),
                      ),
                    ),
                  ),


                  ///--------------------This week ------------------------
                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size1,
                    ),
                    child: Text("This Week, ${commonController.week.value.tr} - ${commonController.today.value.tr}".tr,
                        style: TextStyle(
                          fontSize: SizeConfig.defaultSize * Dimens.size1Point4,
                          color: ConstantColor.blackColor,
                          fontFamily: ConstantFonts.poppinsRegular,
                        )),
                  ),

                  ///--------------------Border ------------------------
                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size1Point3,
                    ),
                    child: SizedBox(
                      width: SizeConfig.screenWidth,
                      height: 0.6,
                      child:  DecoratedBox(
                        decoration: BoxDecoration(
                            color: ConstantColor.greyColor
                        ),
                      ),
                    ),
                  ),

                  ///--------------------This Month ------------------------
                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size1,
                    ),
                    child: Text("This Month, ${commonController.month.value.tr}".tr,
                        style: TextStyle(
                          fontSize: SizeConfig.defaultSize * Dimens.size1Point4,
                          color: ConstantColor.blackColor,
                          fontFamily: ConstantFonts.poppinsRegular,
                        )),
                  ),


                  ///--------------------Border ------------------------
                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size1Point3,
                    ),
                    child: SizedBox(
                      width: SizeConfig.screenWidth,
                      height: 0.6,
                      child:  DecoratedBox(
                        decoration: BoxDecoration(
                            color: ConstantColor.greyColor
                        ),
                      ),
                    ),
                  ),


                  ///---------------------- Select Date Range ------------------
                  InkWell(
                    onTap: ()=> {
                      commonController.selectDate(context)
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: SizeConfig.defaultSize * Dimens.size1,
                          ),
                          child: Text("Select Date Range".tr,
                              style: TextStyle(
                                fontSize: SizeConfig.defaultSize * Dimens.size1Point4,
                                color: ConstantColor.blackColor,
                                fontFamily: ConstantFonts.poppinsRegular,
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: SizeConfig.defaultSize * Dimens.size2,
                          ),
                          child: RotatedBox(
                              quarterTurns: 2,
                              child: SvgPicture.asset(ConstantAssets.backArrow,width: 5,)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
