import 'package:captain_app/constants/ConstantString.dart';
import 'package:captain_app/res/Dimens.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import '../../../../commonWidgets/VerifierCustomAppBar.dart';
import 'SubmmitedToMangerScreenCard.dart';

class SubmittedToMangerScreen extends StatefulWidget {
  const SubmittedToMangerScreen({Key? key}) : super(key: key);

  @override
  State<SubmittedToMangerScreen> createState() =>
      _SubmittedToMangerScreenState();
}

class _SubmittedToMangerScreenState extends State<SubmittedToMangerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
///------------------------------------------ App Bar --------------------------------
          VerifierCustomAppBar(title: ConstantString.submittedToManager),
          Padding(
              padding: EdgeInsets.only(
            top: SizeConfig.defaultSize * Dimens.size2,
          )),
///------------------------------------------ Submitted To Manager Screen Card Widget --------------------------------
          const Expanded(
            child: SubmittedToManagerScreenCard(),
          ),
        ],
      ),
    );
  }
}
