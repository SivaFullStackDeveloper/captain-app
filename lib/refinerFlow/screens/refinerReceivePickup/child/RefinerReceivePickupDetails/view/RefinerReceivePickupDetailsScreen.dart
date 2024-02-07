
import 'package:captain_app/pickupFlow/pickupScreens/receivePickup/child/pickupDetails/child/pickupReady/PickupReadyScaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../../../constants/ConstantAssets.dart';
import '../../../../../../constants/ConstantColor.dart';
import '../../../../../../constants/ConstantFonts.dart';
import '../../../../../../res/Dimens.dart';
import '../../../../../../utils/SizeConfig.dart';
import '../../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../controller/RefinerReceivePickupDetailsController.dart';

class RefinerReceivePickupDetailsScreen extends StatefulWidget {
  @override
  _RefinerReceivePickupDetailsScreenState createState() => _RefinerReceivePickupDetailsScreenState();
}

class _RefinerReceivePickupDetailsScreenState extends State<RefinerReceivePickupDetailsScreen> with RouteAware {
  var packOrdersController = Get.put(RefinerReceivePickupDetailsController());

  @override
  Widget build(BuildContext context) {
    //loginController.translate();
    return Obx(() => packOrdersController.isLoading.value
        ? const CustomProgressIndicator()
        : SafeArea(
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
                  ActionBar(title: "Order #BKS0034"),



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
                                            top: SizeConfig.defaultSize * Dimens.size1Point5,
                                          ),
                                          child: Text("Agent Name",
                                              style: TextStyle(
                                                fontFamily: ConstantFonts
                                                    .poppinsBold,
                                                fontSize:
                                                SizeConfig.defaultSize *
                                                    Dimens.size1Point6,
                                                color: ConstantColor
                                                    .secondaryColor,
                                              )),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize * Dimens.size1Point5,
                                          ),
                                          child: Text("Docket Number",
                                              style: TextStyle(
                                                fontFamily: ConstantFonts
                                                    .poppinsBold,
                                                fontSize:
                                                SizeConfig.defaultSize *
                                                    Dimens.size1Point6,
                                                color: ConstantColor
                                                    .secondaryColor,
                                              )),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize * Dimens.size1Point5,
                                          ),
                                          child: Text("BRN Number",
                                              style: TextStyle(
                                                fontFamily: ConstantFonts
                                                    .poppinsBold,
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
                                      right: SizeConfig.defaultSize * Dimens.size2,
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.end,

                                      children: [

                                        ///-------------------- Value with right arrow -----------------
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize * Dimens.size1Point5,
                                          ),
                                          child: Text("Arshit R", style: TextStyle(
                                            fontFamily: ConstantFonts
                                                .poppinsMedium,
                                            fontSize: SizeConfig
                                                .defaultSize *
                                                Dimens.size1Point6,
                                            color: ConstantColor
                                                .blackColor,
                                          )),
                                        ),

                                        ///-------------------- Value with right arrow -----------------
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize * Dimens.size1Point5,
                                          ),
                                          child: Text("9997788552", style: TextStyle(
                                            fontFamily: ConstantFonts
                                                .poppinsMedium,
                                            fontSize: SizeConfig
                                                .defaultSize *
                                                Dimens.size1Point6,
                                            color: ConstantColor
                                                .blackColor,
                                          )),
                                        ),
                                        ///-------------------- Value with right arrow -----------------
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize * Dimens.size1Point5,
                                          ),
                                          child: Text("A3037985", style: TextStyle(
                                            fontFamily: ConstantFonts
                                                .poppinsMedium,
                                            fontSize: SizeConfig
                                                .defaultSize *
                                                Dimens.size1Point6,
                                            color: ConstantColor
                                                .blackColor,
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
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: SizeConfig.defaultSize * Dimens.size1,
                                    ),
                                    child: Text("Signature Of Agent",
                                        style: TextStyle(
                                          fontFamily: ConstantFonts
                                              .poppinsBold,
                                          fontSize:
                                          SizeConfig.defaultSize *
                                              Dimens.size1Point6,
                                          color: ConstantColor
                                              .secondaryColor,
                                        )),
                                  ),
                                  ///---------------- Camera Icon ---------------------
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: SizeConfig.defaultSize * Dimens.size1Point5,
                                      bottom: SizeConfig.defaultSize * Dimens.size1Point5,
                                    ),
                                    child: Container(
                                      width: SizeConfig.defaultSize * Dimens.size8,
                                      height: SizeConfig.defaultSize * Dimens.size8,
                                      decoration:  BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: ConstantColor.miniDarkYellowColor),
                                      child: Icon(Icons.camera_alt, size: SizeConfig.defaultSize * Dimens.size2Point5,color: ConstantColor.secondaryColor,),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: SizeConfig.defaultSize * Dimens.size1,
                                    ),
                                    child: Text("Click To Sign",
                                        style: TextStyle(
                                          fontFamily: ConstantFonts
                                              .poppinsRegular,
                                          fontSize:
                                          SizeConfig.defaultSize *
                                              Dimens.size1Point2,
                                          color: ConstantColor
                                              .secondaryColor,
                                        )),
                                  ),




                                ]),
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
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: SizeConfig.defaultSize * Dimens.size1,
                                    ),
                                    child: Text("Id Of Agent",
                                        style: TextStyle(
                                          fontFamily: ConstantFonts
                                              .poppinsBold,
                                          fontSize:
                                          SizeConfig.defaultSize *
                                              Dimens.size1Point6,
                                          color: ConstantColor
                                              .secondaryColor,
                                        )),
                                  ),
                                  ///---------------- Camera Icon ---------------------
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: SizeConfig.defaultSize * Dimens.size1Point5,
                                      bottom: SizeConfig.defaultSize * Dimens.size1Point5,
                                    ),
                                    child: Container(
                                      width: SizeConfig.defaultSize * Dimens.size8,
                                      height: SizeConfig.defaultSize * Dimens.size8,
                                      decoration:  BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: ConstantColor.miniDarkYellowColor),
                                      child: Icon(Icons.camera_alt, size: SizeConfig.defaultSize * Dimens.size2Point5,color: ConstantColor.secondaryColor,),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: SizeConfig.defaultSize * Dimens.size1,
                                    ),
                                    child: Text("Click To Capture",
                                        style: TextStyle(
                                          fontFamily: ConstantFonts
                                              .poppinsRegular,
                                          fontSize:
                                          SizeConfig.defaultSize *
                                              Dimens.size1Point2,
                                          color: ConstantColor
                                              .secondaryColor,
                                        )),
                                  ),




                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),



                  Container(
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
                            child: Text("Take photo of the package",
                                style: TextStyle(
                                  fontFamily: ConstantFonts
                                      .poppinsBold,
                                  fontSize:
                                  SizeConfig.defaultSize *
                                      Dimens.size1Point6,
                                  color: ConstantColor
                                      .secondaryColor,
                                )),
                          ),
                          ///---------------- Camera Icon ---------------------
                          Padding(
                            padding: EdgeInsets.only(
                              top: SizeConfig.defaultSize * Dimens.size1Point5,
                              bottom: SizeConfig.defaultSize * Dimens.size1Point5,
                            ),
                            child: Container(
                              width: SizeConfig.defaultSize * Dimens.size8,
                              height: SizeConfig.defaultSize * Dimens.size8,
                              decoration:  BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ConstantColor.miniDarkYellowColor),
                              child: Icon(Icons.camera_alt, size: SizeConfig.defaultSize * Dimens.size2Point5,color: ConstantColor.secondaryColor,),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: SizeConfig.defaultSize * Dimens.size1,
                            ),
                            child: Text("Click To Capture",
                                style: TextStyle(
                                  fontFamily: ConstantFonts
                                      .poppinsRegular,
                                  fontSize:
                                  SizeConfig.defaultSize *
                                      Dimens.size1Point2,
                                  color: ConstantColor
                                      .secondaryColor,
                                )),
                          ),




                        ]),
                  ),

                  ///------------------ Handover To Shipment Partner button -------------
                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size5,
                      bottom: SizeConfig.defaultSize * Dimens.size3,

                    ),
                    child: ButtonWidget(
                        text:  "Pickup Received".tr,
                        fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                        minWidth: SizeConfig.screenWidth,
                        minHeight: SizeConfig.defaultSize * Dimens.size5,
                        isChecked:true ,
                        press: (BuildContext context) => {
                          Get.to(()=> RefinerReceivePickupReadyScaffold())
                        }),
                  ),



                ],
          ),
              ),
            )));
  }
}
