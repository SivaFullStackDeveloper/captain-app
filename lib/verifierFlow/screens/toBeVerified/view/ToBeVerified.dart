import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:captain_app/verifierFlow/screens/toBeVerified/view/ToBeVerifiedCardWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../res/Dimens.dart';
import '../../homeScreen/controller/ToBeVerifiedController.dart';



class ToBeVerified extends StatefulWidget {
  const ToBeVerified({Key? key}) : super(key: key);

  @override
  State<ToBeVerified> createState() => _ToBeVerifiedState();
}

class _ToBeVerifiedState extends State<ToBeVerified> {
  var toBeVerifiedController = Get.put(VerifierHomeScreenController());
  @override
  Widget build(BuildContext context) {
    return Obx(()=>toBeVerifiedController.isLoading.value ? const CustomProgressIndicator():SafeArea(
        child:Column(
          children: [
///-------------------------------------------------  App bar widget -------------------------------------------
            Padding(
              padding:  EdgeInsets.only(

                left:SizeConfig.defaultSize*Dimens.size2,
                right:SizeConfig.defaultSize*Dimens.size2,
              ),
              child: ActionBar(
                title: 'To Be Verified',
              ),
            ),
///------------------------------------------------- Custom Card to be verified widget -------------------------------------------
            Expanded(child:
            CustomCardWidget(
              kms: '8.3kms',

            )),

          ],
        ),

    ));
  }
}
