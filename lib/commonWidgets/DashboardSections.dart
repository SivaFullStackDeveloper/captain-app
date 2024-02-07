import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/ConstantString.dart';
import '../../constants/ConstantAssets.dart';
import '../../constants/ConstantColor.dart';
import '../../constants/ConstantFonts.dart';
import '../../res/Dimens.dart';
import '../../utils/SizeConfig.dart';
import 'CircleContainerWithImage.dart';

class DashboardSections extends StatelessWidget {
  var image;
  var title;
  var value;

  DashboardSections({Key? key, this.image, this.title, this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize * Dimens.size18,
      height: SizeConfig.defaultSize * Dimens.size18,
      child: Padding(
        padding: EdgeInsets.only(right: SizeConfig.defaultSize * Dimens.size1),
        child: Container(
          width: SizeConfig.screenWidth,
          height: SizeConfig.defaultSize * Dimens.size20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                SizeConfig.defaultSize * Dimens.size1Point3,
              ),
              color: ConstantColor.lightYellowColor),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.defaultSize * Dimens.size2),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ///------------------- Image ---------------------------

                        CircleContainerWithImage(
                          image: image,
                        ),

                        ///------------------- title ---------------------------
                        Text(title,
                          textAlign: TextAlign.left,
                            style: TextStyle(
                              fontFamily: ConstantFonts.poppinsMedium,
                              fontSize:
                                  SizeConfig.defaultSize * Dimens.size1Point4,
                              color: ConstantColor.secondaryColor,
                            )),

                        ///-------------------- Value with right arrow -----------------
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(value,
                                style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsBold,
                                  fontSize: SizeConfig.defaultSize *
                                      Dimens.size3Point2,
                                  color: ConstantColor.blackColor,
                                )),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: SizeConfig.defaultSize * Dimens.size6),
                              child: SvgPicture.asset(
                                ConstantAssets.rightArrow,
                                height: SizeConfig.defaultSize * Dimens.size2,
                                width: SizeConfig.defaultSize * Dimens.size2,
                              ),
                            ),
                          ],
                        )
                      ]),
                ),
              ]),
        ),
      ),
    );
  }
}
/*
class DashboardSections2 extends StatelessWidget {
  var image;
  var title;
  var value;

  DashboardSections2({Key? key, this.image, this.title, this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize * Dimens.size12,
      height: SizeConfig.defaultSize * Dimens.size12,
      tobeReceived: Padding(
        padding: EdgeInsets.only(right: SizeConfig.defaultSize * Dimens.size1),
        tobeReceived: Container(
          width: SizeConfig.screenWidth,
          height: SizeConfig.defaultSize * Dimens.size20,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                SizeConfig.defaultSize * Dimens.size1Point3,
              ),
              color: ConstantColor.lightYellowColor),
          tobeReceived: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: SizeConfig.defaultSize * Dimens.size1),
                  tobeReceived: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ///------------------- Image ---------------------------

                        CircleContainerWithImage2(
                          image: image,
                        ),

                        ///------------------- title ---------------------------
                        Text(title,
                            style: TextStyle(
                              fontFamily: ConstantFonts.poppinsMedium,
                              fontSize:
                                  SizeConfig.defaultSize * Dimens.size1Point3,
                              color: ConstantColor.secondaryColor,
                            )),

                        ///-------------------- Value with right arrow -----------------
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(value,
                                style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsBold,
                                  fontSize: SizeConfig.defaultSize *
                                      Dimens.size2Point2,
                                  color: ConstantColor.blackColor,
                                )),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: SizeConfig.defaultSize * Dimens.size4),
                              tobeReceived: SvgPicture.asset(
                                ConstantAssets.rightArrow,
                                height:
                                    SizeConfig.defaultSize * Dimens.size1Point4,
                                width: SizeConfig.defaultSize * Dimens.size1,
                              ),
                            ),
                          ],
                        )
                      ]),
                ),
              ]),
        ),
      ),
    );
  }
}*/
