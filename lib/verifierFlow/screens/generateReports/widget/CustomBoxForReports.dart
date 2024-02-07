import 'package:captain_app/constants/ConstantAssets.dart';
import 'package:captain_app/constants/ConstantColor.dart';
import 'package:captain_app/constants/ConstantFonts.dart';
import 'package:captain_app/constants/ConstantString.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';





class CustomBoxForReports extends StatefulWidget {
  Function(BuildContext context) press;
  var icon;
  var text;
   CustomBoxForReports({Key? key,required this.press,required this.icon,this.text}) : super(key: key);

  @override
  State<CustomBoxForReports> createState() => _CustomBoxForReportsState();
}

class _CustomBoxForReportsState extends State<CustomBoxForReports> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>widget.press,
      child: Expanded(
        child: Container(
          height: 70,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
            Radius.circular(SizeConfig.defaultSize*Dimens.size1)
            ),
            color: ConstantColor.extraLightYellowColor,

          ),
          child: Center(
            child:   Padding(
    padding:  EdgeInsets.only(
    top:SizeConfig.defaultSize*Dimens.size2,
    left:SizeConfig.defaultSize*Dimens.size2,
    right:SizeConfig.defaultSize*Dimens.size2,
    ),
    child:Column(
              children: [
                SvgPicture.asset(widget.icon),
                Text(widget.text.toString(),style: TextStyle(
                  fontSize:SizeConfig.defaultSize*Dimens.size1Point2 ,
                  fontFamily: ConstantFonts.poppinsRegular,
                ),)
              ],
            ),),
          ),
        ),
      ),
    );
  }
}
