import 'package:captain_app/constants/ConstantString.dart';
import 'package:captain_app/deliveryFlow/screens/canceledOrder/child/canceledOrderDetail/child/cancelOrderSuccessfully/CancelOrderSuccessfullyScaffold.dart';
import 'package:captain_app/deliveryFlow/screens/canceledOrder/child/canceledOrderDetail/child/cancelOtpVerification/CancelOtpVerificationScaffold.dart';
import 'package:captain_app/utils/commonController/CommonController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../../../commonWidgets/CameraPage.dart';
import '../../../../../../commonWidgets/ImageSectionWithTitle.dart';
import '../../../../../../constants/ConstantAssets.dart';
import '../../../../../../constants/ConstantColor.dart';
import '../../../../../../constants/ConstantFonts.dart';
import '../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../../../res/Dimens.dart';
import '../../../../../../utils/SizeConfig.dart';
import '../../../../../../utils/customObject/CustomObject.dart';
import '../controller/CanceledOrderDetailController.dart';
import '../widget/CanceledOrderDetailCardView.dart';

class CanceledOrderDetailScreen extends StatefulWidget {
  const CanceledOrderDetailScreen({Key? key}) : super(key: key);

  @override
  _CanceledOrderDetailScreenState createState() => _CanceledOrderDetailScreenState();
}

class _CanceledOrderDetailScreenState extends State<CanceledOrderDetailScreen> with RouteAware {
  var canceledOrderDetailController = Get.put(CanceledOrderDetailController());
  var commonController = Get.put(CommonController());

  @override
  Widget build(BuildContext context) {
    //loginController.translate();
    return Obx(() => canceledOrderDetailController.isLoading.value
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

                  ///-------------------- Action Bar ------------------
                  ActionBar(title: canceledOrderDetailController.orderId.value),


                  ///-------------------- canceled Order Listview -----------
                  Container(
                    child: canceledOrderDetailController.allItemsLength.value != 0
                        ?ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount:canceledOrderDetailController.allItems.length,
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        var item = canceledOrderDetailController.allItems[index];
                        return   CanceledOrderDetailCardView(
                          title: item.title,
                          quantity: item.quantity,
                          image: item.image,
                        );
                      },
                    ): Center(
                        child: Text(ConstantString.noItemFound.tr,style: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2),)),
                  ),



                  ///------------------- Upload Document section ------------

                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size3,
                    ),
                    child: Row(
                      children: [

                        ///-------------------- Photo of invoice text  ----------------
                        Expanded(
                          flex: 5,
                          child: ImageSectionWithTitle(title: ConstantString.photoOfInvoice.tr,imgUrl: canceledOrderDetailController.invoiceImg.value,),
                        ),
                        SizedBox(
                          width: SizeConfig.defaultSize * Dimens.size1,
                        ),
                        ///-------------------- Package Photo text  ----------------
                        Expanded(
                          flex: 5,
                          child: ImageSectionWithTitle(title: ConstantString.packagePhoto.tr,imgUrl: canceledOrderDetailController.packageImg.value,),
                        ),
                      ],
                    ),
                  ),


                  ///------------------- Upload Document section ------------

                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size3,
                      bottom: SizeConfig.defaultSize * Dimens.size3,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            SizeConfig.defaultSize * Dimens.size1Point3,
                          ),
                          color: ConstantColor.lightYellowColor),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ///---------------- Upload the video of checking text ---------------------
                            Padding(padding: EdgeInsets.only(top: SizeConfig.defaultSize * Dimens.size1,),
                              child: Text(
                                ConstantString.uploadTheVideoOfChecking.tr,
                                style: TextStyle(
                                    fontFamily:
                                    ConstantFonts.poppinsMedium,
                                    fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                                    color: ConstantColor.secondaryColor,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                            Container(
                              child: commonController.checkItemVideoUpload.value == false ? Column(
                                children: [
                                  ///------------------ Video capture section ---------------------
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: SizeConfig.defaultSize * Dimens.size1Point5,
                                    ),
                                    child: Container(
                                      width: SizeConfig.screenWidth,
                                      height: SizeConfig.defaultSize * Dimens.size15,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(SizeConfig.defaultSize * Dimens.size1Point3,),
                                          color: ConstantColor.miniDarkYellowColor),
                                      child: InkWell(
                                        onTap: ()=> {
                                          CustomObject.videoThumbnailForScreen = "CheckItemScreen",
                                          Get.to(() =>CameraPage())
                                        },
                                        child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              ///---------------- Camera Icon ---------------------
                                              Container(
                                                decoration: BoxDecoration(shape: BoxShape.circle, color: ConstantColor.miniDarkYellowColor),
                                                child: Icon(
                                                  Icons.camera_alt,
                                                  size: SizeConfig.defaultSize * Dimens.size2Point5,
                                                  color: ConstantColor.secondaryColor,
                                                ),
                                              ),
                                              ///---------------- Click to capture text ---------------------
                                              Text(
                                                ConstantString.clickToCapture.tr,
                                                style: TextStyle(
                                                  fontFamily: ConstantFonts.poppinsRegular,
                                                  fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                                                  color: ConstantColor.secondaryColor,
                                                ),
                                              ),
                                            ]),
                                      ),
                                    ),
                                  ),
                                ],
                              ) : Padding(
                                padding: EdgeInsets.only(
                                  top: SizeConfig.defaultSize * Dimens.size1Point5,
                                ),
                                ///--------------------------- Show image ---------------------
                                child: Image.memory(
                                    commonController.uint8list),
                              ),
                            )


                          ]),
                    ),
                  ),

                  ///------------------ Handover To Shipment Partner button -------------
                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size5,
                      bottom: SizeConfig.defaultSize * Dimens.size3,

                    ),
                    child: ButtonWidget(
                        text:  ConstantString.handoverToManager.tr,
                        fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                        minWidth: SizeConfig.screenWidth,
                        minHeight: SizeConfig.defaultSize * Dimens.size5,
                        isChecked:true ,
                        press: (BuildContext context) => {
                        canceledOrderDetailController.sendOtpToManager()
                        }),
                  ),
                ],
          ),
              ),
            )));
  }
}
