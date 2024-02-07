import 'package:captain_app/constants/ConstantColor.dart';
import 'package:captain_app/constants/ConstantFonts.dart';
import 'package:captain_app/res/Dimens.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../VerificationCompletedDetails/VerificationCompletedDetailsScreenScaffold.dart';

class SubmittedToManagerScreenCard extends StatefulWidget {
  const SubmittedToManagerScreenCard({Key? key}) : super(key: key);

  @override
  State<SubmittedToManagerScreenCard> createState() =>
      _SubmittedToManagerScreenCardState();
}

class _SubmittedToManagerScreenCardState
    extends State<SubmittedToManagerScreenCard> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, var index) {
          SizeConfig().init(context);
          return Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.defaultSize * Dimens.size1,
                left: SizeConfig.defaultSize * Dimens.size2,
                right: SizeConfig.defaultSize * Dimens.size2,
              ),
              child:
              ///------------------------------------------ button Widget --------------------------------
              InkWell(
                onTap: () {
                  Get.to(() => const VerificationCompletedDetailsScreenScaffold());
                },
                child: Container(
                  height: SizeConfig.defaultSize * Dimens.size12,
                  width: SizeConfig.defaultSize * Dimens.size18,
                  decoration: BoxDecoration(
                    color: ConstantColor.lightYellowColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size2,
                        left: SizeConfig.defaultSize * Dimens.size2,
                        right: SizeConfig.defaultSize * Dimens.size2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
///------------------------------------------ order ID Widget --------------------------------
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '# BKS1234567890',
                                style: TextStyle(
                                    color: ConstantColor.secondaryColor,
                                    fontFamily: ConstantFonts.poppinsBold,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point6),
                              ),
///------------------------------------------Verified date Widget --------------------------------
                              Text(
                                'Verified on: 13/09/2022',
                                style: TextStyle(
                                    color: ConstantColor.blackColor,
                                    fontFamily: ConstantFonts.poppinsMedium,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point6),
                              ),
                            ],
                          ),
///------------------------------------------Icon Widget --------------------------------
                          Icon(
                            Icons.arrow_forward_ios,
                            color: ConstantColor.blackColor,
                          )
                        ],
                      )),
                ),
              ));
        });
    ;
  }
}
