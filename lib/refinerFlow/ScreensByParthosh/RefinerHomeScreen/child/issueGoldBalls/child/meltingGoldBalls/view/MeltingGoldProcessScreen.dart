import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../../../../../../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../../../../../../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../../../../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../../../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../../../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../../../../../../../../../../utils/SizeConfig.dart';
import '../../../../../../../../commonWidgets/CameraCaptureMessage.dart';
import '../../../../../RefinerHomeScreenScaffold.dart';
import '../../../IssueGoldBallsScaffold.dart';
import '../MeltingGoldBallsScaffold.dart';




class MeltingGoldProcessScreen extends StatefulWidget {
  const MeltingGoldProcessScreen({Key? key}) : super(key: key);

  @override
  State<MeltingGoldProcessScreen> createState() => _MeltingGoldProcessScreenState();
}

class _MeltingGoldProcessScreenState extends State<MeltingGoldProcessScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Padding(
          padding:  EdgeInsets.only(
            left: SizeConfig.defaultSize*Dimens.size2,
            right: SizeConfig.defaultSize*Dimens.size2,
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ActionBar(title: 'Melting Process',),
                Padding(
                  padding:  EdgeInsets.only(
                    top:SizeConfig.defaultSize*Dimens.size2,
                    right:SizeConfig.defaultSize*Dimens.size2,
                    left:SizeConfig.defaultSize*Dimens.size2,
                  ),
                  child: Text('Bag Count:4',
                    style:TextStyle(
                      color: ConstantColor.textBlackColor,
                      fontFamily: ConstantFonts.poppinsMedium,
                      fontSize: SizeConfig.defaultSize*Dimens.size1Point5,
                    ) ,),
                ),
                Flexible(
                    flex: 5,
                    child: Column(
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(
                              top:SizeConfig.defaultSize*Dimens.size4,
                              right:SizeConfig.defaultSize*Dimens.size2,
                              left:SizeConfig.defaultSize*Dimens.size2,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: ConstantColor.extraLightYellowColor,
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              height: SizeConfig.defaultSize*Dimens.size14,
                              width: SizeConfig.screenWidth,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text('TOTAL WEIGHT',
                                            style:TextStyle(
                                              color: ConstantColor.secondaryColor,
                                            ) ,),
                                          Text('8.67',
                                            style:TextStyle(
                                              color: ConstantColor.blackColor,
                                              fontFamily: ConstantFonts.poppinsMedium,
                                              fontSize: SizeConfig.defaultSize*Dimens.size4,
                                            ) ,),
                                          Text('GRAM',
                                            style:TextStyle(
                                              color: ConstantColor.blackColor,
                                            ) ,),
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
                                          Text('71',
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
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.only(
                                      top:SizeConfig.defaultSize*Dimens.size1,
                                      right:SizeConfig.defaultSize*Dimens.size2,
                                      left:SizeConfig.defaultSize*Dimens.size2,
                                    ),
                                    child: Text('TOTAL RECOVERY FINE GOLD : 6.300 GRAM',
                                      style:TextStyle(
                                        color: ConstantColor.secondaryColor,
                                        fontFamily: ConstantFonts.poppinsMedium,
                                        fontSize: SizeConfig.defaultSize*Dimens.size1,
                                      ) ,),
                                  ),
                                ],
                              ),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: SizeConfig.defaultSize * Dimens.size2,
                              right: SizeConfig.defaultSize * Dimens.size2,
                              top: SizeConfig.defaultSize * Dimens.size5,
                            ),
                            child: ButtonWidget(
                                text:  "CONTINUE SCANNING".tr,
                                fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                                minWidth: SizeConfig.screenWidth,
                                minHeight: SizeConfig.defaultSize * Dimens.size5,
                                isChecked: true ,
                                press: (BuildContext context) => {
                                  Get.to(()=> const MeltingGoldBallsScaffold()),
                                  //reviewOrdersController.uploadInvoiceAndPackageApiFunction(reviewOrdersController.invoiceFile,reviewOrdersController.packageFile),

                                }),
                          ),
                          Container(
                            margin:  EdgeInsets.all(
                                SizeConfig.defaultSize * Dimens.size1Point8
                            ),
                            padding:  EdgeInsets.all(
                                SizeConfig.defaultSize * Dimens.size1Point8
                            ),
                            height: SizeConfig.defaultSize * Dimens.size22,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  SizeConfig.defaultSize * Dimens.size1Point3,
                                ),
                                color: ConstantColor.extraLightYellowColor),
                            child: InkWell(
                              onTap: () {

                              },
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CameraCaptureMessage(
                                      scan:false,
                                      title: "Start Recording Melting Process",
                                    )
                                  ]),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: SizeConfig.defaultSize * Dimens.size2,
                              right: SizeConfig.defaultSize * Dimens.size2,
                              top: SizeConfig.defaultSize * Dimens.size1,
                            ),
                            child: ButtonWidget(
                                text:  "COMPLETED".tr,
                                fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                                minWidth: SizeConfig.screenWidth,
                                minHeight: SizeConfig.defaultSize * Dimens.size5,
                                isChecked: true ,
                                press: (BuildContext context) => {
                                  Get.to(()=> const IssueGoldBallsScaffold() ),
                                  // Get.to(()=> RefinerOtpScreenScaffold())
                                  //reviewOrdersController.uploadInvoiceAndPackageApiFunction(reviewOrdersController.invoiceFile,reviewOrdersController.packageFile),

                                }),
                          ),
                        ])),
              ]),
        ));
  }
}
