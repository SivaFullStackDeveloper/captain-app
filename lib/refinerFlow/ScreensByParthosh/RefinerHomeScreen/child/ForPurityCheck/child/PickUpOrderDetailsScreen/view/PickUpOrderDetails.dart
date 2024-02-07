import 'package:captain_app/commonWidgets/CameraCaptureMessage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../res/Dimens.dart';
import '../../../../../../../../utils/SizeConfig.dart';
import '../child/CheckPickUpDetails/CheckPickUpDetailsScaffold.dart';



class PickUpOrderDetails extends StatefulWidget {
  const PickUpOrderDetails({super.key});

  @override
  _PickUpOrderDetailsState createState() => _PickUpOrderDetailsState();
}

class _PickUpOrderDetailsState extends State<PickUpOrderDetails>
{
  // var pickupDetailsController = Get.put(PickupDetailsController());
  // var commonController = Get.put(CommonController());

  @override
  Widget build(BuildContext context) {

    return SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.only(
                left: SizeConfig.defaultSize * Dimens.size2,
                right: SizeConfig.defaultSize * Dimens.size2,
              ),
              child: Column(
                children: [
                  ///-------------------- Action Bar ------------------
                  ActionBar(title: 'Pickup #BKS00034'),
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
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left:
                                      SizeConfig.defaultSize * Dimens.size2,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize *
                                                Dimens.size1Point5,
                                          ),
                                          child: Text("Agent Name",
                                              style: TextStyle(
                                                fontFamily:
                                                ConstantFonts.poppinsBold,
                                                fontSize:
                                                SizeConfig.defaultSize *
                                                    Dimens.size1Point6,
                                                color: ConstantColor
                                                    .secondaryColor,
                                              )),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize *
                                                Dimens.size1Point5,
                                          ),
                                          child: Text("Docket Number",
                                              style: TextStyle(
                                                fontFamily:
                                                ConstantFonts.poppinsBold,
                                                fontSize:
                                                SizeConfig.defaultSize *
                                                    Dimens.size1Point6,
                                                color: ConstantColor
                                                    .secondaryColor,
                                              )),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize *
                                                Dimens.size1Point5,
                                          ),
                                          child: Text("BRN Number",
                                              style: TextStyle(
                                                fontFamily:
                                                ConstantFonts.poppinsBold,
                                                fontSize:
                                                SizeConfig.defaultSize *
                                                    Dimens.size1Point6,
                                                color: ConstantColor
                                                    .secondaryColor,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right:
                                      SizeConfig.defaultSize * Dimens.size2,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.end,
                                      children: [
                                        ///-------------------- Value with right arrow -----------------
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize *
                                                Dimens.size1Point5,
                                          ),
                                          child: Text(
                                              'pick',
                                              style: TextStyle(
                                                fontFamily:
                                                ConstantFonts.poppinsMedium,
                                                fontSize:
                                                SizeConfig.defaultSize *
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
                                          child: Text(
                                              'pickup',
                                              style: TextStyle(
                                                fontFamily:
                                                ConstantFonts.poppinsMedium,
                                                fontSize:
                                                SizeConfig.defaultSize *
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
                                          child: Text(
                                              ' pickup',
                                              style: TextStyle(
                                                fontFamily:
                                                ConstantFonts.poppinsMedium,
                                                fontSize:
                                                SizeConfig.defaultSize *
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
                        ///------------------------- Draw Signature -------------------
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
                                // showDialog(
                                //   context: context,
                                //   barrierDismissible: true,
                                //   builder: (BuildContext context) {
                                //     return const DrawSignature();
                                //   },
                                // )
                              },
                              child: Column(children: [
                                Column(children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: SizeConfig.defaultSize *
                                          Dimens.size1,
                                    ),
                                    child: Text("Signature Of Agent",
                                        style: TextStyle(
                                          fontFamily:
                                          ConstantFonts.poppinsBold,
                                          fontSize:
                                          SizeConfig.defaultSize *
                                              Dimens.size1Point6,
                                          color: ConstantColor
                                              .secondaryColor,
                                        )),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: SizeConfig.defaultSize * Dimens.size1,
                                    ),
                                    child: Container(
                                        width: SizeConfig.defaultSize *
                                            Dimens.size12,
                                        height: SizeConfig.defaultSize *
                                            Dimens.size12,
                                        color: ConstantColor.lightYellowColor,
                                        //child: Image.memory(handoverShipmentController.data2!)),
                                        child:Image.asset(ConstantAssets.signature)),
                                  ),
                                ])
                                // : CameraCaptureMessage(
                                //     title: "Signature Of Agent",
                                //   ),
                              ]),
                            ),
                          ),
                        ),

