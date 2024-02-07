import 'package:captain_app/commonWidgets/MySeparator.dart';
import 'package:captain_app/constants/ConstantColor.dart';
import 'package:captain_app/constants/ConstantFonts.dart';
import 'package:captain_app/constants/ConstantString.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';

import '../res/Dimens.dart';

class StepperWidget extends StatefulWidget {
  var text;
  var width;

  StepperWidget({Key? key, this.text, this.width}) : super(key: key);

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
          child: Center(
            child: Text(
              widget.text,
              style: TextStyle(
                  color: ConstantColor.secondaryColor,
                  fontFamily: ConstantFonts.poppinsMedium,
                  fontSize: SizeConfig.defaultSize * Dimens.size4),
            ),
          ),
        ),
        RotatedBox(
          quarterTurns: 1,
          child: Container(
            height: 2,
            width: widget.width,
            child: MySeparator(color: ConstantColor.blackColor),
          ),
        ),
      ],
    );
  }
}
