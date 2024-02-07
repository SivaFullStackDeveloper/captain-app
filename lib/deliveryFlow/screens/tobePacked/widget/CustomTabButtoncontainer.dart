import 'package:captain_app/constants/ConstantColor.dart';
import 'package:captain_app/constants/ConstantFonts.dart';
import 'package:flutter/material.dart';

import '../../../../../../res/Dimens.dart';
import '../../../../../../utils/SizeConfig.dart';





class CustomTabContainerButtonDelivery extends StatefulWidget {

  var  isPressed;
  var text ;
  CustomTabContainerButtonDelivery({Key? key,this.text,required this.isPressed}) : super(key: key);

  @override
  State<CustomTabContainerButtonDelivery> createState() => _CustomTabContainerButtonDeliveryState();
}

class _CustomTabContainerButtonDeliveryState extends State<CustomTabContainerButtonDelivery> {
  @override
  Widget build(BuildContext context) {
    return widget.isPressed?   Padding(
      padding:  EdgeInsets.only(
        top:SizeConfig.defaultSize*Dimens.size2,
        left:SizeConfig.defaultSize*Dimens.size1Point2,
        right:SizeConfig.defaultSize*Dimens.sizePoint5,

      ),
      child:  Container(
        height: SizeConfig.defaultSize*Dimens.size4,
        width: widget.text=="Re-Order from Returns"?SizeConfig.defaultSize*Dimens.size20:SizeConfig.defaultSize*Dimens.size10,
        decoration: BoxDecoration(
          color: ConstantColor.secondaryColor,
          border: Border.all(
            color: ConstantColor.secondaryColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(
            SizeConfig.defaultSize*Dimens.size2,
          )),
        ),
        child: Center(
          child: Text(widget.text,style: TextStyle(
            color: ConstantColor.whiteColor,
            fontFamily: ConstantFonts.poppinsRegular,

          ),),
        ),
      ),
    )
        : Padding(
      padding:  EdgeInsets.only(
        top:SizeConfig.defaultSize*Dimens.size2,
        left:SizeConfig.defaultSize*Dimens.size1Point2,
        right:SizeConfig.defaultSize*Dimens.sizePoint5,
      ),
      child:Container(
        height: SizeConfig.defaultSize*Dimens.size4,
        width: widget.text == "Re-Order from Returns"?SizeConfig.defaultSize*Dimens.size20:SizeConfig.defaultSize*Dimens.size10,
        decoration: BoxDecoration(

          border: Border.all(
            color: ConstantColor.secondaryColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(
            SizeConfig.defaultSize*Dimens.size2,
          )),
        ),
        child: Center(
          child: Text(widget.text,style: TextStyle(
            color: ConstantColor.secondaryColor,
            fontFamily: ConstantFonts.poppinsRegular,

          ),),
        ),
      ),
    );
  }
}
