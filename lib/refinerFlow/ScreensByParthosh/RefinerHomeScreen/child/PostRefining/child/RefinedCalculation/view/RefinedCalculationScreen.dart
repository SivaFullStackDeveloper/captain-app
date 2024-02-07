import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../../../../../../utils/SizeConfig.dart';
import '../child/PrintAndStickBar/PrintAndStickBarScaffold.dart';





class RefinedCalculationScreen extends StatefulWidget {
  const RefinedCalculationScreen({Key? key}) : super(key: key);

  @override
  State<RefinedCalculationScreen> createState() => _RefinedCalculationScreenState();
}

class _RefinedCalculationScreenState extends State<RefinedCalculationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child:Padding(
          padding:  EdgeInsets.only(
            left: SizeConfig.defaultSize*Dimens.size2,
            right: SizeConfig.defaultSize*Dimens.size2,
          ),

          child: Column(
              children: [
                ActionBar(title: 'REFINED # BKS00034',),
                Padding(
                  padding:  EdgeInsets.only(
                    top:SizeConfig.defaultSize*Dimens.size2,
                    right:SizeConfig.defaultSize*Dimens.size2,
                    left:SizeConfig.defaultSize*Dimens.size2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Before Refining:',
                        style:TextStyle(
                          color: ConstantColor.blackColor,
                          fontFamily: ConstantFonts.poppinsMedium,
                          fontSize: SizeConfig.defaultSize*Dimens.size2Point1,
                        ) ,),
                    ],
                  ),
                ),

                Flexible(
                    flex: 7,
                    child: Column(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(
                              top:SizeConfig.defaultSize*Dimens.size2,
                              right:SizeConfig.defaultSize*Dimens.size2,
                              left:SizeConfig.defaultSize*Dimens.size2,
                            ),
                            child: Container(
                              padding:  EdgeInsets.all(
                                SizeConfig.defaultSize*Dimens.size1,
                              ),
                              decoration: BoxDecoration(
                                color: ConstantColor.extraLightYellowColor,
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              height: SizeConfig.defaultSize*Dimens.size15,
                              width: SizeConfig.screenWidth,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text('AVG WEIGHT',
                                            style:TextStyle(
                                              color: ConstantColor.secondaryColor,


                                            ) ,),
                                          Text('9',
                                            style:TextStyle(
                                              color: ConstantColor.blackColor,
                                              fontFamily: ConstantFonts.poppinsMedium,
                                              fontSize: SizeConfig.defaultSize*Dimens.size4,
                                            ) ,),
                                          Text('GRAM',
                                            style:TextStyle(
                                              color: ConstantColor.blackColor,
                                            ) ,)

                                        ],
                                      ),
                                      Container(
                                        height: 100,
                                        width: 1,
                                        decoration: BoxDecoration(
                                          color: ConstantColor.darkSecondaryColor,
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text('AVG PURITY',
                                            style:TextStyle(
                                              color: ConstantColor.secondaryColor,


                                            ) ,),
                                          Text('70',
                                            style:TextStyle(
                                              color: ConstantColor.blackColor,
                                              fontFamily: ConstantFonts.poppinsMedium,
                                              fontSize: SizeConfig.defaultSize*Dimens.size4,
                                            ) ,),
                                          Text('PERCENTAGE',
                                            style:TextStyle(
                                              color: ConstantColor.blackColor,
                                            ) ,)

                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),),
                          ),

                          // Padding(
                          //   padding: EdgeInsets.only(
                          //     left: SizeConfig.defaultSize * Dimens.size2,
                          //     top: SizeConfig.defaultSize * Dimens.size2,
                          //     right: SizeConfig.defaultSize * Dimens.size2,
                          //   ),
                          //   child: Text('Start Recording Melting Process',
                          //       style: TextStyle(
                          //         fontFamily: ConstantFonts.poppinsBold,
                          //         fontSize: SizeConfig.defaultSize * Dimens.size2,
                          //         color: ConstantColor.secondaryColor,
                          //       )),
                          // ),
                          //
                          // Padding(
                          //   padding: EdgeInsets.only(
                          //     top: SizeConfig.defaultSize * Dimens.size1,
                          //   ),
                          //   child:InkWell(
                          //     onTap: ()=> {
                          //
                          //     },
                          //     child: Padding(
                          //       padding: EdgeInsets.only(
                          //         top: SizeConfig.defaultSize * Dimens.size1,
                          //       ),
                          //       child: Container(
                          //           child:
                          //
                          //           Padding(
                          //             padding: EdgeInsets.only(
                          //               top: SizeConfig.defaultSize * Dimens.size1,
                          //             ),
                          //             child: Container(
                          //               width: SizeConfig.defaultSize * Dimens.size35,
                          //               height: SizeConfig.defaultSize * Dimens.size12,
                          //               decoration:  BoxDecoration(
                          //                   borderRadius: BorderRadius.all(Radius.circular(10)),
                          //                   color: ConstantColor.miniDarkYellowColor),
                          //               child: Column(
                          //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                          //                 children: [
                          //
                          //                   Icon(Icons.camera_alt, size: SizeConfig.defaultSize * Dimens.size2Point5,color: ConstantColor.secondaryColor,),
                          //                   Text('click to capture',style: TextStyle(
                          //                     fontSize: SizeConfig.defaultSize*Dimens.size1Point8,
                          //                     color: ConstantColor.secondaryColor,
                          //                   ),)
                          //                 ],
                          //               ),
                          //             ),
                          //           )
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          //
                          // Padding(
                          //   padding:  EdgeInsets.only(top:SizeConfig.defaultSize*Dimens.size2),
                          //   child: VerifierCustomTextFormFeild3(
                          //     labeltext: 'Enter Weight',
                          //     hintText:'Enter Number',
                          //     sufixText: 'GRAM',
                          //   ),
                          // ),
                          //
                          // VerifierCustomTextFormFeild3(
                          //   labeltext: 'Enter Purity',
                          //   hintText:'Enter Number',
                          //   sufixText: '%',
                          // ),

                          Padding(
                            padding:  EdgeInsets.only(
                              top:SizeConfig.defaultSize*Dimens.size2,
                              right:SizeConfig.defaultSize*Dimens.size2,
                              left:SizeConfig.defaultSize*Dimens.size2,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text('After Refining:',
                                  style:TextStyle(
                                    color: ConstantColor.blackColor,
                                    fontFamily: ConstantFonts.poppinsMedium,
                                    fontSize: SizeConfig.defaultSize*Dimens.size2Point1,
                                  ) ,),
                              ],
                            ),
                          ),

                          Padding(
                            padding:  EdgeInsets.only(
                              top:SizeConfig.defaultSize*Dimens.size2,
                              right:SizeConfig.defaultSize*Dimens.size2,
                              left:SizeConfig.defaultSize*Dimens.size2,
                            ),
                            child: Container(
                              padding:  EdgeInsets.all(
                                SizeConfig.defaultSize*Dimens.size1,
                              ),
                              decoration: BoxDecoration(
                                color: ConstantColor.extraLightYellowColor,
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              height: SizeConfig.defaultSize*Dimens.size15,
                              width: SizeConfig.screenWidth,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text('REFINED WEIGHT',
                                            style:TextStyle(
                                              color: ConstantColor.secondaryColor,
                                            ) ,),
                                          Text('8.7',
                                            style:TextStyle(
                                              color: ConstantColor.blackColor,
                                              fontFamily: ConstantFonts.poppinsMedium,
                                              fontSize: SizeConfig.defaultSize*Dimens.size4,
                                            ) ,),
                                          Text('GRAM',
                                            style:TextStyle(
                                              color: ConstantColor.blackColor,
                                            ) ,)

                                        ],
                                      ),
                                      Container(
                                        height: 100,
                                        width: 1,
                                        decoration: BoxDecoration(
                                          color: ConstantColor.darkSecondaryColor,
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text('REFINED PURITY',
                                            style:TextStyle(
                                              color: ConstantColor.secondaryColor,


                                            ) ,),
                                          Text('69',
                                            style:TextStyle(
                                              color: ConstantColor.blackColor,
                                              fontFamily: ConstantFonts.poppinsMedium,
                                              fontSize: SizeConfig.defaultSize*Dimens.size4,
                                            ) ,),
                                          Text('PERCENTAGE',
                                            style:TextStyle(
                                              color: ConstantColor.blackColor,
                                            ) ,)

                                        ],
                                      )

                                    ],
                                  ),
                                ],
                              ),),
                          ),

                          Padding(
                            padding:  EdgeInsets.only(
                              top:SizeConfig.defaultSize*Dimens.size2,
                              right:SizeConfig.defaultSize*Dimens.size2,
                              left:SizeConfig.defaultSize*Dimens.size2,
                            ),
                            child: Text('Difference In Recovery',
                              style:TextStyle(
                                color: ConstantColor.blackColor,
                                fontFamily: ConstantFonts.poppinsBold,
                                fontSize: SizeConfig.defaultSize*Dimens.size1Point5,
                              ) ,),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(
                              top:SizeConfig.defaultSize*Dimens.size2,
                              right:SizeConfig.defaultSize*Dimens.size2,
                              left:SizeConfig.defaultSize*Dimens.size2,
                            ),
                            child: Container(
                              color: ConstantColor.extraLightYellowColor,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Fine Gold Weight',
                                    style:TextStyle(
                                      color: ConstantColor.blackColor,
                                      fontFamily: ConstantFonts.poppinsMedium,
                                      fontSize: SizeConfig.defaultSize*Dimens.size1Point5,
                                    ) ,),
                                  Text('0.030 GRAM',
                                    style:TextStyle(
                                      color: ConstantColor.darkRedColor,
                                      fontFamily: ConstantFonts.poppinsBold,
                                      fontSize: SizeConfig.defaultSize*Dimens.size1Point5,
                                    ) ,),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: SizeConfig.defaultSize * Dimens.size2,
                              right: SizeConfig.defaultSize * Dimens.size2,
                              top: SizeConfig.defaultSize * Dimens.size6,
                            ),
                            child: ButtonWidget(
                                text:  "ACCEPT".tr,
                                fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                                minWidth: SizeConfig.screenWidth,
                                minHeight: SizeConfig.defaultSize * Dimens.size5,
                                isChecked: true ,
                                press: (BuildContext context) => {
                                  Get.to(()=> PrintAndStickBarScaffold())
                                  //reviewOrdersController.uploadInvoiceAndPackageApiFunction(reviewOrdersController.invoiceFile,reviewOrdersController.packageFile),

                                }),
                          ),
                        ]))]),
        ));
  }
}