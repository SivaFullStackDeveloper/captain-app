import 'package:captain_app/managerFlow/screen/verifiedOrder/sendToWarehouse/child/sendToWarehouseDetail/controller/SendToWarehouseDetailController.dart';
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
import '../child/recheckProcess/RecheckProcessScaffold.dart';

class ScanAndCheck extends StatefulWidget {
  const ScanAndCheck({Key? key}) : super(key: key);

  @override
  State<ScanAndCheck> createState() => _ScanAndCheckState();
}

class _ScanAndCheckState extends State<ScanAndCheck> {
  var scanAndCheckController = Get.put(SendToWarehouseDetailController());

  @override
  Widget build(BuildContext context) {
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
                title: "Order #BKS0005455656",
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
                  controller: scanAndCheckController.weightController.value,
                  title: "0",
                  suffix: ConstantString.gram,
                  enterHint: "Enter Weight",
                  onChanged: (value) {},
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Difference Occurred',
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

              ///------------------ Order Ready to ship -------------
              Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * Dimens.size7,
                ),
                child: ButtonWidget(
                    text: "PLEASE RE-CHECK".tr,
                    fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                    minWidth: SizeConfig.screenWidth,
                    minHeight: SizeConfig.defaultSize * Dimens.size5,
                    isChecked: true,
                    press: (BuildContext context) => {
                          Get.to(() => RecheckProcessScaffold())
                          // sendToWarehouseDetailController.sendToWareHouseFunction()
                        }),
              ),
            ],
          ),
        ),
      ),
    );

    //   SafeArea(
    //   child: SingleChildScrollView(
    //     physics: const BouncingScrollPhysics(),
    //     child: Padding(
    //       padding: EdgeInsets.only(
    //         left: SizeConfig.defaultSize * Dimens.size2,
    //         right: SizeConfig.defaultSize * Dimens.size2,
    //       ),
    //       child: Column(
    //         children: [
    //           ///------------------- Action Bar -----------------------------------
    //           ActionBar(title: 'Order#1234'),
    //
    //           Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    //             Padding(
    //               padding: EdgeInsets.only(
    //                 top: SizeConfig.defaultSize * Dimens.size2,
    //               ),
    //               child: Row(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   children: [
    //                     Expanded(
    //                       flex: 2,
    //                       child: Padding(
    //                         padding: EdgeInsets.only(
    //                           top: SizeConfig.defaultSize * Dimens.size2,
    //                         ),
    //                         child: Column(children: [
    //                           Container(
    //                             width: SizeConfig.defaultSize * Dimens.size6,
    //                             height: SizeConfig.defaultSize * Dimens.size6,
    //                             alignment: Alignment.center,
    //
    //                             ///-------------------- Circle 1 section -----------------
    //                             decoration: BoxDecoration(
    //                                 border: Border.all(
    //                                   color: ConstantColor.greyColor,
    //                                 ),
    //                                 borderRadius: BorderRadius.all(
    //                                     Radius.circular(SizeConfig.defaultSize *
    //                                         Dimens.size6))),
    //                             child: Text(
    //                               "1",
    //                               style: TextStyle(
    //                                   fontFamily: ConstantFonts.poppinsMedium,
    //                                   fontSize: SizeConfig.defaultSize *
    //                                       Dimens.size2Point5,
    //                                   color: ConstantColor.secondaryColor,
    //                                   fontWeight: FontWeight.w900),
    //                             ),
    //                           ),
    //
    //                           /*  for ( var i in text )  TaskIndicator(taskNumber: "2",dashWidth: SizeConfig.defaultSize * Dimens.size20,),*/
    //                           ///------------------- Dash draw with circle 2--------------------
    //                           TaskIndicator(
    //                               taskNumber: "2",
    //                               dashWidth:
    //                                   SizeConfig.defaultSize * Dimens.size28),
    //                         ]),
    //                       ),
    //                     ),
    //
    //                     ///----------------- All right side items ---------------
    //                     Expanded(
    //                         flex: 9,
    //                         child: Padding(
    //                             padding: EdgeInsets.only(
    //                               left: SizeConfig.defaultSize * Dimens.size1,
    //                               right: SizeConfig.defaultSize * Dimens.size2,
    //                               top: SizeConfig.defaultSize * Dimens.size1,
    //                             ),
    //                             child: Column(
    //                               crossAxisAlignment: CrossAxisAlignment.start,
    //                               children: [
    //                                 Padding(
    //                                   padding: EdgeInsets.only(
    //                                     top: SizeConfig.defaultSize *
    //                                         Dimens.size2,
    //                                   ),
    //
    //                                   ///--------------- Review Order Items text --------------
    //                                   child: Text(
    //                                     '',
    //                                     style: TextStyle(
    //                                         height: 2,
    //                                         fontFamily:
    //                                             ConstantFonts.poppinsMedium,
    //                                         fontSize: SizeConfig.defaultSize *
    //                                             Dimens.size1Point8,
    //                                         color: ConstantColor.secondaryColor,
    //                                         fontWeight: FontWeight.w900),
    //                                   ),
    //                                 ),
    //
    //                                 ///-------------------- Review Orders Listview -----------
    //                                 SizedBox(
    //                                   height: SizeConfig.defaultSize *
    //                                       Dimens.size28,
    //                                   child: ListView.builder(
    //                                     scrollDirection: Axis.vertical,
    //                                     itemCount: 2,
    //                                     physics: const BouncingScrollPhysics(),
    //                                     shrinkWrap: true,
    //                                     itemBuilder: (context, index) {
    //                                       return ReviewOrdersView(
    //                                         index: 2,
    //                                         title: 'item.title',
    //                                         quantity: 'item.quantity',
    //                                         image: ConstantAssets.coin,
    //                                       );
    //                                     },
    //                                   ),
    //                                 ),
    //
    //                                 ///---------------- Take photo of printed invoice in box text ---------------------
    //                                 Padding(
    //                                   padding: EdgeInsets.only(
    //                                     top: SizeConfig.defaultSize *
    //                                         Dimens.size2,
    //                                   ),
    //                                   child: Text(
    //                                     'Select Delivery Captain',
    //                                     style: TextStyle(
    //                                         fontFamily:
    //                                             ConstantFonts.poppinsMedium,
    //                                         fontSize: SizeConfig.defaultSize *
    //                                             Dimens.size1Point8,
    //                                         color: ConstantColor.secondaryColor,
    //                                         fontWeight: FontWeight.w900),
    //                                   ),
    //                                 ),
    //
    //                                 ///----------------------------------------Select Delivery Captain drop down down ----------------------
    //                                 Container(
    //                                     height: SizeConfig.defaultSize *
    //                                         Dimens.size8,
    //                                     width: SizeConfig.defaultSize *
    //                                         Dimens.size30,
    //                                     child: DropdownButtonFormField(
    //                                       decoration: InputDecoration(
    //                                         hintText:
    //                                             ConstantString.selectOption,
    //                                         enabledBorder: OutlineInputBorder(
    //                                           borderSide: BorderSide(
    //                                             color: ConstantColor.greyColor,
    //                                           ),
    //                                           borderRadius: BorderRadius.all(
    //                                               Radius.circular(10)),
    //                                         ),
    //                                         disabledBorder: OutlineInputBorder(
    //                                           borderSide: BorderSide(
    //                                             color: ConstantColor.greyColor,
    //                                           ),
    //                                           borderRadius: BorderRadius.all(
    //                                               Radius.circular(10)),
    //                                         ),
    //                                         focusedBorder: OutlineInputBorder(
    //                                           borderSide: BorderSide(
    //                                             color: ConstantColor.greyColor,
    //                                           ),
    //                                           borderRadius: BorderRadius.all(
    //                                               Radius.circular(10)),
    //                                         ),
    //                                         border: OutlineInputBorder(
    //                                           borderSide: BorderSide(
    //                                             color: ConstantColor.greyColor,
    //                                           ),
    //                                           borderRadius: BorderRadius.all(
    //                                               Radius.circular(10)),
    //                                         ),
    //                                       ),
    //                                       items: <DropdownMenuItem<String>>[
    //                                         DropdownMenuItem(
    //                                           child: Text(
    //                                             'None',
    //                                             style: TextStyle(),
    //                                           ),
    //                                         ),
    //                                       ],
    //                                       onChanged: (String? value) {},
    //                                     )),
    //
    //                                 ///---------------- Final Step text ---------------------
    //                                 Padding(
    //                                   padding: EdgeInsets.only(
    //                                     top: SizeConfig.defaultSize *
    //                                         Dimens.size3,
    //                                   ),
    //                                   child: Text(
    //                                     ConstantString.finalStep.tr,
    //                                     style: TextStyle(
    //                                         fontFamily:
    //                                             ConstantFonts.poppinsMedium,
    //                                         fontSize: SizeConfig.defaultSize *
    //                                             Dimens.size1Point8,
    //                                         color: ConstantColor.secondaryColor,
    //                                         fontWeight: FontWeight.w900),
    //                                   ),
    //                                 ),
    //
    //                                 ///------------------ Order Ready to ship button -------------
    //                                 Padding(
    //                                   padding: EdgeInsets.only(
    //                                     top: SizeConfig.defaultSize *
    //                                         Dimens.size3,
    //                                     bottom: SizeConfig.defaultSize *
    //                                         Dimens.size3,
    //                                   ),
    //                                   child: ButtonWidget(
    //                                       text: 'CONTINUE',
    //                                       fontSize: SizeConfig.defaultSize *
    //                                           Dimens.size1Point5,
    //                                       minWidth: SizeConfig.screenWidth,
    //                                       minHeight: SizeConfig.defaultSize *
    //                                           Dimens.size5,
    //                                       isChecked: true,
    //                                       press: (BuildContext context) => {
    //                                             // Get.to(()=>ManagerOtpScreenScaffold()),
    //                                           }),
    //                                 ),
    //                               ],
    //                             )))
    //                   ]),
    //             ),
    //           ]),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }

  Widget getImage() {
    return ClipOval(
        child: Image.file(
      scanAndCheckController.imgFile,
      width: SizeConfig.defaultSize * Dimens.size14,
      height: SizeConfig.defaultSize * Dimens.size14,
      fit: BoxFit.cover,
    ));
  }
}
