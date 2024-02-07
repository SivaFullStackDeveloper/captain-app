import 'package:captain_app/deliveryFlow/screens/toBeShipped/child/handoverShipment/HandoverShipmentScaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../constants/ConstantAssets.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../res/Dimens.dart';
import '../../../../../utils/SizeConfig.dart';

class ToBeShippedCardView extends StatefulWidget {

  const ToBeShippedCardView({Key? key,  this.agent, this.id, this.orderId}) : super(key: key);
  final id;
  final orderId;
  final agent;

  @override
  State<ToBeShippedCardView> createState() => _ToBeShippedCardViewState();
}

class _ToBeShippedCardViewState extends State<ToBeShippedCardView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig.defaultSize * Dimens.size2,
      ),
      child: InkWell(
        onTap: ()=> {
          Get.to(()=>const HandoverShipmentScaffold(), arguments: [
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
                            child: Text("Pickup Agent:  " + widget.agent, style: TextStyle(
                              fontFamily: ConstantFonts.poppinsRegular,
                              fontSize: SizeConfig.defaultSize * Dimens.size1Point4,
                              color: ConstantColor.blackColor,
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
}
