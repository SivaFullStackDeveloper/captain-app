import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../../../commonWidgets/CameraPage.dart';
import '../../../../../../../res/Dimens.dart';
import '../../../../../../../utils/SizeConfig.dart';
import '../../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../../../../../commonWidgets/MySeparator.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../constants/ConstantString.dart';
import '../../../../../../../utils/commonController/CommonController.dart';
import '../../../../../../../utils/customObject/CustomObject.dart';
import '../controller/CheckItemController.dart';
import '../widget/CheckItemCardView.dart';

class CheckItemScreen extends StatefulWidget {
  @override
  _CheckItemScreenState createState() => _CheckItemScreenState();
}

class _CheckItemScreenState extends State<CheckItemScreen> with RouteAware {
  var checkItemController = Get.put(CheckItemController());
  var commonController = Get.put(CommonController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => checkItemController.isLoading.value
        ? const CustomProgressIndicator()
        : SafeArea(
            child: SingleChildScrollView(
              child: Obx(
                () => checkItemController.isLoading.value
                    ? const CustomProgressIndicator()
                    : Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.defaultSize * Dimens.size2,
                          right: SizeConfig.defaultSize * Dimens.size2,
                        ),
                        child: Column(
                          children: [
                            ///------------------- Action Bar ---------------------
                            ActionBar(
                              title: "Check Item",
                            ),

                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top:
                                          SizeConfig.defaultSize * Dimens.size2,
                                    ),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                top: SizeConfig.defaultSize *
                                                    Dimens.size2,
                                              ),
                                              child: Column(children: [
                                                ///---------------- Upload the video of checking -----------------
                                                Container(
                                                  width: SizeConfig.defaultSize * Dimens.size6,
                                                  height: SizeConfig.defaultSize * Dimens.size6,
                                                  alignment: Alignment.center,

                                                  ///-------------------- Icons inside circle -----------------
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: ConstantColor
                                                            .greyColor,
                                                      ),
                                                      borderRadius: BorderRadius
                                                          .all(Radius.circular(
                                                              SizeConfig
                                                                      .defaultSize *
                                                                  Dimens
                                                                      .size6))),

                                                  child: Text(
                                                    "1",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            ConstantFonts
                                                                .poppinsMedium,
                                                        fontSize: SizeConfig
                                                                .defaultSize *
                                                            Dimens.size2Point5,
                                                        color: ConstantColor
                                                            .secondaryColor,
                                                        fontWeight:
                                                            FontWeight.w900),
                                                  ),
                                                ),

                                                ///------------------- Dash draw --------------------
                                                RotatedBox(
                                                  quarterTurns: 1,
                                                  child: Container(
                                                    height: 2,
                                                    width:
                                                        SizeConfig.defaultSize *
                                                            Dimens.size15,
                                                    child: MySeparator(
                                                        color: ConstantColor
                                                            .blackColor),
                                                  ),
                                                ),

                                                ///------------- Select the refund status ---------------
                                                Container(
                                                  width:
                                                      SizeConfig.defaultSize *
                                                          Dimens.size6,
                                                  height:
                                                      SizeConfig.defaultSize *
                                                          Dimens.size6,
                                                  alignment: Alignment.center,

                                                  ///-------------------- Icons inside circle -----------------
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color: ConstantColor
                                                            .greyColor,
                                                      ),
                                                      borderRadius: BorderRadius
                                                          .all(Radius.circular(
                                                              SizeConfig
                                                                      .defaultSize *
                                                                  Dimens
                                                                      .size6))),
                                                  child: Text(
                                                    "2",
                                                    style: TextStyle(
                                                        fontFamily:
                                                            ConstantFonts
                                                                .poppinsMedium,
                                                        fontSize: SizeConfig
                                                                .defaultSize *
                                                            Dimens.size2Point5,
                                                        color: ConstantColor
                                                            .secondaryColor,
                                                        fontWeight:
                                                            FontWeight.w900),
                                                  ),
                                                ),

                                                ///------------------- Dash draw --------------------
                                                Visibility(
                                                  visible: checkItemController.refundStatus.value,
                                                  child: RotatedBox(
                                                    quarterTurns: 1,
                                                    child: Container(
                                                      height: 2,
                                                      width: SizeConfig
                                                              .defaultSize *
                                                          Dimens.size12,
                                                      child: MySeparator(
                                                          color: ConstantColor
                                                              .blackColor),
                                                    ),
                                                  ),
                                                ),

