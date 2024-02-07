import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../../../commonWidgets/TaskIndicator.dart';
import '../../../../../../../../../commonWidgets/VerifierCustomTextFormFeild.dart';
import '../../../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../utils/SizeConfig.dart';
import '../child/recheckPrintQR/recheckPrintQRScaffold.dart';

class RecheckProcess extends StatefulWidget {
  const RecheckProcess({Key? key}) : super(key: key);

  @override
  State<RecheckProcess> createState() => _RecheckProcessState();
}

class _RecheckProcessState extends State<RecheckProcess> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.defaultSize * Dimens.size2,
        right: SizeConfig.defaultSize * Dimens.size2,
      ),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ///------------------- Action Bar ---------------------
            ActionBar(
              title: 'Re-check Process',
            ),

            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * Dimens.size2,
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: SizeConfig.defaultSize * Dimens.size1,
                          ),
                          child: Column(children: [
                            Container(
                              width: SizeConfig.defaultSize * Dimens.size6,
                              height: SizeConfig.defaultSize * Dimens.size6,
                              alignment: Alignment.center,

                              ///-------------------- Icons inside circle -----------------
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: ConstantColor.greyColor,
                                  ),
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(SizeConfig.defaultSize *
                                          Dimens.size6))),

                              child: Text(
                                "1",
                                style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsMedium,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size2Point5,
                                    color: ConstantColor.secondaryColor,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),

                            /*  for ( var i in text )  TaskIndicator(taskNumber: "2",dashWidth: SizeConfig.defaultSize * Dimens.size20,),*/

                            ///------------------- Dash draw --------------------
                            TaskIndicator(
                              taskNumber: "2",
                              dashWidth: SizeConfig.defaultSize * Dimens.size12,
                            ),

                            ///------------------- Dash draw --------------------
                            TaskIndicator(
                              taskNumber: "3",
                              dashWidth: SizeConfig.defaultSize * Dimens.size15,
                            ),

                            ///------------------- Dash draw --------------------
                            TaskIndicator(
                              taskNumber: "4",
                              dashWidth: SizeConfig.defaultSize * Dimens.size12,
                            ),

                            TaskIndicator(
                              taskNumber: "5",
                              dashWidth: SizeConfig.defaultSize * Dimens.size12,
                            ),
                          ]),
                        ),
                      ),

                      ///----------------- All right side items ---------------
                      Expanded(
                          flex: 9,
                          child: Padding(
                              padding: EdgeInsets.only(
                                left: SizeConfig.defaultSize * Dimens.size1,
                                right: SizeConfig.defaultSize * Dimens.size2,
                                top: SizeConfig.defaultSize * Dimens.size1,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ///---------------- Take photo of printed invoice in box text ---------------------

                                  ///---------------- Take photo of the package text ---------------------
                                  Text(
                                    "Upload the video of Opening pack".tr,
                                    style: TextStyle(
                                        fontFamily: ConstantFonts.poppinsMedium,
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.size1Point6,
                                        color: ConstantColor.secondaryColor,
                                        fontWeight: FontWeight.w900),
                                  ),

                                  ///---------------- Camera Icon & show capture image ---------------------
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top:
                                          SizeConfig.defaultSize * Dimens.size1,
                                    ),
                                    child: InkWell(
                                      onTap: () => {
                                        // captureInvoicePicture(ImageSource.camera)
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: SizeConfig.defaultSize *
                                              Dimens.size1,
                                        ),
                                        child: Container(
                                            child: Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize *
                                                Dimens.size1,
                                          ),
                                          child: Container(
                                            width: SizeConfig.defaultSize *
                                                Dimens.size30,
                                            height: SizeConfig.defaultSize *
                                                Dimens.size10,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                color: ConstantColor
                                                    .miniDarkYellowColor),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Icon(
                                                  Icons.camera_alt,
                                                  size: SizeConfig.defaultSize *
                                                      Dimens.size2Point5,
                                                  color: ConstantColor
                                                      .secondaryColor,
                                                ),
                                                Text(
                                                  'click to capture',
                                                  style: TextStyle(
                                                    fontSize:
                                                        SizeConfig.defaultSize *
                                                            Dimens.size1Point8,
                                                    color: ConstantColor
                                                        .secondaryColor,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        )),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(
                                      top:
                                          SizeConfig.defaultSize * Dimens.size4,
                                    ),
                                    child: Text(
                                      "Upload Video of Purity Checking".tr,
                                      style: TextStyle(
                                          fontFamily:
                                              ConstantFonts.poppinsMedium,
                                          fontSize: SizeConfig.defaultSize *
                                              Dimens.size1Point6,
                                          color: ConstantColor.secondaryColor,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(
                                      top:
                                          SizeConfig.defaultSize * Dimens.size1,
                                    ),
                                    child: InkWell(
                                      onTap: () => {
                                        // captureInvoicePicture(ImageSource.camera)
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: SizeConfig.defaultSize *
                                              Dimens.size1,
                                        ),
                                        child: Container(
                                            child: Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize *
                                                Dimens.size1,
                                          ),
                                          child: Container(
                                            width: SizeConfig.defaultSize *
                                                Dimens.size30,
                                            height: SizeConfig.defaultSize *
                                                Dimens.size10,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                color: ConstantColor
                                                    .miniDarkYellowColor),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Icon(
                                                  Icons.camera_alt,
                                                  size: SizeConfig.defaultSize *
                                                      Dimens.size2Point5,
                                                  color: ConstantColor
                                                      .secondaryColor,
                                                ),
                                                Text(
                                                  'click to capture',
                                                  style: TextStyle(
                                                    fontSize:
                                                        SizeConfig.defaultSize *
                                                            Dimens.size1Point6,
                                                    color: ConstantColor
                                                        .secondaryColor,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        )),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(
                                      top:
                                          SizeConfig.defaultSize * Dimens.size3,
                                    ),
                                    child: Text(
                                      "Upload Photo of Caratometer".tr,
                                      style: TextStyle(
                                          fontFamily:
                                              ConstantFonts.poppinsMedium,
                                          fontSize: SizeConfig.defaultSize *
                                              Dimens.size1Point6,
                                          color: ConstantColor.secondaryColor,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top:
                                          SizeConfig.defaultSize * Dimens.size1,
                                    ),
                                    child: InkWell(
                                      onTap: () => {
                                        // captureInvoicePicture(ImageSource.camera)
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: SizeConfig.defaultSize *
                                              Dimens.size1,
                                        ),
                                        child: Container(
                                            child: Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize *
                                                Dimens.size1,
                                          ),
                                          child: Container(
                                            width: SizeConfig.defaultSize *
                                                Dimens.size30,
                                            height: SizeConfig.defaultSize *
                                                Dimens.size12,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                color: ConstantColor
                                                    .miniDarkYellowColor),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Icon(
                                                  Icons.camera_alt,
                                                  size: SizeConfig.defaultSize *
                                                      Dimens.size2Point5,
                                                  color: ConstantColor
                                                      .secondaryColor,
                                                ),
                                                Text(
                                                  'click to capture',
                                                  style: TextStyle(
                                                    fontSize:
                                                        SizeConfig.defaultSize *
                                                            Dimens.size1Point8,
                                                    color: ConstantColor
                                                        .secondaryColor,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        )),
                                      ),
                                    ),
                                  ),

                                  Padding(
                                    padding: EdgeInsets.only(
                                      top:
                                          SizeConfig.defaultSize * Dimens.size2,
                                    ),
                                    child: Text(
                                      "Scan QR On the Seal Bag".tr,
                                      style: TextStyle(
                                          fontFamily:
                                              ConstantFonts.poppinsMedium,
                                          fontSize: SizeConfig.defaultSize *
                                              Dimens.size1Point6,
                                          color: ConstantColor.secondaryColor,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),

                                  ///---------------- Camera Icon & show capture image ---------------------
                                  InkWell(
                                      onTap: () => {
                                            // captureInvoicePicture(ImageSource.camera)
                                          },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: SizeConfig.defaultSize *
                                              Dimens.size1,
                                        ),
                                        child: SvgPicture.asset(
                                            ConstantAssets.qrCodeScan),
                                      )),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top:
                                          SizeConfig.defaultSize * Dimens.size6,
                                    ),
                                    child: Text(
                                      "Photo of weight of new sealed bag".tr,
                                      style: TextStyle(
                                          fontFamily:
                                              ConstantFonts.poppinsMedium,
                                          fontSize: SizeConfig.defaultSize *
                                              Dimens.size1Point6,
                                          color: ConstantColor.secondaryColor,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top:
                                          SizeConfig.defaultSize * Dimens.size1,
                                    ),
                                    child: InkWell(
                                      onTap: () => {
                                        // captureInvoicePicture(ImageSource.camera)
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: SizeConfig.defaultSize *
                                              Dimens.size1,
                                        ),
                                        child: Container(
                                            child: Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize *
                                                Dimens.size1,
                                          ),
                                          child: Container(
                                            width: SizeConfig.defaultSize *
                                                Dimens.size30,
                                            height: SizeConfig.defaultSize *
                                                Dimens.size12,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                color: ConstantColor
                                                    .miniDarkYellowColor),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Icon(
                                                  Icons.camera_alt,
                                                  size: SizeConfig.defaultSize *
                                                      Dimens.size2Point5,
                                                  color: ConstantColor
                                                      .secondaryColor,
                                                ),
                                                Text(
                                                  'click to capture',
                                                  style: TextStyle(
                                                    fontSize:
                                                        SizeConfig.defaultSize *
                                                            Dimens.size1Point8,
                                                    color: ConstantColor
                                                        .secondaryColor,
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        )),
                                      ),
                                    ),
                                  ),
                                ],
                              )))
                    ]),
              ),
            ]),

            Padding(
              padding:
                  EdgeInsets.only(top: SizeConfig.defaultSize * Dimens.size2),
              child: VerifierCustomTextFormFeild3(
                labeltext: 'Enter Weight',
                hintText: 'Enter Number',
                sufixText: 'GRAM',
              ),
            ),

            VerifierCustomTextFormFeild3(
              labeltext: 'Enter Purity',
              hintText: 'Enter Number',
              sufixText: '%',
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Weight Difference Occurred',
                  style: TextStyle(
                      fontFamily: ConstantFonts.poppinsBold,
                      fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                      fontWeight: FontWeight.w900),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size2),
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.defaultSize * Dimens.size3,
                          vertical: SizeConfig.defaultSize * Dimens.size1),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              SizeConfig.defaultSize * Dimens.size1),
                          color: ConstantColor.extraLightYellowColor),
                      child: Text(
                        '10%',
                        style: TextStyle(
                            color: ConstantColor.darkRedColor,
                            fontFamily: ConstantFonts.poppinsBold,
                            fontSize:
                                SizeConfig.defaultSize * Dimens.size1Point6),
                      )),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Purity Difference Occurred',
                  style: TextStyle(
                      fontFamily: ConstantFonts.poppinsBold,
                      fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                      fontWeight: FontWeight.w900),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size1),
                  child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeConfig.defaultSize * Dimens.size3,
                          vertical: SizeConfig.defaultSize * Dimens.size1),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              SizeConfig.defaultSize * Dimens.size1),
                          color: ConstantColor.extraLightYellowColor),
                      child: Text(
                        '10%',
                        style: TextStyle(
                            color: ConstantColor.greenColor,
                            fontFamily: ConstantFonts.poppinsBold,
                            fontSize:
                                SizeConfig.defaultSize * Dimens.size1Point6),
                      )),
                )
              ],
            ),

            Padding(
              padding: EdgeInsets.only(
                left: SizeConfig.defaultSize * Dimens.size4,
                right: SizeConfig.defaultSize * Dimens.size4,
                top: SizeConfig.defaultSize * Dimens.size4,
                bottom: SizeConfig.defaultSize * Dimens.size4,
              ),
              child: ButtonWidget(
                  text: "PROCEED TO NEXT SEALED PACK".tr,
                  fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                  minWidth: SizeConfig.screenWidth,
                  minHeight: SizeConfig.defaultSize * Dimens.size5,
                  isChecked: true,
                  press: (BuildContext context) => {
                        Get.to(() => recheckPrintQRScaffold())
                        //reviewOrdersController.uploadInvoiceAndPackageApiFunction(reviewOrdersController.invoiceFile,reviewOrdersController.packageFile),
                      }),
            ),
          ],
        ),
      ),
    ));
  }
}
