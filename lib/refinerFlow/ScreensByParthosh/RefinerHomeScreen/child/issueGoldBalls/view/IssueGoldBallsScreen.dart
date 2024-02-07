import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../../../../../../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../../../../../../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../../../../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../../../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../../../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../../../../../../../../../../utils/SizeConfig.dart';
import '../../../../../../../../commonWidgets/CameraCaptureMessage.dart';
import '../child/meltingGoldBalls/MeltingGoldBallsScaffold.dart';
import '../child/registerGoldBar/RegisterGoldBarScaffold.dart';





class IssueGoldBallsScreen extends StatefulWidget {
  const IssueGoldBallsScreen({Key? key}) : super(key: key);

  @override
  State<IssueGoldBallsScreen> createState() => _IssueGoldBallsScreenState();
}

class _IssueGoldBallsScreenState extends State<IssueGoldBallsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding:  EdgeInsets.only(
            left: SizeConfig.defaultSize*Dimens.size2,
            right: SizeConfig.defaultSize*Dimens.size2,
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ActionBar(title: 'Issue Gold Balls to bars',),
                Padding(
                  padding:  EdgeInsets.only(
                    top:SizeConfig.defaultSize*Dimens.size2,
                    right:SizeConfig.defaultSize*Dimens.size2,
                    left:SizeConfig.defaultSize*Dimens.size2,
                  ),
                  child: Text('Total Bag Count: 100',
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
                              padding:  EdgeInsets.all(
                                SizeConfig.defaultSize*Dimens.size2,
                              ),
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
                                          Text('TOTAL WEIGHT OF GOLD BALLS',
                                            style:TextStyle(
                                              color: ConstantColor.secondaryColor,
                                            ) ,),
                                          Text('1010.000',
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
                                    ],
                                  ),
                                ],
                              ),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: SizeConfig.defaultSize * Dimens.size4,
                              right: SizeConfig.defaultSize * Dimens.size4,
                              top: SizeConfig.defaultSize * Dimens.size5,
                            ),
                            child: ButtonWidget(
                                text:  "Start Melting Gold Balls".tr,
                                fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                                minWidth: SizeConfig.screenWidth,
                                minHeight: SizeConfig.defaultSize * Dimens.size5,
                                isChecked: true ,
                                press: (BuildContext context) => {
                                 Get.to(()=>const MeltingGoldBallsScaffold())
                                  //reviewOrdersController.uploadInvoiceAndPackageApiFunction(reviewOrdersController.invoiceFile,reviewOrdersController.packageFile),

                                }),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: SizeConfig.defaultSize * Dimens.size4,
                              right: SizeConfig.defaultSize * Dimens.size4,
                              top: SizeConfig.defaultSize * Dimens.size4,
                            ),
                            child: ButtonWidget(
                                text:  "Register Gold Bar".tr,
                                fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                                minWidth: SizeConfig.screenWidth,
                                minHeight: SizeConfig.defaultSize * Dimens.size5,
                                isChecked: true ,
                                press: (BuildContext context) => {
                                  Get.to(()=> const RegisterGoldBarScaffold() ),
                                  // Get.to(()=> RefinerOtpScreenScaffold())
                                  //reviewOrdersController.uploadInvoiceAndPackageApiFunction(reviewOrdersController.invoiceFile,reviewOrdersController.packageFile),

                                }),
                          ),
                        ])),
              ]),
        ));
  }
}
