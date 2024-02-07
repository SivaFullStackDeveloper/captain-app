import 'package:flutter/material.dart';

import '../constants/ConstantColor.dart';
import '../constants/ConstantFonts.dart';
import '../res/Dimens.dart';
import '../utils/SizeConfig.dart';

class ImageSectionWithTitle extends StatelessWidget {

  var title;
  var imgUrl;
   ImageSectionWithTitle({Key? key,this.title,this.imgUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: SizeConfig.defaultSize * Dimens.size20,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            SizeConfig.defaultSize * Dimens.size1Point3,
          ),
          color: ConstantColor.lightYellowColor),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.defaultSize * Dimens.size1,
              ),
              child: Text(title,
                  style: TextStyle(
                    fontFamily: ConstantFonts.poppinsBold,
                    fontSize: SizeConfig.defaultSize *
                        Dimens.size1Point6,
                    color: ConstantColor.secondaryColor,
                  )),
            ),

            ///---------------- Camera Icon ---------------------
            imgUrl == "null"
                ? Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.defaultSize *
                    Dimens.size1Point5,
                bottom: SizeConfig.defaultSize *
                    Dimens.size1Point5,
              ),
              child: Container(
                width: SizeConfig.defaultSize *
                    Dimens.size8,
                height: SizeConfig.defaultSize *
                    Dimens.size8,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: ConstantColor
                        .miniDarkYellowColor),
                child: Icon(
                  Icons.camera_alt,
                  size: SizeConfig.defaultSize *
                      Dimens.size2Point5,
                  color:
                  ConstantColor.secondaryColor,
                ),
              ),
            )
                : Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.defaultSize *
                    Dimens.size1Point5,
                bottom: SizeConfig.defaultSize *
                    Dimens.size1Point5,
              ),
              child: Container(
                  width: SizeConfig.defaultSize *
                      Dimens.size10,
                  height: SizeConfig.defaultSize *
                      Dimens.size10,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              imgUrl),
                          fit: BoxFit.cover))),
            ),
          ]),
    );
  }
}
