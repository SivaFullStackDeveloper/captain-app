import 'package:captain_app/constants/ConstantString.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';

class PickupOrderCardView extends StatefulWidget {
   PickupOrderCardView(
      {Key? key,
        this.title,
        this.checkedOn,
        this.handOveredOn,
        this.status,
})
      : super(key: key);
  final title;
  final status;
  final checkedOn;
  final handOveredOn;
  var formateCheckedOn;
  var formateHandOveredOn;


  @override
  State<PickupOrderCardView> createState() => _PickupOrderCardViewState();
}

class _PickupOrderCardViewState extends State<PickupOrderCardView> {
  @override
  Widget build(BuildContext context) {

    //getFormattedCheckedOnDate(widget.checkedOn.toString());
    //getFormattedHandoverDate(widget.handOveredOn.toString());

    return Padding(
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
          child: Row(children: [
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
                            Text("Order # " + widget.title,
                                style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsBold,
                                  fontSize: SizeConfig.defaultSize *
                                      Dimens.size1Point6,
                                  color: ConstantColor.secondaryColor,
                                )),
                            Text("${widget.status}".toUpperCase(),
                                style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsBold,
                                  fontSize: SizeConfig.defaultSize *
                                      Dimens.size1Point4,
                                  color: ConstantColor.secondaryColor,
                                )),
                          ]),
                    ),

                    ///-------------------- Value with right arrow -----------------
                    Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.defaultSize * Dimens.size1,
                        right: SizeConfig.defaultSize * Dimens.size1,
                        top: SizeConfig.defaultSize * Dimens.size1,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Checked On: " + widget.checkedOn??"",
                              style: TextStyle(
                                fontFamily: ConstantFonts.poppinsRegular,
                                fontSize:
                                SizeConfig.defaultSize * Dimens.size1Point4,
                                color: ConstantColor.blackColor,
                              )),
                          Text(
                              "Hand-Overed On: " + widget.handOveredOn??"",
                              style: TextStyle(
                                fontFamily: ConstantFonts.poppinsRegular,
                                fontSize:
                                SizeConfig.defaultSize * Dimens.size1Point4,
                                color: ConstantColor.blackColor,
                              )),
                        ],
                      ),
                    )
                  ]),
            ),
          ]),
        ),
      ),
    );
  }


  getFormattedCheckedOnDate(String checkedOnDate) {
    final DateTime docDateTime = DateTime.parse(checkedOnDate);
    widget.formateCheckedOn = DateFormat('MM-dd-yyyy').format(docDateTime);
  }

  getFormattedHandoverDate(String handOverDate) {
    final DateTime docDateTime = DateTime.parse(handOverDate);
    widget.formateHandOveredOn = DateFormat('MM-dd-yyyy').format(docDateTime);
  }
}
