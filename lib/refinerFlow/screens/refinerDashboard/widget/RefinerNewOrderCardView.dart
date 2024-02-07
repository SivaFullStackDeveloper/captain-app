import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';

class RefinerNewOrderCardView extends StatefulWidget {

  const RefinerNewOrderCardView({Key? key, this.title, this.deliveryDate, this.status, this.deliveryTime}) : super(key: key);
  final title;
  final status;
  final deliveryDate;
  final deliveryTime;

  @override
  State<RefinerNewOrderCardView> createState() => _RefinerNewOrderCardViewState();
}

class _RefinerNewOrderCardViewState extends State<RefinerNewOrderCardView> {
  @override
  Widget build(BuildContext context) {
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
                                Text(widget.title,
                                    style: TextStyle(
                                      fontFamily: ConstantFonts
                                          .poppinsBold,
                                      fontSize:
                                      SizeConfig.defaultSize *
                                          Dimens.size1Point6,
                                      color: ConstantColor
                                          .secondaryColor,
                                    )),


                                Text(widget.status,
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
                            left: SizeConfig.defaultSize * Dimens.size1,
                            right: SizeConfig.defaultSize * Dimens.size1,
                            top: SizeConfig.defaultSize * Dimens.size1Point5,
                          ),
                          child: Text(widget.deliveryDate, style: TextStyle(
                            fontFamily: ConstantFonts
                                .poppinsRegular,
                            fontSize: SizeConfig
                                .defaultSize *
                                Dimens.size1Point6,
                            color: ConstantColor
                                .blackColor,
                          )),
                        ),

                        ///-------------------- Value with right arrow -----------------
                        Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.defaultSize * Dimens.size1,
                            right: SizeConfig.defaultSize * Dimens.size1,
                            top: SizeConfig.defaultSize * Dimens.sizePoint5,
                          ),
                          child: Text(widget.deliveryDate, style: TextStyle(
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

              ]
          ),
        ),
      ),
    );
  }
}
