import 'package:flutter/material.dart';

import '../../../../../../../commonWidgets/MySeparator.dart';
import '../../../../../../../commonWidgets/VerifierCustomAppBar.dart';
import '../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../res/Dimens.dart';
import '../../../../../../../utils/SizeConfig.dart';


class ScheduleToCaptain extends StatefulWidget {
  const ScheduleToCaptain({Key? key}) : super(key: key);

  @override
  State<ScheduleToCaptain> createState() => _ScheduleToCaptainState();
}

class _ScheduleToCaptainState extends State<ScheduleToCaptain> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: SizeConfig.defaultSize * Dimens.size2,
          left: SizeConfig.defaultSize * Dimens.size2,
          right: SizeConfig.defaultSize * Dimens.size2,
          bottom: SizeConfig.defaultSize * Dimens.size6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VerifierCustomAppBar(title: 'Schedule Appointment'),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: SizeConfig.defaultSize * Dimens.size2),
            child: Text(
              'Customer Request',
              style: TextStyle(
                  fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                  fontFamily: ConstantFonts.poppinsMedium),
            ),
          ),
          Container(
            padding: EdgeInsets.all(SizeConfig.defaultSize * Dimens.size2),
            decoration:
                BoxDecoration(color: ConstantColor.extraLightYellowColor),
            child: Column(
              children: [
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            'APPROX WEIGHT',
                            style: TextStyle(
                                color: ConstantColor.secondaryColor,
                                fontSize: SizeConfig.defaultSize *
                                    Dimens.size1Point6),
                          ),
                          Text(
                            '50',
                            style: TextStyle(
                                fontFamily: ConstantFonts.poppinsBold,
                                fontSize:
                                    SizeConfig.defaultSize * Dimens.size5),
                          ),
                          Text(
                            'GRAM',
                            style: TextStyle(
                                color: ConstantColor.lightGreyColor,
                                fontSize: SizeConfig.defaultSize *
                                    Dimens.size1Point6),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        thickness: SizeConfig.defaultSize * Dimens.sizePoint2,
                        color: ConstantColor.secondaryColor,
                      ),
                      Column(
                        children: [
                          Text(
                            'METAL GROUP',
                            style: TextStyle(
                                color: ConstantColor.secondaryColor,
                                fontSize: SizeConfig.defaultSize *
                                    Dimens.size1Point6),
                          ),
                          Text(
                            '50',
                            style: TextStyle(
                                fontFamily: ConstantFonts.poppinsBold,
                                fontSize:
                                    SizeConfig.defaultSize * Dimens.size5),
                          ),
                          Text(
                            'KARAT',
                            style: TextStyle(
                                color: ConstantColor.lightGreyColor,
                                fontSize: SizeConfig.defaultSize *
                                    Dimens.size1Point6),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.defaultSize * Dimens.size2),
                  child: const MySeparator(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Request Type',
                      style: TextStyle(
                          fontFamily: ConstantFonts.poppinsMedium,
                          fontSize:
                              SizeConfig.defaultSize * Dimens.size1Point4),
                    ),
                    Text(
                      'SELL OLD GOLD',
                      style: TextStyle(
                          fontFamily: ConstantFonts.poppinsRegular,
                          fontSize:
                              SizeConfig.defaultSize * Dimens.size1Point4),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Request Schedule',
                      style: TextStyle(
                          fontFamily: ConstantFonts.poppinsMedium,
                          fontSize:
                              SizeConfig.defaultSize * Dimens.size1Point4),
                    ),
                    Text(
                      '18-02-2022, 5.30PM',
                      style: TextStyle(
                          fontFamily: ConstantFonts.poppinsRegular,
                          fontSize:
                              SizeConfig.defaultSize * Dimens.size1Point4),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