                                                ///--------------- Select the non-refunded reason ------------
                                                Visibility(
                                                  visible: checkItemController
                                                      .refundStatus.value,
                                                  child: Container(
                                                    width:
                                                        SizeConfig.defaultSize *
                                                            Dimens.size6,
                                                    height:
                                                        SizeConfig.defaultSize *
                                                            Dimens.size6,
                                                    alignment: Alignment.center,

                                                    ///-------------------- Icons inside circle -----------------
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                          color: ConstantColor
                                                              .greyColor,
                                                        ),
                                                        borderRadius: BorderRadius
                                                            .all(Radius.circular(
                                                                SizeConfig
                                                                        .defaultSize *
                                                                    Dimens
                                                                        .size6))),
                                                    child: Text(
                                                      "3",
                                                      style: TextStyle(
                                                          fontFamily: ConstantFonts
                                                              .poppinsMedium,
                                                          fontSize: SizeConfig
                                                                  .defaultSize *
                                                              Dimens
                                                                  .size2Point5,
                                                          color: ConstantColor
                                                              .secondaryColor,
                                                          fontWeight:
                                                              FontWeight.w900),
                                                    ),
                                                  ),
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
                                                    right: SizeConfig.defaultSize * Dimens.size1,
                                                    top: SizeConfig.defaultSize * Dimens.size1,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      InkWell(
                                                        onTap: () => {
                                                          CustomObject.videoThumbnailForScreen = "CheckItemScreen",
                                                          Get.to(() =>CameraPage())
                                                        },
                                                        child: Container(
                                                          child: commonController.checkItemVideoUpload.value == false
                                                              ? Column(
                                                                  children: [
                                                                    ///---------------- Upload the video of checking text ---------------------
                                                                    Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                        top: SizeConfig.defaultSize *
                                                                            Dimens.size2,
                                                                      ),
                                                                      child:
                                                                          Text(
                                                                        "Upload the video of checking"
                                                                            .tr,
                                                                        style: TextStyle(
                                                                            fontFamily:
                                                                                ConstantFonts.poppinsMedium,
                                                                            fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                                                                            color: ConstantColor.secondaryColor,
                                                                            fontWeight: FontWeight.w900),
                                                                      ),
                                                                    ),

                                                                    ///------------------ Video capture section ---------------------
                                                                    Padding(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .only(
                                                                        top: SizeConfig.defaultSize *
                                                                            Dimens.size2,
                                                                      ),
                                                                      child:
                                                                          Container(
                                                                        width: SizeConfig
                                                                            .screenWidth,
                                                                        height: SizeConfig.defaultSize *
                                                                            Dimens.size15,
                                                                        decoration: BoxDecoration(
                                                                            borderRadius: BorderRadius.circular(
                                                                              SizeConfig.defaultSize * Dimens.size1Point3,
                                                                            ),
                                                                            color: ConstantColor.miniDarkYellowColor),
                                                                        child: Column(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                            children: [
                                                                              ///---------------- Camera Icon ---------------------
                                                                              Container(
                                                                                width: SizeConfig.defaultSize * Dimens.size8,
                                                                                height: SizeConfig.defaultSize * Dimens.size8,
                                                                                decoration: BoxDecoration(shape: BoxShape.circle, color: ConstantColor.miniDarkYellowColor),
                                                                                child: Icon(
                                                                                  Icons.camera_alt,
                                                                                  size: SizeConfig.defaultSize * Dimens.size2Point5,
                                                                                  color: ConstantColor.secondaryColor,
                                                                                ),
                                                                              ),

                                                                              Text(
                                                                                "Click to capture".tr,
                                                                                style: TextStyle(
                                                                                  fontFamily: ConstantFonts.poppinsRegular,
                                                                                  fontSize: SizeConfig.defaultSize * Dimens.size1Point2,
                                                                                  color: ConstantColor.secondaryColor,
                                                                                ),
                                                                              ),
                                                                            ]),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                )
                                                              : Image.memory(
                                                                  commonController
                                                                      .uint8list),
                                                        ),
                                                      ),

                                                      ///---------------- Select refunded item text ------------------
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: SizeConfig
                                                                  .defaultSize *
                                                              Dimens.size2,
                                                        ),
                                                        child: Text(
                                                          "Select the refund status"
                                                              .tr,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  ConstantFonts
                                                                      .poppinsMedium,
                                                              fontSize: SizeConfig
                                                                      .defaultSize *
                                                                  Dimens
                                                                      .size1Point8,
                                                              color: ConstantColor
                                                                  .secondaryColor,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w900),
                                                        ),
                                                      ),

                                                      ///--------------- Can be refunded dropdown -------------------
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          top: SizeConfig
                                                                  .defaultSize *
                                                              Dimens.size1,
                                                        ),
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              ///--------------- refunded dropdown --------------
                                                              Padding(
                                                                padding: EdgeInsets.only(
                                                                    top: SizeConfig
                                                                            .defaultSize *
                                                                        Dimens
                                                                            .size2),
                                                                child:
                                                                    DropdownButtonFormField(
                                                                  decoration:
                                                                      InputDecoration(
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide: BorderSide(
                                                                          color: ConstantColor
                                                                              .greyColor,
                                                                          width:
                                                                              1),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5),
                                                                    ),
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderSide: BorderSide(
                                                                          color: ConstantColor
                                                                              .lightGreyColor,
                                                                          width:
                                                                              1),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              5),
                                                                    ),
                                                                    filled:
                                                                        true,
                                                                    //fillColor: Colors.blueAccent,
                                                                  ),
                                                                  dropdownColor:
                                                                      ConstantColor
                                                                          .lightYellowColor,
                                                                  style:
                                                                      TextStyle(
                                                                    fontFamily:
                                                                        ConstantFonts
                                                                            .poppinsMedium,
                                                                    fontSize: SizeConfig
                                                                            .defaultSize *
                                                                        Dimens
                                                                            .size1Point5,
                                                                    color: ConstantColor
                                                                        .blackColor,
                                                                  ),
                                                                  elevation: 1,
                                                                  hint: Text(
                                                                      "Select the refunded status"
                                                                          .tr,
                                                                      style:
                                                                          TextStyle(
                                                                        fontFamily:
                                                                            ConstantFonts.poppinsMedium,
                                                                        fontSize:
                                                                            SizeConfig.defaultSize *
                                                                                Dimens.size1Point5,
                                                                        color: ConstantColor
                                                                            .secondaryColor,
                                                                      )),
                                                                  value: checkItemController
                                                                      .selectedValue,
                                                                  onChanged:
                                                                      (var newValue) {
                                                                    setState(
                                                                        () {
                                                                      checkItemController
                                                                              .selectedValue =
                                                                          newValue;
                                                                      //CustomObject.sellAndReserveDuration = selectedValue;

                                                                      if (checkItemController
                                                                              .selectedValue ==
                                                                          "Can't be refunded") {
                                                                        checkItemController
                                                                            .refundStatus
                                                                            .value = true;
                                                                        checkItemController
                                                                            .itemStatus
                                                                            .value = "rejected";
                                                                      } else {
                                                                        checkItemController
                                                                            .refundStatus
                                                                            .value = false;
                                                                        checkItemController
                                                                            .itemStatus
                                                                            .value = "accepted";
                                                                      }
                                                                    });
                                                                  },
                                                                  items: checkItemController
                                                                      .dropdownItems,
                                                                ),
                                                              ),
                                                            ]),
                                                      ),

                                                      ///--------------- Reason refunded dropdown -------------------
                                                      Visibility(
                                                        visible:
                                                            checkItemController
                                                                .refundStatus
                                                                .value,
                                                        child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              ///---------------- Select refunded item text ------------------
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  top: SizeConfig
                                                                          .defaultSize *
                                                                      Dimens
                                                                          .size5,
                                                                ),
                                                                child: Text(
                                                                  "Select the non-refund reason"
                                                                      .tr,
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          ConstantFonts
                                                                              .poppinsMedium,
                                                                      fontSize: SizeConfig
                                                                              .defaultSize *
                                                                          Dimens
                                                                              .size1Point8,
                                                                      color: ConstantColor
                                                                          .secondaryColor,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900),
                                                                ),
                                                              ),

                                                              ///--------------- Can be refunded dropdown -------------------
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  top: SizeConfig
                                                                          .defaultSize *
                                                                      Dimens
                                                                          .size1,
                                                                ),
                                                                child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      ///--------------- refunded dropdown --------------
                                                                      Padding(
                                                                        padding:
                                                                            EdgeInsets.only(top: SizeConfig.defaultSize * Dimens.size2),
                                                                        child: DropdownButton<
                                                                            String>(
                                                                          isExpanded:
                                                                              true,
                                                                          // value: dropDownValue,
                                                                          hint: Text("Select Status".tr),

                                                                          value: checkItemController.dropdownValue.value.isNotEmpty
                                                                              ? checkItemController.dropdownValue.value
                                                                              : null,
                                                                          icon: Icon(Icons.arrow_drop_down),
                                                                          iconSize: 24,
                                                                          elevation: 16,
                                                                          style: TextStyle(
                                                                              color: ConstantColor.secondaryColor,
                                                                              fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                                                                              fontFamily: ConstantFonts.poppinsMedium),
                                                                          underline:
                                                                              Container(),
                                                                          onChanged:
                                                                              (String? data) {
                                                                            checkItemController.dropdownValue.value =
                                                                                data!;
                                                                            checkItemController.rejectedReason.value =
                                                                                data;
                                                                          },
                                                                          items: checkItemController
                                                                              .reasonList
                                                                              .value
                                                                              .map<DropdownMenuItem<String>>((String value) {
                                                                            return DropdownMenuItem<String>(
                                                                              value: value,
                                                                              child: Text(value),
                                                                            );
                                                                          }).toList(),
                                                                        ),
                                                                      ),
                                                                    ]),
                                                              ),
                                                            ]),
                                                      ),
                                                    ],
                                                  )))
                                        ]),
                                  ),
                                ]),

                            ///------------------ Proceed button -------------
                            Padding(
                              padding: EdgeInsets.only(
                                top: SizeConfig.defaultSize * Dimens.size5,
                                bottom: SizeConfig.defaultSize * Dimens.size3,
                              ),
                              child: ButtonWidget(
                                  text: "Proceed".tr,
                                  fontSize: SizeConfig.defaultSize *
                                      Dimens.size1Point5,
                                  minWidth: SizeConfig.screenWidth,
                                  minHeight:
                                      SizeConfig.defaultSize * Dimens.size5,
                                  isChecked:
                                      checkItemController.itemStatus.value == ""
                                          ? false
                                          : true,
                                  press: (BuildContext context) => {
                                        checkItemController.checkItemFunction()
                                      }),
                            ),
                          ],
                        ),
                      ),
              ),
            ),
          ));
  }
}
