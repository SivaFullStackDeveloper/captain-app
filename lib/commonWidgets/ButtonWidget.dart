import 'package:get/get.dart';

import '../../res/Dimens.dart';
import '../../utils/SizeConfig.dart';
import 'package:flutter/material.dart';

import '../../constants/ConstantAssets.dart';
import '../../constants/ConstantColor.dart';
import '../../constants/ConstantFonts.dart';

class ButtonWidget extends StatelessWidget {
  String text;
  double fontSize;
  double minWidth;
  double minHeight;
  bool isChecked;
  final Function(BuildContext context) press;

  ButtonWidget({
    required this.text,
    required this.fontSize,
    required this.minWidth,
    required this.minHeight,
    required this.isChecked,
    required this.press,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: isChecked == true
              ? ConstantColor.secondaryColor
              : ConstantColor.disableButtonColor,
          onPrimary: Colors.white,
          minimumSize: Size(minWidth, minHeight),
          shadowColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              SizeConfig.defaultSize * Dimens.size1,
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontFamily: ConstantFonts.poppinsRegular,
              fontSize: fontSize,
              color: ConstantColor.whiteColor,
              fontWeight: FontWeight.w900),
        ),
        onPressed: () => isChecked == true ? press(context) : "");
  }
}

class ButtonWidget4 extends StatelessWidget {
  double minWidth;
  double minHeight;
  bool isChecked;
  IconData icon;
  final Function(BuildContext context) press;

  ButtonWidget4({
    required this.icon,
    required this.minWidth,
    required this.minHeight,
    required this.isChecked,
    required this.press,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: isChecked == true
              ? ConstantColor.secondaryColor
              : ConstantColor.secondaryColor,
          onPrimary: Colors.white,
          minimumSize: Size(minWidth, minHeight),
          shadowColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              SizeConfig.defaultSize * Dimens.size1,
            ),
          ),
        ),
        child: Icon(
          icon,
          size: 30,
        ),
        onPressed: () => isChecked == true ? press(context) : "");
  }
}

class ButtonWidget2 extends StatelessWidget {
  String text;
  double fontSize;
  double minWidth;
  double minHeight;
  bool isChecked;
  IconData icon;
  final Function(BuildContext context) press;

  ButtonWidget2({
    required this.icon,
    required this.text,
    required this.fontSize,
    required this.minWidth,
    required this.minHeight,
    required this.isChecked,
    required this.press,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: isChecked == true
              ? ConstantColor.secondaryColor
              : ConstantColor.secondaryColor,
          onPrimary: Colors.white,
          minimumSize: Size(minWidth, minHeight),
          shadowColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              SizeConfig.defaultSize * Dimens.size10,
            ),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(
            SizeConfig.defaultSize * Dimens.size1,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(icon),
              Text(
                text,
                style: TextStyle(
                  fontFamily: ConstantFonts.poppinsRegular,
                  fontSize: fontSize,
                  color: ConstantColor.whiteColor,
                ),
              ),
            ],
          ),
        ),
        onPressed: () => isChecked == true ? press(context) : "");
  }
}

class ButtonWidget3 extends StatelessWidget {
  String text;
  double fontSize;
  double minWidth;
  double minHeight;
  bool isChecked;

  final Function(BuildContext context) press;

  ButtonWidget3({
    required this.text,
    required this.fontSize,
    required this.minWidth,
    required this.minHeight,
    required this.isChecked,
    required this.press,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig.defaultSize * Dimens.size1,
      ),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: isChecked == true
                ? ConstantColor.secondaryColor
                : ConstantColor.secondaryColor,
            onPrimary: Colors.white,
            minimumSize: Size(minWidth, minHeight),
            shadowColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                SizeConfig.defaultSize * Dimens.size10,
              ),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(
              SizeConfig.defaultSize * Dimens.size1,
            ),
            child: Text(
              text,
              style: TextStyle(
                fontFamily: ConstantFonts.poppinsMedium,
                fontSize: fontSize,
                color: ConstantColor.whiteColor,
              ),
            ),
          ),
          onPressed: () => isChecked == true ? press(context) : ""),
    );
  }
}

class CustomOutlineBorder extends StatefulWidget {
  var width;
  var height;
  var color;
  var text;
  IconData icon;

  CustomOutlineBorder(
      {Key? key,
      this.width,
      this.color,
      this.height,
      required this.icon,
      this.text})
      : super(key: key);

  @override
  State<CustomOutlineBorder> createState() => _CustomOutlineBorderState();
}

class _CustomOutlineBorderState extends State<CustomOutlineBorder> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          border: Border.all(color: widget.color, width: 3),
          //color: ConstantColor.darkSecondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(60)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              color: widget.color,
            ),
            Text(
              widget.text,
              style: TextStyle(
                fontFamily: ConstantFonts.poppinsMedium,
                fontSize: 15,
                color: widget.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomOutlineBorder2 extends StatefulWidget {
  var width;
  var height;
  var color;
  var text;

  CustomOutlineBorder2(
      {Key? key, this.width, this.color, this.height, this.text})
      : super(key: key);

  @override
  State<CustomOutlineBorder2> createState() => _CustomOutlineBorder2State();
}

class _CustomOutlineBorder2State extends State<CustomOutlineBorder2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        border: Border.all(color: widget.color, width: 1),
        //color: ConstantColor.darkSecondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.text,
            style: TextStyle(
              fontFamily: ConstantFonts.poppinsMedium,
              fontSize: 15,
              color: widget.color,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomOutlineCloseButton extends StatefulWidget {
  var width;
  var height;
  var color;
  IconData icon;

  CustomOutlineCloseButton(
      {Key? key, this.width, this.color, this.height, required this.icon})
      : super(key: key);

  @override
  State<CustomOutlineCloseButton> createState() =>
      _CustomOutlineCloseButtonState();
}

class _CustomOutlineCloseButtonState extends State<CustomOutlineCloseButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: SizeConfig.defaultSize * Dimens.size2,
          right: SizeConfig.defaultSize * Dimens.size2,
          top: SizeConfig.defaultSize * Dimens.size2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {
              Get.back();
            },
            child: Container(
              height: SizeConfig.defaultSize * Dimens.size4,
              width: SizeConfig.defaultSize * Dimens.size4,
              decoration: BoxDecoration(
                border: Border.all(color: widget.color, width: 1),
                //color: ConstantColor.darkSecondaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Icon(
                widget.icon,
                color: ConstantColor.blackColor,
                size: SizeConfig.defaultSize * Dimens.size3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
