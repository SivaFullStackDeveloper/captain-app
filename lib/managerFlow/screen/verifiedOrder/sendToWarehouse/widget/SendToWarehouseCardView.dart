import 'package:captain_app/managerFlow/screen/verifiedOrder/sendToWarehouse/child/sendToWarehouseDetail/SendToWarehouseDetailScaffold.dart';
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

class SendToWarehouseCardView extends StatefulWidget {

  SendToWarehouseCardView({Key? key, this.verifyTime, this.id, this.orderId, this.verifyDate}) : super(key: key);
  final id;
  final orderId;
  final verifyTime;
  final verifyDate;
  var formattedVerifyDate;
  var formattedVerifyTime;

  @override
  State<SendToWarehouseCardView> createState() => _SendToWarehouseCardViewState();
}

class _SendToWarehouseCardViewState extends State<SendToWarehouseCardView> {
  @override
  Widget build(BuildContext context) {
    getFormattedVerifyDate(widget.verifyDate.toString());
    getFormattedVerifyTime(widget.verifyTime.toString());

    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig.defaultSize * Dimens.size2,
      ),
      child: InkWell(
        onTap: ()=> {

          Get.to(()=>  const SendToWarehouseDetailScaffold(),arguments: [
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
                          Text("Verified # "+ widget.orderId,
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
                            child: Text("Verified Date: " + widget.formattedVerifyDate.toString() , style: TextStyle(
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
                          Text("Verified Time: " + widget.formattedVerifyTime.toString() , style: TextStyle(
                            fontFamily: ConstantFonts
                                .poppinsRegular,
                            fontSize: SizeConfig
                                .defaultSize *
                                Dimens.size1Point4,
                            color: ConstantColor
                                .blackColor,
                          ))
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


  getFormattedVerifyDate(String verifyDate) {
    final DateTime docDateTime = DateTime.parse(verifyDate);
    widget.formattedVerifyDate = DateFormat('MM-dd-yyyy').format(docDateTime);
  }

  getFormattedVerifyTime(String verifyTime) {
    final DateTime docDateTime = DateTime.parse(verifyTime);
    widget.formattedVerifyTime = DateFormat('hh:mm:ss').format(docDateTime);
  }
}
