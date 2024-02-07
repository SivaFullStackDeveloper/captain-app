// ignore_for_file: prefer_const_constructors_in_immutables, prefer_typing_uninitialized_variables, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import '../../../constants/ConstantColor.dart';
import '../../../constants/ConstantFonts.dart';
import '../../../res/Dimens.dart';
import '../../../utils/SizeConfig.dart';

class VerifierCustomTextFormFeild extends StatefulWidget {
  var controller;
  var sufixText;
  var labeltext;
  var hintText;
  VerifierCustomTextFormFeild({
    Key? key,
    this.controller,
    this.sufixText,
    this.labeltext,
    this.hintText,
  }) : super(key: key);

  @override
  State<VerifierCustomTextFormFeild> createState() =>
      _VerifierCustomTextFormFeildState();
}

class _VerifierCustomTextFormFeildState
    extends State<VerifierCustomTextFormFeild> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.defaultSize * Dimens.size1Point2),
      child: TextFormField(
        controller: widget.controller,
        cursorColor: ConstantColor.secondaryColor,
        decoration: InputDecoration(
          labelStyle: TextStyle(color: ConstantColor.secondaryColor),
          labelText: widget.labeltext,
          suffixText: widget.sufixText,
          hintText: widget.hintText,
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ConstantColor.darkRedColor,
            ),
            borderRadius:
                BorderRadius.all(Radius.circular(Dimens.circularRadius)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ConstantColor.secondaryColor,
            ),
            borderRadius:
                BorderRadius.all(Radius.circular(Dimens.circularRadius)),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ConstantColor.darkRedColor,
            ),
            borderRadius:
                BorderRadius.all(Radius.circular(Dimens.circularRadius)),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ConstantColor.greyColor,
            ),
            borderRadius:
                BorderRadius.all(Radius.circular(Dimens.circularRadius)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ConstantColor.secondaryColor,
            ),
            borderRadius:
                BorderRadius.all(Radius.circular(Dimens.circularRadius)),
          ),
        ),
      ),
    );
  }
}

class VerifierCustomTextFormFeild2 extends StatefulWidget {
  var controller;
  IconData sufixIcon;
  var labeltext;
  var hintText;
  VerifierCustomTextFormFeild2({
    Key? key,
    this.controller,
    required this.sufixIcon,
    this.labeltext,
    this.hintText,
  }) : super(key: key);

  @override
  State<VerifierCustomTextFormFeild2> createState() =>
      _VerifierCustomTextFormFeild2State();
}

class _VerifierCustomTextFormFeild2State
    extends State<VerifierCustomTextFormFeild2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig.defaultSize * Dimens.size1Point8,
        left: SizeConfig.defaultSize * Dimens.size1Point2,
        right: SizeConfig.defaultSize * Dimens.size1Point2,
      ),
      child: TextFormField(
        cursorColor: ConstantColor.secondaryColor,
        decoration: InputDecoration(
          labelStyle: TextStyle(color: ConstantColor.secondaryColor),
          labelText: widget.labeltext,
          suffixIcon: Icon(
            widget.sufixIcon,
            size: 40,
            color: ConstantColor.secondaryColor,
          ),
          hintText: widget.hintText,
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ConstantColor.darkRedColor,
            ),
            borderRadius:
                BorderRadius.all(Radius.circular(Dimens.circularRadius)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ConstantColor.secondaryColor,
            ),
            borderRadius:
                BorderRadius.all(Radius.circular(Dimens.circularRadius)),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ConstantColor.darkRedColor,
            ),
            borderRadius:
                BorderRadius.all(Radius.circular(Dimens.circularRadius)),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ConstantColor.greyColor,
            ),
            borderRadius:
                BorderRadius.all(Radius.circular(Dimens.circularRadius)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ConstantColor.secondaryColor,
            ),
            borderRadius:
                BorderRadius.all(Radius.circular(Dimens.circularRadius)),
          ),
        ),
      ),
    );
  }
}

class VerifierCustomTextFormFeild3 extends StatefulWidget {
  var controller;
  var sufixText;
  var labeltext;
  var hintText;
  VerifierCustomTextFormFeild3({
    Key? key,
    this.controller,
    this.sufixText,
    this.labeltext,
    this.hintText,
  }) : super(key: key);

  @override
  State<VerifierCustomTextFormFeild3> createState() =>
      _VerifierCustomTextFormFeild3State();
}

class _VerifierCustomTextFormFeild3State
    extends State<VerifierCustomTextFormFeild3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.defaultSize * Dimens.size1Point2),
      child: TextFormField(
        controller: widget.controller,
        cursorColor: ConstantColor.secondaryColor,
        decoration: InputDecoration(
          suffixStyle: TextStyle(
              fontFamily: ConstantFonts.poppinsBold,
              color: ConstantColor.secondaryColor),
          labelStyle: TextStyle(color: ConstantColor.secondaryColor),
          labelText: widget.labeltext,
          suffixText: widget.sufixText,
          hintText: widget.hintText,
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ConstantColor.darkRedColor,
            ),
            borderRadius:
                BorderRadius.all(Radius.circular(Dimens.circularRadius)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ConstantColor.secondaryColor,
            ),
            borderRadius:
                BorderRadius.all(Radius.circular(Dimens.circularRadius)),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ConstantColor.darkRedColor,
            ),
            borderRadius:
                BorderRadius.all(Radius.circular(Dimens.circularRadius)),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ConstantColor.greyColor,
            ),
            borderRadius:
                BorderRadius.all(Radius.circular(Dimens.circularRadius)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ConstantColor.secondaryColor,
            ),
            borderRadius:
                BorderRadius.all(Radius.circular(Dimens.circularRadius)),
          ),
        ),
      ),
    );
  }
}
