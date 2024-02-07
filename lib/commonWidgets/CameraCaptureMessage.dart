import 'dart:io';

import 'package:captain_app/constants/ConstantAssets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/ConstantColor.dart';
import '../constants/ConstantFonts.dart';
import '../res/Dimens.dart';
import '../utils/SizeConfig.dart';

class CameraCaptureMessage extends StatefulWidget {

  var title = "";
  var scan ;

  CameraCaptureMessage({Key? key,required this.title,required this.scan}) : super(key: key);

  @override
  State<CameraCaptureMessage> createState() => _CameraCaptureMessageState();
}

class _CameraCaptureMessageState extends State<CameraCaptureMessage> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.defaultSize * Dimens.size1,
            ),
            child: Text(widget.title,
                style: TextStyle(
                  fontFamily: ConstantFonts.poppinsBold,
                  fontSize: SizeConfig.defaultSize *
                      Dimens.size1Point6,
                  color: ConstantColor.secondaryColor,
                )),
          ),


          Column(
            children: [
              ///---------------- Camera Icon ---------------------
              Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize *
                      Dimens.size1Point5,

                ),
                child: widget.scan==true? SvgPicture.asset(ConstantAssets.qrCodeScan)
                :Container(
                  width:
                  SizeConfig.defaultSize * Dimens.size8,
                  height:
                  SizeConfig.defaultSize * Dimens.size8,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:
                      ConstantColor.miniDarkYellowColor),
                  child: Icon(
                    Icons.camera_alt,
                    size: SizeConfig.defaultSize *
                        Dimens.size2Point5,
                    color: ConstantColor.secondaryColor,
                  ),
                ),
              ),
              widget.scan==true?Container():Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * Dimens.size1,
                ),
                child: Text("Click To Capture",
                    style: TextStyle(
                      fontFamily:
                      ConstantFonts.poppinsRegular,
                      fontSize: SizeConfig.defaultSize *
                          Dimens.size1Point2,
                      color: ConstantColor.secondaryColor,
                    )),
              ),
            ],
          )


        ]);
  }
}
