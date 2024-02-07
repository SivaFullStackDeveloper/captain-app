
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../../../../../constants/ConstantAssets.dart';
import '../../../../../../constants/ConstantColor.dart';
import '../../../../../../constants/ConstantFonts.dart';
import '../CheckedOrderScaffold.dart';
import '../child/checkedOrderDetail/CheckedOrderDetailScaffold.dart';

class CheckedOrderCardView extends StatefulWidget {
  CheckedOrderCardView({Key? key, this.orderId, this.checkedAt, this.id}) : super(key: key);
  final id;
  final orderId;
  final checkedAt;
  var formattedEstimatedDeliveryDate = "";

  @override
  State<CheckedOrderCardView> createState() => _CheckedOrderCardViewState();
}

class _CheckedOrderCardViewState extends State<CheckedOrderCardView> {
  @override
  Widget build(BuildContext context) {
    getCustomFormattedDate(widget.checkedAt.toString());

    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig.defaultSize * Dimens.size2,
      ),
      child: InkWell(
        onTap: () => {Get.to(() => CheckedOrderDetailScaffold(),arguments: [
          {"id" : widget.id},
          {"orderId": widget.orderId}
        ])},
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
                      Text(widget.orderId,
                          style: TextStyle(
                            fontFamily: ConstantFonts.poppinsBold,
                            fontSize:
                                SizeConfig.defaultSize * Dimens.size1Point6,
                            color: ConstantColor.secondaryColor,
                          )),

                      ///-------------------- Value with right arrow -----------------
                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeConfig.defaultSize * Dimens.size1Point5,
                        ),
                        child: Text(
                            "Checked On: ${widget.formattedEstimatedDeliveryDate}",
                            style: TextStyle(
                              fontFamily: ConstantFonts.poppinsRegular,
                              fontSize:
                                  SizeConfig.defaultSize * Dimens.size1Point4,
                              color: ConstantColor.blackColor,
                            )),
                      )
                    ]),
              ),
              Expanded(
                flex: 2,
                child: RotatedBox(
                  quarterTurns: 2,
                  child: SvgPicture.asset(ConstantAssets.backArrow,
                      fit: BoxFit.scaleDown),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  getCustomFormattedDate(String estimatedDelivery) {
    final DateTime docDateTime = DateTime.parse(estimatedDelivery);
    widget.formattedEstimatedDeliveryDate =
        DateFormat('MM-dd-yyyy').format(docDateTime);
  }
}
