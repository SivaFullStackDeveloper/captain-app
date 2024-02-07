import 'package:captain_app/constants/ConstantAssets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../../utils/SizeConfig.dart';





class ToManagerGoldBarOrderList extends StatefulWidget {
  const ToManagerGoldBarOrderList({Key? key}) : super(key: key);

  @override
  State<ToManagerGoldBarOrderList> createState() => _ToManagerGoldBarOrderListState();
}

class _ToManagerGoldBarOrderListState extends State<ToManagerGoldBarOrderList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: 2,
        itemBuilder: (context, var index) {
          SizeConfig().init(context);
          return Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.defaultSize * Dimens.size1,
                left: SizeConfig.defaultSize * Dimens.size2,
                right: SizeConfig.defaultSize * Dimens.size2,
              ),
              child: InkWell(
                onTap: () {
                  // Get.to(()=> const PickUpOrderDetailsScaffold());
                },
                child: Container(
                  height: SizeConfig.defaultSize * Dimens.size8,
                  width: SizeConfig.defaultSize * Dimens.size18,
                  decoration: BoxDecoration(
                    color: ConstantColor.extraLightYellowColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(Dimens.circularRadius),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size1,
                      left: SizeConfig.defaultSize * Dimens.size2,
                      right: SizeConfig.defaultSize * Dimens.size2,
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'B456798',
                              style: TextStyle(
                                  color: ConstantColor.blackColor,
                                  fontFamily: ConstantFonts.poppinsBold,
                                  fontSize: SizeConfig.defaultSize * Dimens.size2
                              ),
                            ),
                            Text(
                              'Weight : 1000.200 GRAM',
                              style: TextStyle(
                                  color: ConstantColor.blackColor,
                                  fontFamily: ConstantFonts.poppinsMedium,
                                  fontSize: SizeConfig.defaultSize * Dimens.size1Point2),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: SizeConfig.defaultSize * Dimens.size8,
                        ),
                        // SizedBox(
                        //     child: SvgPicture.asset(
                        //       ConstantAssets.edit,
                        //       height: SizeConfig.defaultSize * Dimens.size2,
                        //       color: ConstantColor.greyColor,
                        //     )
                        // ),
                      ],
                    ),
                  ),
                ),
              ));
        });
  }
}






