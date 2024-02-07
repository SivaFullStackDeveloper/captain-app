import 'package:captain_app/constants/ConstantString.dart';
import 'package:captain_app/deliveryFlow/screens/canceledOrder/child/canceledOrderDetail/CanceledOrderDetailScaffold.dart';import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../constants/ConstantAssets.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';

class CanceledOrderCardView extends StatefulWidget {

  CanceledOrderCardView({Key? key, this.orderId, this.cancelledAt, this.id}) : super(key: key);
  final id;
  final orderId;
  final cancelledAt;
  var formattedCancelledAt = "";

  @override
  State<CanceledOrderCardView> createState() => _CanceledOrderCardViewState();
}

class _CanceledOrderCardViewState extends State<CanceledOrderCardView> {
  @override
  Widget build(BuildContext context) {
    getCustomFormattedDate(widget.cancelledAt.toString());

    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig.defaultSize * Dimens.size2,
      ),
      child: InkWell(
        onTap: ()=> {
          Get.to(()=>const CanceledOrderDetailScaffold(),arguments: [
            {"id": widget.id},
            {"orderId": widget.orderId}
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

                          ///----------------------- order Id text -------------------------
                          Text("${ConstantString.orderText} ${widget.orderId}",
                              style: TextStyle(
                                fontFamily: ConstantFonts
                                    .poppinsBold,
                                fontSize:
                                SizeConfig.defaultSize *
                                    Dimens.size1Point6,
                                color: ConstantColor
                                    .secondaryColor,
                              )),

                          ///-------------------- cancelledOn text -----------------
                          Padding(
                            padding: EdgeInsets.only(
                              top: SizeConfig.defaultSize * Dimens.size1Point5,
                            ),
                            child: Text(ConstantString.cancelledOn + widget.formattedCancelledAt, style: TextStyle(
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

                  ///-------------------------- Back Arrow icon ------------------
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

  getCustomFormattedDate(String estimatedDelivery) {
    final DateTime docDateTime = DateTime.parse(estimatedDelivery);
    widget.formattedCancelledAt = DateFormat('MM-dd-yyyy').format(docDateTime);
  }
}
