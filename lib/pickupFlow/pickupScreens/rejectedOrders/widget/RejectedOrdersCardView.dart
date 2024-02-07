import 'package:captain_app/pickupFlow/pickupScreens/rejectedOrders/child/rejectedOrdersDetail/RejectedOrdersDetailScaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../constants/ConstantAssets.dart';
import '../../../../res/Dimens.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../constants/ConstantFonts.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../utils/SizeConfig.dart';

class RejectedOrdersCardView extends StatefulWidget {

   RejectedOrdersCardView({Key? key, this.orderId, this.checkedAt, this.id}) : super(key: key);
  final id;
  final orderId;
  final checkedAt;
  var formattedEstimatedDeliveryDate = "";

  @override
  State<RejectedOrdersCardView> createState() => _RejectedOrdersCardViewState();
}

class _RejectedOrdersCardViewState extends State<RejectedOrdersCardView> {
  @override
  Widget build(BuildContext context) {
    getCustomFormattedDate(widget.checkedAt.toString());
    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig.defaultSize * Dimens.size2,
      ),
      child: InkWell(
        onTap: ()=> {
          Get.to(()=>const RejectedOrdersDetailScaffold(),arguments: [
            {"id" : widget.id},
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
                          Text(widget.orderId,
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
                            child: Text("Checked On: ${widget.formattedEstimatedDeliveryDate}", style: TextStyle(
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
    widget.formattedEstimatedDeliveryDate = DateFormat('MM-dd-yyyy').format(docDateTime);
  }
}
