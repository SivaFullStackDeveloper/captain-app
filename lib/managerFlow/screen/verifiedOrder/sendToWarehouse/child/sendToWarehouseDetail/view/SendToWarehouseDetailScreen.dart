import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../../../commonWidgets/TaskIndicator.dart';
import '../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../../../../commonWidgets/MySeparator.dart';
import '../../../../../../../res/Dimens.dart';
import '../../../../../../../utils/SizeConfig.dart';
import '../../../../../../../commonWidgets/ImageSectionWithTitle.dart';
import '../../../../../../../commonWidgets/RoundedEdittextField.dart';
import '../../../../../../../constants/ConstantString.dart';
import '../controller/SendToWarehouseDetailController.dart';

class SendToWarehouseDetailScreen extends StatefulWidget {
  @override
  _SendToWarehouseDetailScreenState createState() =>
      _SendToWarehouseDetailScreenState();
}

class _SendToWarehouseDetailScreenState
    extends State<SendToWarehouseDetailScreen> with RouteAware {
  var sendToWarehouseDetailController =
      Get.put(SendToWarehouseDetailController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => sendToWarehouseDetailController.isLoading.value
        ? const CustomProgressIndicator()
        : SafeArea(
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
                      title: "Order #BKS0005455656",
                    ),

                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                                        top: SizeConfig.defaultSize *
                                            Dimens.size2,
                                      ),
                                      child: Column(children: [
                                        Container(
                                          width: SizeConfig.defaultSize *
                                              Dimens.size6,
                                          height: SizeConfig.defaultSize *
                                              Dimens.size6,
                                          alignment: Alignment.center,

                                          ///-------------------- Icons inside circle -----------------
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                color: ConstantColor.greyColor,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      SizeConfig.defaultSize *
                                                          Dimens.size6))),

                                          child: Text(
                                            "1",
                                            style: TextStyle(
                                                fontFamily:
                                                    ConstantFonts.poppinsMedium,
                                                fontSize:
                                                    SizeConfig.defaultSize *
                                                        Dimens.size2Point5,
                                                color: ConstantColor
                                                    .secondaryColor,
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ),

                                        ///------------------- Dash draw --------------------
                                        TaskIndicator(
                                            taskNumber: "2",
                                            dashWidth: SizeConfig.defaultSize *
                                                Dimens.size15),
                                      ]),
                                    ),
                                  ),

                                  ///----------------- All right side items ---------------
                                  Expanded(
                                      flex: 9,
                                      child: Padding(
                                          padding: EdgeInsets.only(
                                            left: SizeConfig.defaultSize *
                                                Dimens.size1,
                                            right: SizeConfig.defaultSize *
                                                Dimens.size2,
                                            top: SizeConfig.defaultSize *
                                                Dimens.size1,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
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
                                                      fontFamily: ConstantFonts
                                                          .poppinsMedium,
                                                      fontSize: SizeConfig
                                                              .defaultSize *
                                                          Dimens.size1Point8,
                                                      color: ConstantColor
                                                          .secondaryColor,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ),

                                              Padding(
                                                  padding: EdgeInsets.only(
                                                    top:
                                                        SizeConfig.defaultSize *
                                                            Dimens.size2,
                                                  ),
                                                  child: SvgPicture.asset(
                                                      ConstantAssets
                                                          .qrCodeScan)),

                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: SizeConfig.defaultSize *
                                                      Dimens.size8,
                                                ),

                                                ///--------------- Enter amount in need text --------------
                                                child: Text(
                                                  "Take photo of gold on weight scale"
                                                      .tr,
                                                  style: TextStyle(
                                                      height: 2,
                                                      fontFamily: ConstantFonts
                                                          .poppinsMedium,
                                                      fontSize: SizeConfig
                                                              .defaultSize *
                                                          Dimens.size1Point8,
                                                      color: ConstantColor
                                                          .secondaryColor,
                                                      fontWeight:
                                                          FontWeight.w900),
                                                ),
                                              ),

                                              InkWell(
                                                onTap: () {
                                                  captureImage(
                                                      ImageSource.camera);
                                                },
                                                child: Column(
                                                  children: [
                                                    sendToWarehouseDetailController
                                                                .imagePicked
                                                                .value ==
                                                            false
                                                        ? Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                              top: SizeConfig
                                                                      .defaultSize *
                                                                  Dimens
                                                                      .size1Point5,
                                                            ),
                                                            child: Container(
                                                              width: SizeConfig
                                                                  .screenWidth,
                                                              height: SizeConfig
                                                                      .defaultSize *
                                                                  Dimens.size12,
                                                              decoration:
                                                                  BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .circular(
                                                                        SizeConfig.defaultSize *
                                                                            Dimens.size1Point3,
                                                                      ),
                                                                      color: ConstantColor
                                                                          .miniDarkYellowColor),
                                                              child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    ///---------------- Camera Icon ---------------------
                                                                    Container(
                                                                      decoration: BoxDecoration(
                                                                          shape: BoxShape
                                                                              .circle,
                                                                          color:
                                                                              ConstantColor.miniDarkYellowColor),
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .camera_alt,
                                                                        size: SizeConfig.defaultSize *
                                                                            Dimens.size2Point5,
                                                                        color: ConstantColor
                                                                            .secondaryColor,
                                                                      ),
                                                                    ),

                                                                    Text(
                                                                      "Click to capture"
                                                                          .tr,
                                                                      style:
                                                                          TextStyle(
                                                                        fontFamily:
                                                                            ConstantFonts.poppinsRegular,
                                                                        fontSize:
                                                                            SizeConfig.defaultSize *
                                                                                Dimens.size1Point5,
                                                                        color: ConstantColor
                                                                            .secondaryColor,
                                                                      ),
                                                                    ),
                                                                  ]),
                                                            ),
                                                          )
                                                        : Padding(
                                                            padding: EdgeInsets.only(
                                                                top: SizeConfig
                                                                        .defaultSize *
                                                                    Dimens
                                                                        .size2),
                                                            child: getImage()),
                                                  ],
                                                ),
                                              ),

                                              ///--------------- Edittext ----------------
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: SizeConfig.defaultSize *
                                                      Dimens.size2,
                                                ),
                                                child: RoundedEdittextField(
                                                  enabled: true,
                                                  controller:
                                                      sendToWarehouseDetailController
                                                          .weightController
                                                          .value,
                                                  title: "0",
                                                  suffix: ConstantString.gram,
                                                  enterHint: "Enter Weight",
                                                  onChanged: (value) {},
                                                ),
                                              ),

                                              /*  Text(
                                        tobeAssignedDetailController.initialTime.toString(),
                                        style: TextStyle(
                                            height: 2,
                                            fontFamily: ConstantFonts.poppinsMedium,
                                            fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                                            color: ConstantColor.secondaryColor,
                                            fontWeight: FontWeight.w900),
                                      ),*/
                                            ],
                                          )))
                                ]),
                          ),
                        ]),

                    ///------------------ Order Ready to ship -------------
                    Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size7,
                      ),
                      child: ButtonWidget(
                          text: "Ok To place in warehouse".tr,
                          fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                          minWidth: SizeConfig.screenWidth,
                          minHeight: SizeConfig.defaultSize * Dimens.size5,
                          isChecked: true,
                          press: (BuildContext context) => {
                                sendToWarehouseDetailController
                                    .sendToWareHouseFunction()
                              }),
                    ),

                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text(
                        "Re - Check ?".tr,
                        style: TextStyle(
                          height: 2,
                          fontFamily: ConstantFonts.poppinsMedium,
                          fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                          color: ConstantColor.secondaryColor,
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ),
          ));
  }

  Widget getImage() {
    return ClipOval(
        child: Image.file(
      sendToWarehouseDetailController.imgFile,
      width: SizeConfig.defaultSize * Dimens.size14,
      height: SizeConfig.defaultSize * Dimens.size14,
      fit: BoxFit.cover,
    ));
  }

  Future captureImage(ImageSource source) async {
    final picker = ImagePicker();
    final imageFile = await picker.pickImage(source: source);
    if (mounted) {
      setState(() {
        sendToWarehouseDetailController.imgFile = File(imageFile!.path);
        sendToWarehouseDetailController.imagePicked.value = true;
      });
    }
  }
}
