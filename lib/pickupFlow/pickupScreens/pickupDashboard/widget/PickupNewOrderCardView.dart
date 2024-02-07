import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';

import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../checkedOrder/child/checkedOrderDetail/CheckedOrderDetailScaffold.dart';
import '../../toBeChecked/child/checkingPickupDetails/CheckingPickupDetailsScaffold.dart';

class PickupNewOrderCardView extends StatefulWidget {

  PickupNewOrderCardView({Key? key, this.orderId, required this.date, this.time, this.id, this.status}) : super(key: key);
  final id;
  final orderId;
  final status;
  DateTime date;
  final time;
  var formattedEstimatedDeliveryDate = "";
  var formattedEstimatedDeliveryTime = "";
  @override
  State<PickupNewOrderCardView> createState() => _PickupNewOrderCardViewState();
}

class _PickupNewOrderCardViewState extends State<PickupNewOrderCardView> {
  @override
  Widget build(BuildContext context) {
    getCustomFormattedDate(widget.date.toString());
    getCustomFormattedTime(widget.time.toString());
    return InkWell(
      onTap: (){
        widget.status == "assigned"? Get.to(()=>const CheckingPickupDetailsScaffold(),arguments: [
          {"id": widget.id},
          {"orderId": widget.orderId}
        ]): Get.to(() => const CheckedOrderDetailScaffold(),arguments: [
          {"id" : widget.id},
          {"orderId": widget.orderId}
        ]);
      },
      child: Padding(
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
            child: Row(
                children: [


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
                                        fontFamily: ConstantFonts
                                            .poppinsBold,
                                        fontSize:
                                        SizeConfig.defaultSize *
                                            Dimens.size1Point6,
                                        color: ConstantColor
                                            .secondaryColor,
                                      )),


                                  Text(widget.status == "assigned"?"START CHECKING":"HAND OVER",
                                      style: TextStyle(
                                        fontFamily: ConstantFonts
                                            .poppinsBold,
                                        fontSize:
                                        SizeConfig.defaultSize *
                                            Dimens.size1Point6,
                                        color: ConstantColor
                                            .secondaryColor,
                                      )),
                                ]
                            ),
                          ),

                          ///-------------------- Value with right arrow -----------------
                          Padding(
                            padding: EdgeInsets.only(
                              top: SizeConfig.defaultSize * Dimens.size1Point5,
                              left: SizeConfig.defaultSize * Dimens.size1,
                            ),
                            child: Text(widget.status == "assigned"?"Picked Date: ${widget.formattedEstimatedDeliveryDate}":"Estimated Delivery Date: ${widget.formattedEstimatedDeliveryDate}", style: TextStyle(
                              fontFamily: ConstantFonts
                                  .poppinsRegular,
                              fontSize: SizeConfig
                                  .defaultSize *
                                  Dimens.size1Point4,
                              color: ConstantColor
                                  .blackColor,
                            )),
                          ),

                          ///-------------------- Va
                          ///lue with right arrow -----------------
                          Padding(
                            padding: EdgeInsets.only(
                              top: SizeConfig.defaultSize * Dimens.sizePoint5,
                              left: SizeConfig.defaultSize * Dimens.size1,

                            ),
                            child: Text(widget.status == "assigned"?"Picked Time: ${widget.formattedEstimatedDeliveryTime}":"Estimated Delivery Time: ${widget.formattedEstimatedDeliveryTime}", style: TextStyle(
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

  getCustomFormattedTime(String estimatedDelivery) {
    final DateTime docDateTime = DateTime.parse(estimatedDelivery);
    widget.formattedEstimatedDeliveryTime = DateFormat('hh:mm:ss').format(docDateTime);
  }
}
