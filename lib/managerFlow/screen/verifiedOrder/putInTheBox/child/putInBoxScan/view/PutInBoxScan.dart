import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../commonWidgets/RoundedEdittextField.dart';
import '../../../../../../../commonWidgets/TaskIndicator.dart';
import '../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../constants/ConstantString.dart';
import '../../../../../../../res/Dimens.dart';
import '../../../../../../../utils/SizeConfig.dart';
import '../child/orderReadyToShip/OrderReadyToShipScaffold.dart';
import '../controller/PutInBoxScanController.dart';


class PutInBoxScan extends StatefulWidget {
  const PutInBoxScan({Key? key}) : super(key: key);

  @override
  State<PutInBoxScan> createState() => _PutInBoxScanState();
}

class _PutInBoxScanState extends State<PutInBoxScan> {
  @override
  Widget build(BuildContext context) {
    var putInBoxScanController = Get.put(PutInBoxScanController());
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(
            left: SizeConfig.defaultSize * Dimens.size2,
            right: SizeConfig.defaultSize * Dimens.size2,
          ),
          child: Column(
            children: [
              ///------------------- Action Bar ---------------------
              ActionBar(
                title: "Put in the Box",
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
                              top: SizeConfig.defaultSize * Dimens.size2,
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

                              ///------------------- Dash draw --------------------
                              TaskIndicator(
                                  taskNumber: "2",
                                  dashWidth:
                                      SizeConfig.defaultSize * Dimens.size15),
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
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: SizeConfig.defaultSize *
                                            Dimens.size2,
                                      ),

                                      ///--------------- Enter amount in need text --------------
                                      child: Text(
                                        "Scan QR on the seal bag".tr,
                                        style: TextStyle(
                                            height: 2,
                                            fontFamily:
                                                ConstantFonts.poppinsMedium,
                                            fontSize: SizeConfig.defaultSize *
                                                Dimens.size1Point8,
                                            color: ConstantColor.secondaryColor,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                          top: SizeConfig.defaultSize *
                                              Dimens.size2,
                                        ),
                                        child: SvgPicture.asset(
                                            ConstantAssets.qrCodeScan)),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: SizeConfig.defaultSize *
                                            Dimens.size8,
                                      ),

                                      ///--------------- Enter amount in need text --------------
                                      child: Text(
                                        "Take photo of gold on weight scale".tr,
                                        style: TextStyle(
                                            height: 2,
                                            fontFamily:
                                                ConstantFonts.poppinsMedium,
                                            fontSize: SizeConfig.defaultSize *
                                                Dimens.size1Point8,
                                            color: ConstantColor.secondaryColor,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        // captureImage(ImageSource.camera);
                                      },
                                      child: Column(
                                        children: [
                                          // sendToWarehouseDetailController.imagePicked.value == false ?
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: SizeConfig.defaultSize *
                                                  Dimens.size1Point5,
                                            ),
                                            child: Container(
                                              width: SizeConfig.screenWidth,
                                              height: SizeConfig.defaultSize *
                                                  Dimens.size12,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    SizeConfig.defaultSize *
                                                        Dimens.size1Point3,
                                                  ),
                                                  color: ConstantColor
                                                      .miniDarkYellowColor),
                                              child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    ///---------------- Camera Icon ---------------------
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color: ConstantColor
                                                              .miniDarkYellowColor),
                                                      child: Icon(
                                                        Icons.camera_alt,
                                                        size: SizeConfig
                                                                .defaultSize *
                                                            Dimens.size2Point5,
                                                        color: ConstantColor
                                                            .secondaryColor,
                                                      ),
                                                    ),

                                                    Text(
                                                      "Click to capture".tr,
                                                      style: TextStyle(
                                                        fontFamily:
                                                            ConstantFonts
                                                                .poppinsRegular,
                                                        fontSize: SizeConfig
                                                                .defaultSize *
                                                            Dimens.size1Point5,
                                                        color: ConstantColor
                                                            .secondaryColor,
                                                      ),
                                                    ),
                                                  ]),
                                            ),
                                          )
                                          // : Padding(
                                          // padding: EdgeInsets.only(
                                          //     top: SizeConfig.defaultSize * Dimens.size2),
                                          // child: getImage()),
                                        ],
                                      ),
                                    ),
                                  ],
                                )))
                      ]),
                ),
              ]),

              ///--------------- Edittext ----------------
              Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * Dimens.size2,
                ),
                child: RoundedEdittextField(
                  enabled: true,
                  controller: putInBoxScanController.weightController.value,
                  title: "0",
                  suffix: ConstantString.gram,
                  enterHint: "Enter Weight",
                  onChanged: (value) {},
                ),
              ),

              ///------------------ Order Ready to ship -------------
              Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * Dimens.size7,
                ),
                child: ButtonWidget(
                    text: "PLACE REQUEST TO DELIVER".tr,
                    fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                    minWidth: SizeConfig.screenWidth,
                    minHeight: SizeConfig.defaultSize * Dimens.size5,
                    isChecked: true,
                    press: (BuildContext context) => {
                          Get.to(() => OrderReadyToShipScaffold())
                          // sendToWarehouseDetailController.sendToWareHouseFunction()
                        }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
