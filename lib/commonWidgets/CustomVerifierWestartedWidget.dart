// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../../res/Dimens.dart';
import '../../../utils/SizeConfig.dart';

class CustomVerifierWestartedWidget extends StatefulWidget {
  var text;
  var color;
  var fontfamily;
  var fontsize;
  CustomVerifierWestartedWidget(
      {Key? key, this.text, this.color, this.fontfamily, this.fontsize})
      : super(key: key);

  @override
  State<CustomVerifierWestartedWidget> createState() =>
      _CustomVerifierWestartedWidgetState();
}

class _CustomVerifierWestartedWidgetState
    extends State<CustomVerifierWestartedWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          top: SizeConfig.defaultSize * Dimens.size2,
          left: SizeConfig.defaultSize * Dimens.size2,
          right: SizeConfig.defaultSize * Dimens.size2,
        ),
        child: Text(
          widget.text,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: widget.color,
              fontFamily: widget.fontfamily,
              fontSize: widget.fontsize),
        ));
  }
}
