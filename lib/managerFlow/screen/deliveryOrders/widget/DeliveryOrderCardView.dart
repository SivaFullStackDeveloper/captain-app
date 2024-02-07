import 'package:captain_app/constants/ConstantString.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';

class DeliveryOrderCardView extends StatefulWidget {
  const DeliveryOrderCardView(
      {Key? key,
      this.orderId,
      this.packedAt,
      this.shippedAt,
      this.status, this.cancelledAt, this.handedOverAt,})
      : super(key: key);
  final orderId;
  final status;
  final packedAt;
  final shippedAt;
  final cancelledAt;
  final handedOverAt;
  @override
  State<DeliveryOrderCardView> createState() => _DeliveryOrderCardViewState();
}

class _DeliveryOrderCardViewState extends State<DeliveryOrderCardView> {
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
                            Text(widget.orderId,
                                style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsBold,
                                  fontSize: SizeConfig.defaultSize *
                                      Dimens.size1Point6,
                                  color: ConstantColor.secondaryColor,
                                )),
                            Text("${widget.status}".toUpperCase(),
                                style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsBold,
                                  fontSize: SizeConfig.defaultSize *
                                      Dimens.size1Point4,
                                  color: ConstantColor.secondaryColor,
                                )),
                          ]),
                    ),

                    ///-------------------- Value with right arrow -----------------
                    if(widget.status == "shipped")Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.defaultSize * Dimens.size1,
                        right: SizeConfig.defaultSize * Dimens.size1,
                        top: SizeConfig.defaultSize * Dimens.size1,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Shipped At: "+ widget.packedAt,
                              style: TextStyle(
                                fontFamily: ConstantFonts.poppinsRegular,
                                fontSize:
                                    SizeConfig.defaultSize * Dimens.size1Point4,
                                color: ConstantColor.blackColor,
                              )),
                          Text("Hand-Overed On: " + widget.shippedAt,
                              style: TextStyle(
                                fontFamily: ConstantFonts.poppinsRegular,
                                fontSize:
                                SizeConfig.defaultSize * Dimens.size1Point4,
                                color: ConstantColor.blackColor,
                              )),
                        ],
                      ),
                    )else if(widget.status == "placed")Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.defaultSize * Dimens.size1,
                        right: SizeConfig.defaultSize * Dimens.size1,
                        top: SizeConfig.defaultSize * Dimens.size1,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Placed At: "+ widget.packedAt,
                              style: TextStyle(
                                fontFamily: ConstantFonts.poppinsRegular,
                                fontSize:
                                SizeConfig.defaultSize * Dimens.size1Point4,
                                color: ConstantColor.blackColor,
                              )),
                          Text("Hand-Overed On: " + widget.shippedAt,
                              style: TextStyle(
                                fontFamily: ConstantFonts.poppinsRegular,
                                fontSize:
                                SizeConfig.defaultSize * Dimens.size1Point4,
                                color: ConstantColor.blackColor,
                              )),
                        ],
                      ),
                    )else if(widget.status == "packed")Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.defaultSize * Dimens.size1,
                        right: SizeConfig.defaultSize * Dimens.size1,
                        top: SizeConfig.defaultSize * Dimens.size1,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Packed At: "+ widget.packedAt,
                              style: TextStyle(
                                fontFamily: ConstantFonts.poppinsRegular,
                                fontSize:
                                SizeConfig.defaultSize * Dimens.size1Point4,
                                color: ConstantColor.blackColor,
                              )),
                          Text("Hand-Overed On: " + widget.shippedAt,
                              style: TextStyle(
                                fontFamily: ConstantFonts.poppinsRegular,
                                fontSize:
                                SizeConfig.defaultSize * Dimens.size1Point4,
                                color: ConstantColor.blackColor,
                              )),
                        ],
                      ),
                    )else if(widget.status == "cancelled")Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.defaultSize * Dimens.size1,
                        right: SizeConfig.defaultSize * Dimens.size1,
                        top: SizeConfig.defaultSize * Dimens.size1,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Cancelled At: "+ widget.packedAt,
                              style: TextStyle(
                                fontFamily: ConstantFonts.poppinsRegular,
                                fontSize:
                                SizeConfig.defaultSize * Dimens.size1Point4,
                                color: ConstantColor.blackColor,
                              )),
                          Text("Hand-Overed On: " + widget.shippedAt,
                              style: TextStyle(
                                fontFamily: ConstantFonts.poppinsRegular,
                                fontSize:
                                SizeConfig.defaultSize * Dimens.size1Point4,
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

