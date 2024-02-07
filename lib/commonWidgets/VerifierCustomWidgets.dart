// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants/ConstantColor.dart';
import '../../constants/ConstantFonts.dart';
import '../../res/Dimens.dart';
import '../../utils/SizeConfig.dart';

class VerifierCustomWidget extends StatefulWidget {
  var icon;
  var iconTrue;
  var image;
  var toBeVerified;
  var number;
  VerifierCustomWidget(
      {Key? key,
      this.image,
      this.iconTrue,
      this.number,
      this.icon,
      this.toBeVerified})
      : super(key: key);

  @override
  State<VerifierCustomWidget> createState() => _VerifierCustomWidgetState();
}

class _VerifierCustomWidgetState extends State<VerifierCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.defaultSize * Dimens.size22,
      width: SizeConfig.defaultSize * Dimens.size18,
      decoration: BoxDecoration(
        color: ConstantColor.lightYellowColor,
        borderRadius: BorderRadius.all(
          Radius.circular(Dimens.circularRadius),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: SizeConfig.defaultSize * Dimens.size2,
          left: SizeConfig.defaultSize * Dimens.size2,
          right: SizeConfig.defaultSize * Dimens.size2,
          bottom: SizeConfig.defaultSize * Dimens.size2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: SizeConfig.defaultSize * Dimens.size8,
              width: SizeConfig.defaultSize * Dimens.size8,
              decoration: BoxDecoration(
                  color: ConstantColor.whiteColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                        Dimens.circularRadius * Dimens.circularRadius),
                  )),
              child: Padding(
                padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size1,
                    right: SizeConfig.defaultSize * Dimens.size1,
                    bottom: SizeConfig.defaultSize * Dimens.size1,
                    left: SizeConfig.defaultSize * Dimens.size1),
                child: widget.iconTrue
                    ? Icon(
                        widget.icon,
                        color: ConstantColor.secondaryColor,
                        size: SizeConfig.defaultSize * Dimens.size5,
                      )
                    : SvgPicture.asset(
                        widget.image,
                        height: SizeConfig.defaultSize * Dimens.size5,
                        width: SizeConfig.defaultSize * Dimens.size5,
                      ),
              ),
            ),
            Text(
              widget.toBeVerified.toString(),
              style: TextStyle(
                  color: ConstantColor.secondaryColor,
                  fontFamily: ConstantFonts.poppinsRegular,
                  fontSize: SizeConfig.defaultSize * Dimens.size1Point6),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.number,
                  style: TextStyle(
                      color: ConstantColor.blackColor,
                      fontFamily: ConstantFonts.poppinsBold,
                      fontSize: SizeConfig.defaultSize * Dimens.size2Point8),
                ),
                Icon(
                  Icons.arrow_forward,
                  size: SizeConfig.defaultSize * Dimens.size4,
                  color: ConstantColor.secondaryColor,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
