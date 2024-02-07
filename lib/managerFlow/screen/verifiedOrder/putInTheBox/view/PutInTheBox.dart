import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../commonWidgets/VerifierCustomAppBar.dart';
import '../../../../../constants/ConstantColor.dart';
import '../../../../../constants/ConstantFonts.dart';
import '../../../../../res/Dimens.dart';
import '../../../../../utils/SizeConfig.dart';
import '../child/putInBoxScan/PutInBoxScanScaffold.dart';


class PutInTheBox extends StatefulWidget {
  const PutInTheBox({Key? key}) : super(key: key);

  @override
  State<PutInTheBox> createState() => _PutInTheBoxState();
}

class _PutInTheBoxState extends State<PutInTheBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: SizeConfig.defaultSize * Dimens.size1,
      ),
      child: Column(children: [
        VerifierCustomAppBar(title: 'Put in the Box'),
        Expanded(
            flex: 2,
            child: ListView.builder(
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
                      child: InkWell(
                        onTap: () {},
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Checkbox(
                                    value: true,
                                    onChanged: (context) {},
                                    activeColor: ConstantColor.secondaryColor,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Verified# BKS00034',
                                        style: TextStyle(
                                            color: ConstantColor.secondaryColor,
                                            fontFamily:
                                                ConstantFonts.poppinsBold,
                                            fontSize: SizeConfig.defaultSize *
                                                Dimens.size2),
                                      ),
                                      Text(
                                        'Verified On: 14-02-22, 08:00 PM',
                                        style: TextStyle(
                                            color: ConstantColor.blackColor,
                                            fontFamily:
                                                ConstantFonts.poppinsRegular,
                                            fontSize: SizeConfig.defaultSize *
                                                Dimens.size1Point6),
                                      ),
                                      Text(
                                        'Received On: 14-02-22, 08:00 PM',
                                        style: TextStyle(
                                            color: ConstantColor.blackColor,
                                            fontFamily:
                                                ConstantFonts.poppinsRegular,
                                            fontSize: SizeConfig.defaultSize *
                                                Dimens.size1Point6),
                                      ),
                                    ],
                                  ),
                                  InkWell(
                                    onTap: () {
                                      showModalBottomSheet(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.vertical(
                                                top: Radius.circular(
                                              SizeConfig.defaultSize *
                                                  Dimens.size1Point5,
                                            )),
                                          ),
                                          context: context,
                                          builder: (context) {
                                            return Padding(
                                                padding: EdgeInsets.all(
                                                    SizeConfig.defaultSize *
                                                        Dimens.size3),
                                                child: Column(
                                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: <Widget>[
                                                      // Icon(
                                                      //   Icons.remove_rounded,
                                                      //   size: SizeConfig
                                                      //           .defaultSize *
                                                      //       Dimens.size1,
                                                      // ),
                                                      Text(
                                                        'Selected Seal Bags',
                                                        style: TextStyle(
                                                            fontSize: SizeConfig
                                                                    .defaultSize *
                                                                Dimens.size2,
                                                            fontFamily:
                                                                ConstantFonts
                                                                    .poppinsBold,
                                                            color: ConstantColor
                                                                .secondaryColor),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.symmetric(
                                                            vertical: SizeConfig
                                                                    .defaultSize *
                                                                Dimens.size2),
                                                        child: Container(
                                                          padding: EdgeInsets.symmetric(
                                                              vertical: SizeConfig
                                                                      .defaultSize *
                                                                  Dimens.size2),
                                                          decoration: BoxDecoration(
                                                              borderRadius: BorderRadius
                                                                  .circular(SizeConfig
                                                                          .defaultSize *
                                                                      Dimens
                                                                          .size1),
                                                              color: ConstantColor
                                                                  .extraLightYellowColor),
                                                          child:
                                                              IntrinsicHeight(
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceEvenly,
                                                              children: [
                                                                Column(
                                                                  children: [
                                                                    Text(
                                                                      '498',
                                                                      style: TextStyle(
                                                                          fontSize: SizeConfig.defaultSize *
                                                                              Dimens
                                                                                  .size4,
                                                                          fontFamily: ConstantFonts
                                                                              .poppinsBold,
                                                                          color:
                                                                              ConstantColor.blackColor),
                                                                    ),
                                                                    Text(
                                                                      ' GRAM',
                                                                      style: TextStyle(
                                                                          fontSize: SizeConfig.defaultSize *
                                                                              Dimens
                                                                                  .size3,
                                                                          fontFamily: ConstantFonts
                                                                              .poppinsMedium,
                                                                          color:
                                                                              ConstantColor.lightGreyColor),
                                                                    )
                                                                  ],
                                                                ),
                                                                VerticalDivider(
                                                                  thickness: SizeConfig
                                                                          .defaultSize *
                                                                      Dimens
                                                                          .sizePoint1,
                                                                  color: ConstantColor
                                                                      .secondaryColor,
                                                                ),
                                                                Column(
                                                                  children: [
                                                                    Text(
                                                                      '498',
                                                                      style: TextStyle(
                                                                          fontSize: SizeConfig.defaultSize *
                                                                              Dimens
                                                                                  .size4,
                                                                          fontFamily: ConstantFonts
                                                                              .poppinsBold,
                                                                          color:
                                                                              ConstantColor.blackColor),
                                                                    ),
                                                                    Text(
                                                                      ' GRAM',
                                                                      style: TextStyle(
                                                                          fontSize: SizeConfig.defaultSize *
                                                                              Dimens
                                                                                  .size3,
                                                                          fontFamily: ConstantFonts
                                                                              .poppinsMedium,
                                                                          color:
                                                                              ConstantColor.lightGreyColor),
                                                                    )
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      ButtonWidget(
                                                          text: 'SEAL INTO BAG',
                                                          fontSize: SizeConfig
                                                                  .defaultSize *
                                                              Dimens.size2,
                                                          minWidth: SizeConfig
                                                                  .defaultSize *
                                                              Dimens.size40,
                                                          minHeight: SizeConfig
                                                                  .defaultSize *
                                                              Dimens.size5,
                                                          isChecked: true,
                                                          press: (context) {
                                                            Get.to(() =>
                                                                PutInBoxScanScaffold());
                                                          })
                                                    ]));
                                          });
                                    },
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: ConstantColor.blackColor,
                                      size: 23,
                                    ),
                                  ),
                                ],
                              )),
                        ),
                      ));
                })),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: ConstantColor.whiteColor,
                  offset: Offset(
                    SizeConfig.defaultSize * Dimens.sizePoint3,
                    SizeConfig.defaultSize * Dimens.sizePoint3,
                  ),
                  // blurRadius: SizeConfig.defaultSize * Dimens.sizePoint8,
                  spreadRadius: SizeConfig.defaultSize * Dimens.size1,
                ),
              ]),
              padding: EdgeInsets.all(SizeConfig.defaultSize * Dimens.size2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '0',
                    style: TextStyle(
                        fontSize: SizeConfig.defaultSize * Dimens.size4,
                        fontFamily: ConstantFonts.poppinsBold,
                        color: ConstantColor.secondaryColor),
                  ),
                  Text(
                    ' GRAM SELECTED',
                    style: TextStyle(
                        fontSize: SizeConfig.defaultSize * Dimens.size3,
                        fontFamily: ConstantFonts.poppinsMedium,
                        color: ConstantColor.lightGreyColor),
                  )
                ],
              ),
            )
          ],
        )
      ]),
    );
  }
}
