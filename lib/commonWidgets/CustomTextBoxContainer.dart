import 'package:captain_app/constants/ConstantColor.dart';
import 'package:captain_app/constants/ConstantFonts.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';


class CustomTextBoxContainer extends StatefulWidget {
  var height;
  var smallText;
  var bigText;

  CustomTextBoxContainer({Key? key,this.height,this.smallText,this.bigText}) : super(key: key);

  @override
  State<CustomTextBoxContainer> createState() => _CustomTextBoxContainerState();
}

class _CustomTextBoxContainerState extends State<CustomTextBoxContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        color: ConstantColor.lightYellowColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      height: widget.height,
      width: SizeConfig.screenWidth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.smallText,
            style: TextStyle(
              fontFamily: ConstantFonts.poppinsRegular,
              fontSize: 15,
              color: ConstantColor.blackColor,
            ),
          ),
          Text(
            widget.bigText,
            style: TextStyle(
              fontFamily: ConstantFonts.poppinsBold,
              fontSize: 40,
              color: ConstantColor.blackColor,
            ),
          ),
        ],
      ),
    );
  }
}
