import 'package:captain_app/commonWidgets/CameraPage.dart';
import 'package:captain_app/pickupFlow/pickupScreens/receivePickup/child/pickupDetails/child/pickupReady/PickupReadyScaffold.dart';
import 'package:captain_app/pickupFlow/pickupScreens/toBeChecked/child/checkingPickupDetails/widget/CheckedOrderDetailCardView.dart';
import 'package:captain_app/utils/commonController/CommonController.dart';
import 'package:captain_app/utils/customObject/CustomObject.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../../../res/Dimens.dart';
import '../../../../../../utils/SizeConfig.dart';
import '../../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../constants/ConstantString.dart';
import '../controller/CheckingPickupDetailsController.dart';

class CheckingPickupDetailsScreen extends StatefulWidget {
  @override
  _CheckingPickupDetailsScreenState createState() => _CheckingPickupDetailsScreenState();
}

class _CheckingPickupDetailsScreenState extends State<CheckingPickupDetailsScreen> with RouteAware {
  var checkingPickupDetailsController = Get.put(CheckingPickupDetailsController());
  var commonController = Get.put(CommonController());

  @override
  Widget build(BuildContext context) {
    //loginController.translate();
    return Obx(() => checkingPickupDetailsController.isLoading.value
        ? const CustomProgressIndicator()
        : SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                left: SizeConfig.defaultSize * Dimens.size2,
                right: SizeConfig.defaultSize * Dimens.size2,
              ),
              child: Column(
              children: [

                ///-------------------- Action Bar ------------------
                Expanded(
                  flex: 1,
                    child: ActionBar(title: "Pickup # ${checkingPickupDetailsController.orderId.value}")),





                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size2,
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size2,
                      ),
                      height: SizeConfig.defaultSize * Dimens.size20,
                      width: SizeConfig.defaultSize * Dimens.size60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            SizeConfig.defaultSize * Dimens.size1Point3,
                          ),
                          color: ConstantColor.lightYellowColor),
                      child: InkWell(
                        onTap: ()=> {
                          CustomObject.videoThumbnailForScreen = "CheckingPickupDetailScreen",
                          Get.to(()=> const CameraPage())
                        },
                        child: commonController.checkingPickupDetailVideoUpload.value == false?Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [

                              ///------------- Upload video of opening of package ---------------
                              Padding(
                                padding: EdgeInsets.only(
                                  top: SizeConfig.defaultSize * Dimens.size1,
                                ),
                                child: Text("Upload video of opening of package",
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
                            ]): Image.memory(commonController.uint8list),
                      ),
                    ),
                  ),
                ),


                ///---------------------- start checking item listview ---------------

                Expanded(flex: 6,

                  child: Container(
                    child:checkingPickupDetailsController.allItemLength.value != 0
                        ? ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount:checkingPickupDetailsController.allItems.length,
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        var item = checkingPickupDetailsController.allItems[index];
                        return  StartCheckingProcessCardView(
                          itemId: item.id,
                          title: item.title,
                          quantity: item.quantity,
                          status: item.status,
                          image: item.image,
                        );
                      },
                    ): Center(
                        child: Text("No Item Found",style: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2),)),
                  ),
                ),


                ///------------------ Proceed button -------------
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size5,
                      bottom: SizeConfig.defaultSize * Dimens.size3,
                    ),
                    child: ButtonWidget(
                        text: "Finish Checking".tr,
                        fontSize: SizeConfig.defaultSize *
                            Dimens.size1Point5,
                        minWidth: SizeConfig.screenWidth,
                        minHeight:
                        SizeConfig.defaultSize * Dimens.size5,
                        isChecked: true,
                        press: (BuildContext context) => {
                          checkingPickupDetailsController.finishCheckingFunction()
                        }),
                  ),
                ),

              ],
          ),
            )));
  }
}
