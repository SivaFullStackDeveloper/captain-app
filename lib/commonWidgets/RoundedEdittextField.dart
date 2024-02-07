import 'package:flutter/material.dart';

import '../constants/ConstantColor.dart';
import '../constants/ConstantFonts.dart';
import '../res/Dimens.dart';
import '../utils/SizeConfig.dart';

class RoundedEdittextField extends StatelessWidget{

  TextEditingController controller;
  String title;
  String enterHint;
  final ValueChanged<String> onChanged;
  bool enabled = true;
  String suffix = "Gram";

  RoundedEdittextField({
    required this.controller,
    required this.title,
    required this.enabled,
    required this.suffix,
    required this.enterHint,
    required this.onChanged

  }) : super();

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: SizeConfig.screenWidth,
        height:  SizeConfig.defaultSize * Dimens.size5Point5,
        child: TextField(
          cursorColor: ConstantColor.secondaryColor,
          enabled: enabled,
          controller: controller,
          onChanged: onChanged,
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: ConstantColor.secondaryColor, fontFamily:
          ConstantFonts.poppinsMedium,),
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius:  BorderRadius.all(
                 Radius.circular(SizeConfig.defaultSize * Dimens.size1),
              ),
              borderSide:
              BorderSide(color: ConstantColor.secondaryColor, width: 1),
            ),
            filled: true,
            disabledBorder: OutlineInputBorder(
              borderRadius:  BorderRadius.all(
                 Radius.circular(SizeConfig.defaultSize * Dimens.size1),
              ),
              borderSide:
              BorderSide(color: ConstantColor.secondaryColor, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius:  BorderRadius.all(
                 Radius.circular(SizeConfig.defaultSize * Dimens.size1),
              ),
              borderSide:
              BorderSide(color: ConstantColor.greyColor, width: 1),
            ),
            fillColor: ConstantColor.whiteColor,
            suffix: Text("$suffix",
                style: TextStyle(color: ConstantColor.greyColor, fontFamily:
                ConstantFonts.poppinsMedium,)),
            labelText: enterHint,
            labelStyle: TextStyle(color: ConstantColor.greyColor, fontFamily:
            ConstantFonts.poppinsMedium,fontSize: SizeConfig.defaultSize * Dimens.size1Point3),
            border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: ConstantColor.secondaryColor, width: 0.7),
            ),
          ),
        ),
      );
  }

}