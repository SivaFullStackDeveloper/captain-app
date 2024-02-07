import 'package:flutter/material.dart';

import '../constants/ConstantColor.dart';
import '../constants/ConstantFonts.dart';
import '../res/Dimens.dart';
import '../utils/SizeConfig.dart';
import 'MySeparator.dart';

class TaskIndicator extends StatelessWidget {

  var taskNumber;
  var dashWidth;

   TaskIndicator({Key? key,this.taskNumber,this.dashWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         RotatedBox(
          quarterTurns: 1,
          child: Container(
            height: 2,
            width: dashWidth,
            child: MySeparator(color: ConstantColor.blackColor),
          ),
        ),

        Container(
          width: SizeConfig.defaultSize * Dimens.size6,
          height: SizeConfig.defaultSize * Dimens.size6,
          alignment: Alignment.center,

          ///-------------------- Icons inside circle -----------------
          decoration: BoxDecoration(
              border: Border.all(
                color: ConstantColor.greyColor,
              ),
              borderRadius: BorderRadius.all(Radius.circular(SizeConfig.defaultSize * Dimens.size6))
          ),
          child: Text(
            taskNumber,
            style: TextStyle(
                fontFamily: ConstantFonts.poppinsMedium,
                fontSize: SizeConfig.defaultSize * Dimens.size2Point5,
                color: ConstantColor.secondaryColor,
                fontWeight: FontWeight.w900),
          ),
        ),
    ]);
  }
}
