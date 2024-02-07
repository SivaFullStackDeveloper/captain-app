import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';

import '../../constants/ConstantColor.dart';
import '../../res/Dimens.dart';
import '../SizeConfig.dart';

class CustomObject {
  static var  token = "";
  static var  deviceToken = "xxxxx";
  static var languageSelected = "english";

  static var  mPin = "";
  static var  mPinOtpVerifyToken = "";
  static var  responseBody;
  static var responseStatus;
  static var tempOtp;
  static var mobileNumber = "";
  static var mPinToken = "";
  static var uploadUrl = "";

  static late final SvgPicture data;
  static var videoPath = "";
  static var videoThumbnailForScreen = "";
  static var videoKey = "";
  static var orderOpeningVideoKey = "";
  static var vechileId = "";
  static var toBeVerifiedId = '';
  static var  tokenForOtp = "";
  static var  qrString = "";
 // static var drawPic = false;


  static var defaultPinTheme = PinTheme(
    width: SizeConfig.defaultSize * Dimens.size5,
    height: SizeConfig.defaultSize * Dimens.size5,
    textStyle: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2, color: ConstantColor.secondaryColor, fontWeight: FontWeight.w600),
    decoration: BoxDecoration(
      border: Border.all(color: ConstantColor.secondaryColor),
      borderRadius: BorderRadius.circular(SizeConfig.defaultSize * Dimens.size1),
    ),
  );

}
