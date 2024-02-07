import 'package:captain_app/constants/ConstantString.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';

class NewOrderCardView extends StatefulWidget {
  const NewOrderCardView(
      {Key? key,
      this.title,
      this.address,
      this.address2,
      this.status,
      this.landmark,
      this.pincode})
      : super(key: key);
  final title;
  final status;
  final address;
  final address2;
  final landmark;
  final pincode;

  @override
  State<NewOrderCardView> createState() => _NewOrderCardViewState();
}

class _NewOrderCardViewState extends State<NewOrderCardView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig.defaultSize * Dimens.size2,
      ),
      child: Container(
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              SizeConfig.defaultSize * Dimens.size1Point3,
            ),
            color: ConstantColor.lightYellowColor),
        child: Padding(
          padding: EdgeInsets.only(
              top: SizeConfig.defaultSize * Dimens.size2,
              bottom: SizeConfig.defaultSize * Dimens.size2,
              left: SizeConfig.defaultSize * Dimens.size1,
              right: SizeConfig.defaultSize * Dimens.size1),
          child: Row(children: [
            Expanded(
              flex: 9,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: SizeConfig.defaultSize * Dimens.size1,
                          right: SizeConfig.defaultSize * Dimens.size1),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            ///------------------- Order title ---------------------
                            Text(ConstantString.orderText.tr + widget.title,
                                style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsBold,
                                  fontSize: SizeConfig.defaultSize *
                                      Dimens.size1Point6,
                                  color: ConstantColor.secondaryColor,
                                )),

                            ///------------------- Order status ---------------------
                            Text("${widget.status}".toUpperCase(),
                                style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsBold,
                                  fontSize: SizeConfig.defaultSize *
                                      Dimens.size1Point4,
                                  color: ConstantColor.secondaryColor,
                                )),
                          ]),
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.defaultSize * Dimens.size1,
                        right: SizeConfig.defaultSize * Dimens.size1,
                        top: SizeConfig.defaultSize * Dimens.size1,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          ///------------------- Address 1 ---------------------
                          Text(widget.address,
                              style: TextStyle(
                                fontFamily: ConstantFonts.poppinsRegular,
                                fontSize:
                                    SizeConfig.defaultSize * Dimens.size1Point6,
                                color: ConstantColor.blackColor,
                              )),

                          ///------------------- Address 2 ---------------------
                          Text(
                              widget.address2??" ${widget.pincode}",
                              style: TextStyle(
                                fontFamily: ConstantFonts.poppinsRegular,
                                fontSize:
                                    SizeConfig.defaultSize * Dimens.size1Point6,
                                color: ConstantColor.blackColor,
                              )),
                        ],
                      ),
                    )
                  ]),
            ),
          ]),
        ),
      ),
    );
  }
}
