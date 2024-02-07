// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import '../../../../commonWidgets/ToBeReachedCard.dart';
import '../../../../commonWidgets/VerifierCustomAppBar.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';

class ToBeReachedScreen extends StatefulWidget {
  const ToBeReachedScreen({super.key});

  @override
  State<ToBeReachedScreen> createState() => _ToBeReachedScreenState();
}

class _ToBeReachedScreenState extends State<ToBeReachedScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        VerifierCustomAppBar(
          title: "To Be Verified",
        ),
        Padding(
            padding: EdgeInsets.only(
          top: SizeConfig.defaultSize * Dimens.size2,
        )),
        Expanded(
          child: TobeReachedCard(),
        ),
      ],
    ));
  }
}
