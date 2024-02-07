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
import '../child/CancelledOrderDetailScaffold.dart';

class CancelledOrderCardView extends StatefulWidget {

  CancelledOrderCardView({Key? key, this.cancelledOn, this.id, this.orderId, this.handedOverOn}) : super(key: key);
  final id;
  final orderId;
  final cancelledOn;
  final handedOverOn;
  var formattedCancelledOn;
  var formattedHandedOverOn;

  @override
  State<CancelledOrderCardView> createState() => _CancelledOrderCardViewState();
}

class _CancelledOrderCardViewState extends State<CancelledOrderCardView> {
  @override
  Widget build(BuildContext context) {
    getCustomFormattedCancelledDate(widget.cancelledOn.toString());
    getCustomFormattedHandoverDate(widget.handedOverOn.toString());
    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig.defaultSize * Dimens.size2,
      ),
      child: InkWell(
        onTap: ()=> {

          Get.to(()=>  const CancelledOrderDetailScaffold(),arguments: [
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

                          Padding(
                            padding: EdgeInsets.only(
                              top: SizeConfig.defaultSize * Dimens.size1,
                            ),
                            child: Text("Canceled On: ${widget.formattedCancelledOn}" , style: TextStyle(
                              fontFamily: ConstantFonts
                                  .poppinsRegular,
                              fontSize: SizeConfig
                                  .defaultSize *
                                  Dimens.size1Point4,
                              color: ConstantColor
                                  .blackColor,
                            )),
                          ),

                          Text("Handed Over On: ${widget.formattedHandedOverOn}" , style: TextStyle(
                            fontFamily: ConstantFonts
                                .poppinsRegular,
                            fontSize: SizeConfig
                                .defaultSize *
                                Dimens.size1Point4,
                            color: ConstantColor
                                .blackColor,
                          )),
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


  getCustomFormattedCancelledDate(String estimatedDelivery) {
    final DateTime docDateTime = DateTime.parse(estimatedDelivery);
    widget.formattedCancelledOn = DateFormat('MM-dd-yyyy').format(docDateTime);
  }

  getCustomFormattedHandoverDate(String estimatedDelivery) {
    final DateTime docDateTime = DateTime.parse(estimatedDelivery);
    widget.formattedCancelledOn = DateFormat('MM-dd-yyyy').format(docDateTime);
  }
}
