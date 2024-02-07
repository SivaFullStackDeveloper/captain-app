import 'package:captain_app/pickupFlow/pickupScreens/toBeChecked/child/checkingPickupDetails/CheckingPickupDetailsScaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../res/Dimens.dart';
import '../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../constants/ConstantFonts.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../utils/SizeConfig.dart';

class ToBeCheckedCardView extends StatefulWidget {

  ToBeCheckedCardView({Key? key, this.orderId, this.date, this.time, this.id}) : super(key: key);
  final id;
  final orderId;
  final date;
  final time;
  var formattedEstimatedDeliveryDate = "";
  var formattedEstimatedDeliveryTime = "";

  @override
  State<ToBeCheckedCardView> createState() => _ToBeCheckedCardViewState();
}

class _ToBeCheckedCardViewState extends State<ToBeCheckedCardView> {
  @override
  Widget build(BuildContext context) {
    getCustomFormattedDate(widget.date.toString());
    getCustomFormattedTime(widget.time.toString());

    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig.defaultSize * Dimens.size2,
      ),
      child: InkWell(
        onTap: ()=> {

          Get.to(()=>const CheckingPickupDetailsScaffold(),arguments: [
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
                          Text("Pickup # " + widget.orderId,
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
                            child: Text("Picked Date: ${widget.formattedEstimatedDeliveryDate}", style: TextStyle(
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
                              top: SizeConfig.defaultSize * Dimens.sizePoint5,
                            ),
                            child: Text("Picked Time: ${widget.formattedEstimatedDeliveryTime}", style: TextStyle(
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

  getCustomFormattedTime(String estimatedDelivery) {
    final DateTime docDateTime = DateTime.parse(estimatedDelivery);
    widget.formattedEstimatedDeliveryTime = DateFormat('hh:mm:ss').format(docDateTime);
  }
}
