import 'package:captain_app/constants/ConstantAssets.dart';
import 'package:captain_app/constants/ConstantColor.dart';
import 'package:captain_app/constants/ConstantFonts.dart';
import 'package:captain_app/constants/ConstantString.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../res/Dimens.dart';
import '../../../../../../utils/SizeConfig.dart';





class ReportShareSectionWidget extends StatefulWidget {
  Function(BuildContext context) press;
  var icon;
  var text;
  ReportShareSectionWidget({Key? key,required this.press,required this.icon,this.text}) : super(key: key);

  @override
  State<ReportShareSectionWidget> createState() => _ReportShareSectionWidgetState();
}

class _ReportShareSectionWidgetState extends State<ReportShareSectionWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>widget.press,
      child: Container(
        height: 67,
        width: 67,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular(SizeConfig.defaultSize*Dimens.size1)
          ),
          color: ConstantColor.extraLightYellowColor,

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(widget.icon),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.defaultSize * Dimens.size1,
              ),
              child: Text(widget.text.toString(),style: TextStyle(
                fontSize:SizeConfig.defaultSize*Dimens.size1,
                fontFamily: ConstantFonts.poppinsRegular,
              ),),
            )
          ],
        ),
      ),
    );
  }
}
