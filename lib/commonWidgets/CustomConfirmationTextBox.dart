// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../res/Dimens.dart';
import '../../../utils/SizeConfig.dart';

class CustomConfirmationTextBox extends StatefulWidget {
  var text1;
  var text2;
  var fontsize;
  var fontfamily;
  var color;
  var color2;

  CustomConfirmationTextBox({
    Key? key,
    this.fontfamily,
    this.fontsize,
    this.text1,
    this.text2,
    this.color,
    this.color2,
  }) : super(key: key);

  @override
  State<CustomConfirmationTextBox> createState() =>
      _CustomConfirmationTextBoxState();
}

class _CustomConfirmationTextBoxState extends State<CustomConfirmationTextBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig.defaultSize * Dimens.sizePoint4,
        left: SizeConfig.defaultSize * Dimens.size1Point2,
        right: SizeConfig.defaultSize * Dimens.size1Point2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.text1,
            style: TextStyle(
              color: widget.color,
              fontFamily: widget.fontfamily,
              fontSize: widget.fontsize,
            ),
          ),
          Text(
            widget.text2,
            style: TextStyle(
              color: widget.color2,
              fontFamily: widget.fontfamily,
              fontSize: widget.fontsize,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomConfirmationTextBox2 extends StatefulWidget {
  var text1;
  var text2;
  var fontsize;
  var fontfamily;
  var fontfamily2;
  var color;
  var color2;

  CustomConfirmationTextBox2({
    Key? key,
    this.fontfamily,
    this.fontfamily2,
    this.fontsize,
    this.text1,
    this.text2,
    this.color,
    this.color2,
  }) : super(key: key);

  @override
  State<CustomConfirmationTextBox2> createState() =>
      _CustomConfirmationTextBox2State();
}

class _CustomConfirmationTextBox2State
    extends State<CustomConfirmationTextBox2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig.defaultSize * Dimens.sizePoint4,
        left: SizeConfig.defaultSize * Dimens.size1Point2,
        right: SizeConfig.defaultSize * Dimens.size1Point2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.text1,
            style: TextStyle(
              color: widget.color,
              fontFamily: widget.fontfamily,
              fontSize: widget.fontsize,
            ),
          ),
          Text(
            widget.text2,
            style: TextStyle(
              color: widget.color2,
              fontFamily: widget.fontfamily2,
              fontSize: widget.fontsize,
            ),
          ),
        ],
      ),
    );
  }
}
