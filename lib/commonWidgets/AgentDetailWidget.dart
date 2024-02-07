import 'package:flutter/material.dart';

import '../constants/ConstantColor.dart';
import '../constants/ConstantFonts.dart';
import '../res/Dimens.dart';
import '../utils/SizeConfig.dart';

class AgentDetailWidget extends StatelessWidget {
  var label;
  var title;

   AgentDetailWidget({Key? key,this.label,this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig.defaultSize * Dimens.size1,
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              SizeConfig.defaultSize * Dimens.size1Point3,
            ),
            color: ConstantColor.lightYellowColor),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left:
                        SizeConfig.defaultSize * Dimens.size2,
                      ),
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Text(label,
                              style: TextStyle(
                                fontFamily:
                                ConstantFonts.poppinsBold,
                                fontSize: SizeConfig.defaultSize *
                                    Dimens.size1Point6,
                                color:
                                ConstantColor.secondaryColor,
                              )),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: EdgeInsets.only(
                        right:
                        SizeConfig.defaultSize * Dimens.size2,
                      ),
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.end,
                        children: [
                          ///-------------------- Value with right arrow -----------------
                          Padding(
                            padding: EdgeInsets.only(
                              top: SizeConfig.defaultSize *
                                  Dimens.sizePoint5,
                            ),
                            child: Text(
                                title,
                                style: TextStyle(
                                  fontFamily:
                                  ConstantFonts.poppinsMedium,
                                  fontSize:
                                  SizeConfig.defaultSize *
                                      Dimens.size1Point6,
                                  color: ConstantColor.blackColor,
                                )),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ]),
      ),
    );
  }
}
