import 'dart:io';

import 'package:captain_app/deliveryFlow/screens/dashboard/widget/NewOrderCardView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../../../commonWidgets/CameraPage.dart';
import '../../../../../../../commonWidgets/TaskIndicator.dart';
import '../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../../../../commonWidgets/MySeparator.dart';
import '../../../../../../../constants/ConstantString.dart';
import '../../../../../../../res/Dimens.dart';
import '../../../../../../../utils/SizeConfig.dart';
import '../../../../../../../utils/commonController/CommonController.dart';
import '../../../../../../../utils/customObject/CustomObject.dart';
import '../../widget/CancelledOrderCardView.dart';
import '../child/orderCancelledsuccessfully/OrderCancelledSuccessfullyScaffold.dart';
import '../controller/CancelledOrderDetailController.dart';
import '../widget/CancelledOrderDetailCardView.dart';

class CancelledOrderDetailScreen extends StatefulWidget {
  const CancelledOrderDetailScreen({super.key});

  @override
  _CancelledOrderDetailScreenState createState() => _CancelledOrderDetailScreenState();
}

class _CancelledOrderDetailScreenState extends State<CancelledOrderDetailScreen> with RouteAware {
  var cancelledOrderDetailController = Get.put(CancelledOrderDetailController());
  var commonController = Get.put(CommonController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => cancelledOrderDetailController.isLoading.value
        ? const CustomProgressIndicator()
        : SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Obx(() => cancelledOrderDetailController.isLoading.value
                  ? const CustomProgressIndicator()
                  : Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.defaultSize * Dimens.size2,
                  right: SizeConfig.defaultSize * Dimens.size2,
                ),
                    child: Column(children: [

                ///------------------- Action Bar ---------------------
                ActionBar(title: "Order # ${cancelledOrderDetailController.orderId.value}",),


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
                                          borderRadius: BorderRadius.all(Radius.circular(SizeConfig.defaultSize * Dimens.size6))
                                      ),

                                      child: Text(
                                        "1",
                                        style: TextStyle(
                                            fontFamily: ConstantFonts.poppinsMedium,
                                            fontSize: SizeConfig.defaultSize * Dimens.size2Point5,
                                            color: ConstantColor.secondaryColor,
                                            fontWeight: FontWeight.w900),
                                      ),
                                    ),

                                  /*  for ( var i in text )  TaskIndicator(taskNumber: "2",dashWidth: SizeConfig.defaultSize * Dimens.size20,),*/
                                    ///------------------- Dash draw --------------------
                                    TaskIndicator(taskNumber: "2",dashWidth: SizeConfig.defaultSize * Dimens.size18),


                                    ///------------------- Dash draw --------------------
                                    TaskIndicator(taskNumber: "3",dashWidth: SizeConfig.defaultSize * Dimens.size28,),


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

                                        ///---------------- Check opening video section ---------------------

                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize * Dimens.size2,
                                          ),
                                          ///--------------- Enter amount in need text --------------
                                          child: Text(
                                            "Check Opening Video".tr,
                                            style: TextStyle(
                                                height: 2,
                                                fontFamily: ConstantFonts.poppinsMedium,
                                                fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                                                color: ConstantColor.secondaryColor,
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize * Dimens.size1,
                                          ),
                                          child: Container(
                                            height: SizeConfig.defaultSize * Dimens.size15,
                                            child: InkWell(
                                              onTap: ()=> {
                                                CustomObject.videoThumbnailForScreen = "CheckItemScreen",
                                                Get.to(()=> const CameraPage())
                                              },
                                              child: commonController.checkItemVideoUpload.value == false?Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [

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



                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize * Dimens.size4,
                                          ),
                                          ///--------------- Enter amount in need text --------------
                                          child: Text(
                                            "Check items inside box".tr,
                                            style: TextStyle(
                                                height: 2,
                                                fontFamily: ConstantFonts.poppinsMedium,
                                                fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                                                color: ConstantColor.secondaryColor,
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ),


                                        ///-------------------- Pack Orders Listview -----------
                                        Container(
                                            height: SizeConfig.defaultSize * Dimens.size28,
                                            child: cancelledOrderDetailController.allDeliveryItemsListLength.value != 0
                                                ?  ListView.builder(
                                              scrollDirection: Axis.vertical,
                                              itemCount: cancelledOrderDetailController.allDeliveryItemsList.length,
                                              physics: const BouncingScrollPhysics(),
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                var item = cancelledOrderDetailController.allDeliveryItemsList[index];
                                                return CancelledOrderDetailView(
                                                  index: index,
                                                  title: item.title,
                                                  quantity: item.quantity,
                                                  image: item.image,
                                                );
                                              },
                                            ) : Center(
                                            child: Text(ConstantString.noItemFound.tr,
                                              style: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2),)),
                                        ),



                                        ///----------------Take video of removing items section ---------------------

                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize * Dimens.size2,
                                          ),
                                          ///--------------- Enter amount in need text --------------
                                          child: Text(
                                            "Take video of removing items".tr,
                                            style: TextStyle(
                                                height: 2,
                                                fontFamily: ConstantFonts.poppinsMedium,
                                                fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                                                color: ConstantColor.secondaryColor,
                                                fontWeight: FontWeight.w900),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize * Dimens.size1,
                                          ),
                                          child: Container(
                                            height: SizeConfig.defaultSize * Dimens.size15,
                                            child: InkWell(
                                              onTap: ()=> {
                                                CustomObject.videoThumbnailForScreen = "CheckingPickupDetailScreen",
                                                Get.to(()=> const CameraPage())
                                              },
                                              child: commonController.checkingPickupDetailVideoUpload.value == false?Column(
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [

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



                                        ///------------------ Order Ready to ship -------------
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize * Dimens.size3,
                                            bottom: SizeConfig.defaultSize * Dimens.size3,

                                          ),
                                          child: ButtonWidget(
                                              text:  "Proceed".tr,
                                              fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                                              minWidth: SizeConfig.screenWidth,
                                              minHeight: SizeConfig.defaultSize * Dimens.size5,
                                              isChecked:true,
                                              press: (BuildContext context) => {
                                                cancelledOrderDetailController.completeOrderForCancelledVideo()
                                              }),
                                        ),
                                      ],
                                  )
                                ))]
                                  ),
                                ),
                              ]),
                            ],
                          ),
                        ),

                      ),

            ),
                  ));

  }

}