                        SizedBox(
                          width: SizeConfig.defaultSize * Dimens.size1,
                        ),

                        ///-------------------------- Take a photo of Agent Id image ----------------------

                        Expanded(
                          flex: 5,
                          child: Container(
                            height: SizeConfig.defaultSize * Dimens.size20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  SizeConfig.defaultSize * Dimens.size1Point3,
                                ),
                                color: ConstantColor.lightYellowColor),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: SizeConfig.defaultSize * Dimens.size1,
                                    ),
                                    child: Text("Id of Agent",
                                        style: TextStyle(
                                          fontFamily: ConstantFonts.poppinsBold,
                                          fontSize: SizeConfig.defaultSize *
                                              Dimens.size1Point6,
                                          color: ConstantColor.secondaryColor,
                                        )),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.all(
                                        SizeConfig.defaultSize *
                                            Dimens.size1Point5,
                                      ), child:Image.asset(ConstantAssets.agentId)),
                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),

                  ///-------------------------- Take a photo of package image ----------------------
                  Container(
                    height: SizeConfig.defaultSize * Dimens.size20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          SizeConfig.defaultSize * Dimens.size1Point3,
                        ),
                        color: ConstantColor.lightYellowColor),
                    child: InkWell(
                      onTap: () {
                        Get.to(()=> CheckPickUpDetailsScaffold());
                        customBottomSheet(context,false);
                      },
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CameraCaptureMessage(
                              scan:true,
                              title: "Scan QR code on the package",
                            )
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ));
  }

  ///---------------------- Capture image for agent id --------------------------
  // Future captureAgentImage(ImageSource source) async {
  //   final _picker = ImagePicker();
  //   final imageFile = await _picker.pickImage(source: source);
  //   if (mounted) {
  //     setState(() {
  //       // pickupDetailsController.agentImgFile = File(imageFile!.path);
  //       // // pickupDetailsController.packageImgFile = File(imageFile!.path);
  //       // pickupDetailsController.imagePickedForAgent.value = true;
  //     });
  //   }
  // }

  ///---------------------- Capture image for package id --------------------------
  // Future capturePackageImage(ImageSource source) async {
  //   final _picker = ImagePicker();
  //   final imageFile = await _picker.pickImage(source: source);
  //   if (mounted) {
  //     setState(() {
  //       // pickupDetailsController.packageImgFile = File(imageFile!.path);
  //       // // pickupDetailsController.packageImgFile = File(imageFile!.path);
  //       // pickupDetailsController.imagePickedForPackage.value = true;
  //     });
  //   }
  // }

///-------------------------- get the signature ----------------------------
// showDialog(
  //   context: context,
  //   barrierDismissible: true,
  //   builder: (BuildContext context) {
  //     return const DrawSignature();
  //   },
  // )

  customBottomSheet(BuildContext context, bool close) {
    return showModalBottomSheet<void>(
      useRootNavigator: close,
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: SizeConfig.defaultSize * Dimens.size30,
            width: SizeConfig.defaultSize * Dimens.size40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(
                    SizeConfig.defaultSize * Dimens.size2,
                  ),
                  child: SvgPicture.asset(ConstantAssets.qrCodeScan),
                ),
                Padding(
                  padding: EdgeInsets.all(
                    SizeConfig.defaultSize * Dimens.size1,
                  ),
                  child: Text(
                    'Scanning in Process',
                    style: TextStyle(
                      color: ConstantColor.secondaryColor,
                      fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                      fontFamily: ConstantFonts.poppinsBold,
                    ),
                  ),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                Padding(
                  padding: EdgeInsets.all(
                    SizeConfig.defaultSize * Dimens.size1,
                  ),
                  child: Text(
                    'Scanning in progress, please don’t close the app',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ConstantColor.blackColor,
                      fontSize: SizeConfig.defaultSize * Dimens.size2,
                      fontFamily: ConstantFonts.poppinsRegular,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}






