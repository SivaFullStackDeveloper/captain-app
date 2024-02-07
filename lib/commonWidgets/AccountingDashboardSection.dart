import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants/ConstantAssets.dart';
import '../../constants/ConstantColor.dart';
import '../../constants/ConstantFonts.dart';
import '../../res/Dimens.dart';
import '../../utils/SizeConfig.dart';
import 'CircleContainerWithImage.dart';

class AccountingDashboardSections extends StatelessWidget {
  var title;
  var value;

  AccountingDashboardSections({Key? key, this.title, this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize * Dimens.size18,
      height: SizeConfig.defaultSize * Dimens.size13Point5,
      child: Padding(
        padding: EdgeInsets.only(right: SizeConfig.defaultSize * Dimens.size1),
        child: Container(
          width: SizeConfig.screenWidth,
          height: SizeConfig.defaultSize * Dimens.size10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                SizeConfig.defaultSize * Dimens.size1Point3,
              ),
              color: ConstantColor.lightYellowColor),
          child: Padding(
            padding: EdgeInsets.all(
                SizeConfig.defaultSize * Dimens.size2),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ///-------------------- Value with right arrow -----------------
                  Text(value,
                      style: TextStyle(
                        fontFamily: ConstantFonts.poppinsBold,
                        fontSize: SizeConfig.defaultSize *
                            Dimens.size3Point2,
                        color: ConstantColor.blackColor,
                      )),
                  ///------------------- title ---------------------------
                  Text(title,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: ConstantFonts.poppinsBold,
                        fontSize:
                        SizeConfig.defaultSize * Dimens.size1Point1,
                        color: ConstantColor.secondaryColor,
                      )),
                ]),
          ),
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
