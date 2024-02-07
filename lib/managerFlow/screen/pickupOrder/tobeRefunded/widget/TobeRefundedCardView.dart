import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../../../constants/ConstantAssets.dart';
import '../../../../../../constants/ConstantColor.dart';
import '../../../../../../constants/ConstantFonts.dart';
import '../../../../../../res/Dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../../utils/SizeConfig.dart';
import '../child/TobeRefundedDetailScaffold.dart';

class TobeRefundedCardView extends StatefulWidget {

   TobeRefundedCardView({Key? key, this.handedOverOn, this.id, this.orderId, this.canceledOn}) : super(key: key);
  final id;
  final orderId;
  final handedOverOn;
  final canceledOn;
  var handedOverOnFormattedDate;

  @override
  State<TobeRefundedCardView> createState() => _TobeRefundedCardViewState();
}

class _TobeRefundedCardViewState extends State<TobeRefundedCardView> {
  @override
  Widget build(BuildContext context) {
    getCustomFormattedDate(widget.handedOverOn);
    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig.defaultSize * Dimens.size2,
      ),
      child: InkWell(
        onTap: ()=> {

          Get.to(()=>  const TobeRefundedDetailScaffold(),arguments: [
            {"id": widget.id},
            {"orderId": widget.orderId},
          ])
        },
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
            child: Row(
                children: [


                  Expanded(
                    flex: 9,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Order # "+ widget.orderId,
                              style: TextStyle(
                                fontFamily: ConstantFonts
                                    .poppinsBold,
                                fontSize:
                                SizeConfig.defaultSize *
                                    Dimens.size1Point6,
                                color: ConstantColor
                                    .secondaryColor,
                              )),

                          ///-------------------- Value with right arrow -----------------
                          Padding(
                            padding: EdgeInsets.only(
                              top: SizeConfig.defaultSize * Dimens.size1Point5,
                            ),
                            child: Text("Canceled On: " + widget.canceledOn.toString() , style: TextStyle(
                              fontFamily: ConstantFonts
                                  .poppinsRegular,
                              fontSize: SizeConfig
                                  .defaultSize *
                                  Dimens.size1Point4,
                              color: ConstantColor
                                  .blackColor,
                            )),
                          ),


                          ///-------------------- Value with right arrow -----------------
                          Padding(
                            padding: EdgeInsets.only(
                              top: SizeConfig.defaultSize * Dimens.size1,
                            ),
                            child: Text("HandedOver On: " + widget.handedOverOnFormattedDate.toString() , style: TextStyle(
                              fontFamily: ConstantFonts
                                  .poppinsRegular,
                              fontSize: SizeConfig
                                  .defaultSize *
                                  Dimens.size1Point4,
                              color: ConstantColor
                                  .blackColor,
                            )),
                          )
                        ]),
                  ),

                  ///------------------- status ---------------------------
                  Expanded(
                    flex: 2,
                    child: RotatedBox(
                      quarterTurns: 2,
                      child: SvgPicture.asset(
                          ConstantAssets.backArrow,
                          fit: BoxFit.scaleDown
                      ),
                    ),
                  ),
                ]
            ),
          ),
        ),
      ),
    );
  }

  getCustomFormattedDate(String handoverDate) {
    final DateTime docDateTime = DateTime.parse(handoverDate);
    widget.handedOverOnFormattedDate = DateFormat('MM-dd-yyyy').format(docDateTime);
  }
}
