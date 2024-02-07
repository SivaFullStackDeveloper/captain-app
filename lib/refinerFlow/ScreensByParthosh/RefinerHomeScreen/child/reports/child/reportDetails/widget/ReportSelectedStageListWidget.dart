import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../res/Dimens.dart';
import '../../../../../../../../utils/SizeConfig.dart';


class ReportSelectedStageWidget extends StatefulWidget {
  const ReportSelectedStageWidget({Key? key}) : super(key: key);

  @override
  State<ReportSelectedStageWidget> createState() =>
      _ReportSelectedStageWidgetState();
}

class _ReportSelectedStageWidgetState extends State<ReportSelectedStageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(
          top: SizeConfig.defaultSize * Dimens.size2,
          left: SizeConfig.defaultSize * Dimens.size2,
          right: SizeConfig.defaultSize * Dimens.size2,
        ),
        child: InkWell(
          onTap: () {},
          child: Container(
            height: SizeConfig.defaultSize * Dimens.size5,
            decoration: BoxDecoration(
              color: ConstantColor.extraLightYellowColor,
              borderRadius: BorderRadius.all(
                Radius.circular(SizeConfig.defaultSize * Dimens.size1),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: SizeConfig.defaultSize * Dimens.size2,
                right: SizeConfig.defaultSize * Dimens.size2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Order# BKS00034',
                    style: TextStyle(
                      color: ConstantColor.secondaryColor,
                      fontFamily: ConstantFonts.poppinsBold,
                      fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                    ),
                  ),
                  SvgPicture.asset(
                    ConstantAssets.next,
                    width: SizeConfig.defaultSize * Dimens.size2,
                    height: SizeConfig.defaultSize * Dimens.size2,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
