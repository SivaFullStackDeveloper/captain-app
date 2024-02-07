import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../commonWidgets/DrawSignature.dart';
import '../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../res/Dimens.dart';
import '../child/shippedSuccessfully/ShippedSuccessfullyScaffold.dart';

class ToBeShipped extends StatefulWidget {
  const ToBeShipped({Key? key}) : super(key: key);

  @override
  State<ToBeShipped> createState() => _ToBeShippedState();
}

class _ToBeShippedState extends State<ToBeShipped> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: EdgeInsets.only(
        left: SizeConfig.defaultSize * Dimens.size2,
        right: SizeConfig.defaultSize * Dimens.size2,
      ),
      child: Column(
        children: [
          ///-------------------- Action Bar ------------------
          ActionBar(title: 'Order #BKS8381'),

          ///------------------- Agent Details section ------------
          Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.defaultSize * Dimens.size5,
            ),
            child: Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.defaultSize * Dimens.size30,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    SizeConfig.defaultSize * Dimens.size1Point3,
                  ),
                  color: ConstantColor.lightYellowColor),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(ConstantAssets.pickup),
                    Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: SizeConfig.defaultSize * Dimens.size2,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: SizeConfig.defaultSize *
                                        Dimens.size1Point5,
                                  ),
                                  child: Text("Agent Name",
                                      style: TextStyle(
                                        fontFamily: ConstantFonts.poppinsBold,
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.size1Point6,
                                        color: ConstantColor.secondaryColor,
                                      )),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: SizeConfig.defaultSize *
                                        Dimens.size1Point5,
                                  ),
                                  child: Text("Docket Number",
                                      style: TextStyle(
                                        fontFamily: ConstantFonts.poppinsBold,
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.size1Point6,
                                        color: ConstantColor.secondaryColor,
                                      )),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: SizeConfig.defaultSize *
                                        Dimens.size1Point5,
                                  ),
                                  child: Text("BRN Number",
                                      style: TextStyle(
                                        fontFamily: ConstantFonts.poppinsBold,
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.size1Point6,
                                        color: ConstantColor.secondaryColor,
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              right: SizeConfig.defaultSize * Dimens.size2,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ///-------------------- Value with right arrow -----------------
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: SizeConfig.defaultSize *
                                        Dimens.size1Point5,
                                  ),
                                  child: Text(' Name',
                                      style: TextStyle(
                                        fontFamily: ConstantFonts.poppinsMedium,
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.size1Point6,
                                        color: ConstantColor.blackColor,
                                      )),
                                ),

                                ///-------------------- Value with right arrow -----------------
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: SizeConfig.defaultSize *
                                        Dimens.size1Point5,
                                  ),
                                  child: Text('999',
                                      style: TextStyle(
                                        fontFamily: ConstantFonts.poppinsMedium,
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.size1Point6,
                                        color: ConstantColor.blackColor,
                                      )),
                                ),

                                ///-------------------- Value with right arrow -----------------
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: SizeConfig.defaultSize *
                                        Dimens.size1Point5,
                                  ),
                                  child: Text('A302021',
                                      style: TextStyle(
                                        fontFamily: ConstantFonts.poppinsMedium,
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.size1Point6,
                                        color: ConstantColor.blackColor,
                                      )),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
          ),

          ///------------------- Upload Document section ------------

          Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.defaultSize * Dimens.size3,
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    height: SizeConfig.defaultSize * Dimens.size20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          SizeConfig.defaultSize * Dimens.size1Point3,
                        ),
                        color: ConstantColor.lightYellowColor),
                    child: InkWell(
                      onTap: () => {
                        showDialog(
                          context: context,
                          barrierDismissible: true,
                          builder: (BuildContext context) {
                            return const DrawSignature();

                            //Get.to(()=> DrawSignature())
                          },
                        )
                      },
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: SizeConfig.defaultSize * Dimens.size1,
                              ),
                              child: Text("Signature Of Agent",
                                  style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsBold,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point6,
                                    color: ConstantColor.secondaryColor,
                                  )),
                            ),
                            // commonController.drawPic.value == true
                            //     ? Padding(
                            //         padding: EdgeInsets.only(
                            //           top:
                            //               SizeConfig.defaultSize * Dimens.size1,
                            //         ),
                            //         child: Container(
                            //             width: SizeConfig.defaultSize *
                            //                 Dimens.size12,
                            //             height: SizeConfig.defaultSize *
                            //                 Dimens.size12,
                            //             color: ConstantColor.blackColor,
                            //             //child: Image.memory(handoverShipmentController.data2!)),
                            //             child: CustomObject.data),
                            //       )
                            //     :
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: SizeConfig.defaultSize *
                                        Dimens.size1Point5,
                                    bottom: SizeConfig.defaultSize *
                                        Dimens.size1Point5,
                                  ),
                                  child: Container(
                                    width:
                                        SizeConfig.defaultSize * Dimens.size8,
                                    height:
                                        SizeConfig.defaultSize * Dimens.size8,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            ConstantColor.miniDarkYellowColor),
                                    child: Icon(
                                      Icons.camera_alt,
                                      size: SizeConfig.defaultSize *
                                          Dimens.size2Point5,
                                      color: ConstantColor.secondaryColor,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: SizeConfig.defaultSize * Dimens.size1,
                                  ),
                                  child: Text("Click To Sign",
                                      style: TextStyle(
                                        fontFamily:
                                            ConstantFonts.poppinsRegular,
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.size1Point2,
                                        color: ConstantColor.secondaryColor,
                                      )),
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                ),
                SizedBox(
                  width: SizeConfig.defaultSize * Dimens.size1,
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    height: SizeConfig.defaultSize * Dimens.size20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          SizeConfig.defaultSize * Dimens.size1Point3,
                        ),
                        color: ConstantColor.lightYellowColor),
                    child: InkWell(
                      onTap: () => {
                        print("--------------"),
                        //_selectOptionBottomSheet(),
                        // captureAgentImage(ImageSource.camera)
                        //Navigator.pop(context)
                      },
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: SizeConfig.defaultSize * Dimens.size1,
                              ),
                              child: Text("Id Of Agent",
                                  style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsBold,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point6,
                                    color: ConstantColor.secondaryColor,
                                  )),
                            ),

                            // imagePicked == false ?
                            Column(
                              children: [
                                ///---------------- Camera Icon ---------------------
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: SizeConfig.defaultSize *
                                        Dimens.size1Point5,
                                    bottom: SizeConfig.defaultSize *
                                        Dimens.size1Point5,
                                  ),
                                  child: Container(
                                    width:
                                        SizeConfig.defaultSize * Dimens.size8,
                                    height:
                                        SizeConfig.defaultSize * Dimens.size8,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            ConstantColor.miniDarkYellowColor),
                                    child: Icon(
                                      Icons.camera_alt,
                                      size: SizeConfig.defaultSize *
                                          Dimens.size2Point5,
                                      color: ConstantColor.secondaryColor,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: SizeConfig.defaultSize * Dimens.size1,
                                  ),
                                  child: Text("Click To Capture",
                                      style: TextStyle(
                                        fontFamily:
                                            ConstantFonts.poppinsRegular,
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.size1Point2,
                                        color: ConstantColor.secondaryColor,
                                      )),
                                ),
                              ],
                            )
                            // : getAgentImage()
                          ]),
                    ),
                  ),
                )
              ],
            ),
          ),

          ///------------------ Handover To Shipment Partner button -------------
          Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.defaultSize * Dimens.size5,
              bottom: SizeConfig.defaultSize * Dimens.size3,
            ),
            child: ButtonWidget(
                text: "Handover To Shipment Partner".tr,
                fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                minWidth: SizeConfig.screenWidth,
                minHeight: SizeConfig.defaultSize * Dimens.size5,
                isChecked: true,
                press: (BuildContext context) => {
                      Get.to(() => ShippedSuccessfullyScaffold())
                      // handoverShipmentController.svgToPng(context, handoverShipmentController.data.toSVG, svgWidth: 200, svgHeight: 200),
                      // handoverShipmentController.convertUnitToPng(CustomObject.data,handoverShipmentController.agentImgFile),
                      //Get.to(() => OrderShippedSuccessfullyScaffold())
                    }),
          ),
        ],
      ),
    ));
  }
}
