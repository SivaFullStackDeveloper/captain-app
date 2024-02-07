import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/res/Dimens.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';

import '../../toBeVerified/view/ToBeVerifiedCardWidget.dart';




class SubmittedScreen extends StatefulWidget {
  const SubmittedScreen({Key? key}) : super(key: key);

  @override
  State<SubmittedScreen> createState() => _SubmittedScreenState();
}

class _SubmittedScreenState extends State<SubmittedScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
///------------------------------------------ App Bar --------------------------------
            Padding(
              padding:  EdgeInsets.only(
                left: SizeConfig.defaultSize * Dimens.size2,
                right: SizeConfig.defaultSize * Dimens.size2,
              ),
              child: ActionBar(
                title: 'To Be Submitted',
              ),
            ),

///------------------------------------------ Verified custom list widget --------------------------------
            Expanded(
                child:  CustomCardWidget(
                  title:"",
                  kms:"Verified on: 14-02-2022"
                )
            ),
          ],
        ),
    );
  }
}
