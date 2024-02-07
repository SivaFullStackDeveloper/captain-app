import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../../../../../../utils/SizeConfig.dart';
import '../child/verifyManagerOTP/VerifyManagerOTPScaffold.dart';
import '../widget/ToManagerGoldBallsOrderList.dart';
import '../widget/ToManagerGoldBarOrderList.dart';






class ToManagerScreen extends StatefulWidget {
  const ToManagerScreen({Key? key}) : super(key: key);

  @override
  State<ToManagerScreen> createState() => _ToManagerScreenState();
}

class _ToManagerScreenState extends State<ToManagerScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(
            left: SizeConfig.defaultSize*Dimens.size2,
            right: SizeConfig.defaultSize*Dimens.size2,),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
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
                  Padding(
                    padding:  EdgeInsets.only(
                      top:SizeConfig.defaultSize*Dimens.size1Point5,
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
                  ///-------------------------------------------- Filter icon and Today date---------------------------------
                  Padding(
                    padding:  EdgeInsets.only(
                      top:SizeConfig.defaultSize*Dimens.size2,
                      left:SizeConfig.defaultSize*Dimens.size2,
                      right:SizeConfig.defaultSize*Dimens.size2,
                    ),
                    child: Container(
                      padding:  EdgeInsets.all(
                        SizeConfig.defaultSize*Dimens.size2,
                      ),
                      color:ConstantColor.extraLightYellowColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Gold Bars Added",style: TextStyle(
                            fontFamily: ConstantFonts.poppinsBold,
                            fontSize: SizeConfig.defaultSize * Dimens.size2Point1,
                            color: ConstantColor.blackColor,
                          )),
                          Text("Count : 02",style: TextStyle(
                            fontFamily: ConstantFonts.poppinsMedium,
                            fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                            color: ConstantColor.blackColor,
                          )),
                        ],
                      ),
                    ),
                  ),
                  ///-------------------------------------------- List of Gold Bar order ---------------------------------
                  const ToManagerGoldBarOrderList(),
                  Padding(
                    padding:  EdgeInsets.only(
                      top:SizeConfig.defaultSize*Dimens.size1,
                      left:SizeConfig.defaultSize*Dimens.size2,
                      right:SizeConfig.defaultSize*Dimens.size2,
                    ),
                    child: Container(
                      padding:  EdgeInsets.all(
                        SizeConfig.defaultSize*Dimens.size2,
                      ),
                      color:ConstantColor.extraLightYellowColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Gold Balls Added",style: TextStyle(
                            fontFamily: ConstantFonts.poppinsBold,
                            fontSize: SizeConfig.defaultSize * Dimens.size2Point1,
                            color: ConstantColor.blackColor,
                          )),
                        ],
                      ),
                    ),
                  ),
                  ///-------------------------------------------- List of Gold Bar order ---------------------------------
                  const ToManagerGoldBallsOrderList(),
                  Padding(
                    padding:  EdgeInsets.only(
                      top:SizeConfig.defaultSize*Dimens.size1,
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
                                  Text('2051',
                                    style:TextStyle(
                                      color: ConstantColor.blackColor,
                                      fontFamily: ConstantFonts.poppinsMedium,
                                      fontSize: SizeConfig.defaultSize*Dimens.size3,
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
                                  Text('TOTAL ENTERED WEIGHT',
                                    style:TextStyle(
                                      color: ConstantColor.secondaryColor,


                                    ) ,),
                                  Text('2050.990',
                                    style:TextStyle(
                                      color: ConstantColor.blackColor,
                                      fontFamily: ConstantFonts.poppinsMedium,
                                      fontSize: SizeConfig.defaultSize*Dimens.size3,
                                    ) ,),
                                  Text('GRAM',
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
                    padding: EdgeInsets.only(
                      left: SizeConfig.defaultSize * Dimens.size2,
                      right: SizeConfig.defaultSize * Dimens.size2,
                      top: SizeConfig.defaultSize * Dimens.size3,
                      bottom: SizeConfig.defaultSize * Dimens.size3,
                    ),
                    child: ButtonWidget(
                        text:  "HANDED OVER TO MANAGER ".tr,
                        fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                        minWidth: SizeConfig.screenWidth,
                        minHeight: SizeConfig.defaultSize * Dimens.size5,
                        isChecked: true ,
                        press: (BuildContext context) => {
                          Get.to(()=> VerifyManagerOtpScaffold())
                          //reviewOrdersController.uploadInvoiceAndPackageApiFunction(reviewOrdersController.invoiceFile,reviewOrdersController.packageFile),

                        }),
                  ),
                ]
            ),
          ),
        )
    );
  }
}