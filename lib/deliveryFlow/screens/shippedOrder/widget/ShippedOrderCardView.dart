import 'package:captain_app/constants/ConstantString.dart';
import 'package:captain_app/deliveryFlow/screens/shippedOrder/child/shippedOrderDetail/ShippedOrderDetailScaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../res/Dimens.dart';
import '../../../../../../constants/ConstantAssets.dart';
import '../../../../../../constants/ConstantColor.dart';
import '../../../../../../constants/ConstantFonts.dart';
import '../../../../utils/SizeConfig.dart';

class ShippedOrderCardView extends StatefulWidget {

  ShippedOrderCardView({Key? key,  this.estimatedDeliveryDate, this.id, this.orderId}) : super(key: key);
  final id;
  final orderId;
  final estimatedDeliveryDate;
  var formattedEstimatedDeliveryDate;

  @override
  State<ShippedOrderCardView> createState() => _ShippedOrderCardViewState();
}

class _ShippedOrderCardViewState extends State<ShippedOrderCardView> {
  @override
  Widget build(BuildContext context) {
    //getCustomFormattedDateTime(widget.estimatedDeliveryDate.toString());
    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig.defaultSize * Dimens.size2,
      ),
      child: InkWell(
        onTap: ()=> {
          Get.to(()=>const ShippedOrderDetailScaffold(),arguments: [
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

                          ///-------------------- Order id text --------------------------
                          Text(ConstantString.orderText+ widget.orderId,
                              style: TextStyle(
                                fontFamily: ConstantFonts
                                    .poppinsBold,
                                fontSize:
                                SizeConfig.defaultSize *
                                    Dimens.size1Point6,
                                color: ConstantColor
                                    .secondaryColor,
                              )),

                          ///-------------------- Estimated delivery date -----------------
                          Padding(
                            padding: EdgeInsets.only(
                              top: SizeConfig.defaultSize * Dimens.size1Point5,
                            ),
                            child: Text(widget.estimatedDeliveryDate.toString()??"", style: TextStyle(
                              fontFamily: ConstantFonts
                                  .poppinsRegular,
                              fontSize: SizeConfig
                                  .defaultSize *
                                  Dimens.size1Point6,
                              color: ConstantColor
                                  .blackColor,
                            )),
                          )
                        ]),
                  ),

                  ///-------------------- back arrow asset -----------------
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



  ///--------------------------- Formatted estimated date -------------------
  getCustomFormattedDateTime(String estimatedDelivery) {
    final DateTime docDateTime = DateTime.parse(estimatedDelivery);
    widget.formattedEstimatedDeliveryDate.value = DateFormat('MM-dd-yyyy').format(docDateTime);
  }
}
