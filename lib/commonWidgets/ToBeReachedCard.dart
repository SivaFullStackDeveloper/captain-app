// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:captain_app/constants/ConstantString.dart';
import 'package:captain_app/res/Dimens.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/ConstantColor.dart';
import '../../../constants/ConstantFonts.dart';
import '../verifierFlow/screens/homeScreen/controller/ToBeVerifiedController.dart';
import '../verifierFlow/screens/toBeReached/view/ToBeReachedMapScreenScaffold.dart';
import 'package:get/get.dart';

class TobeReachedCard extends StatefulWidget {
  const TobeReachedCard({Key? key}) : super(key: key);

  @override
  State<TobeReachedCard> createState() => _TobeReachedCardState();
}

class _TobeReachedCardState extends State<TobeReachedCard> {
  var verifierHomeScreenController = Get.put(VerifierHomeScreenController());
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: verifierHomeScreenController.requests.length,
        itemBuilder: (context, var index) {
          SizeConfig().init(context);
          return Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.defaultSize * Dimens.size1,
                left: SizeConfig.defaultSize * Dimens.size2,
                right: SizeConfig.defaultSize * Dimens.size2,
              ),
              child: InkWell(
                onTap: () {
                  Get.to(() => ToBeReachedMapScreenScaffold());
                },
                child: Container(
                  height: SizeConfig.defaultSize * Dimens.size12,
                  width: SizeConfig.defaultSize * Dimens.size18,
                  decoration: BoxDecoration(
                    color: ConstantColor.lightYellowColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(Dimens.circularRadius),
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
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                verifierHomeScreenController.requests[index].orderId.toString(),
                                style: TextStyle(
                                    color: ConstantColor.secondaryColor,
                                    fontFamily: ConstantFonts.poppinsBold,
                                    fontSize:
                                        SizeConfig.defaultSize * Dimens.size2),
                              ),
                              Text(
                                '${verifierHomeScreenController.requests[index].distance.toString()} ${ConstantString.kmsAway}',
                                style: TextStyle(
                                    color: ConstantColor.blackColor,
                                    fontFamily: ConstantFonts.poppinsMedium,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point8),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: ConstantColor.blackColor,
                            size: 40,
                          )
                        ],
                      )),
                ),
              ));
        });
  }
}
