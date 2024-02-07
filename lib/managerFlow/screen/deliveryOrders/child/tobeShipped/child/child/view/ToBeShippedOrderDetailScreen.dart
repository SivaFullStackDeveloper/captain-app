import 'package:captain_app/deliveryFlow/screens/dashboard/widget/NewOrderCardView.dart';
import 'package:captain_app/managerFlow/screen/deliveryOrders/child/tobeShipped/child/child/child/handoverOtpVerification/HandoverOtpVerificationScaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pinput/pinput.dart';

import '../../../../../../../../commonWidgets/TaskIndicator.dart';
import '../../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../../../../../commonWidgets/MySeparator.dart';
import '../../../../../../../../constants/ConstantString.dart';
import '../../../../../../../../res/Dimens.dart';
import '../../../../../../../../utils/SizeConfig.dart';
import '../controller/ToBeShippedOrderDetailController.dart';
import '../widget/ToBeShippedOrderDetailCardView.dart';

class ToBeShippedOrderDetailScreen extends StatefulWidget {
  const ToBeShippedOrderDetailScreen({super.key});

  @override
  _ToBeShippedOrderDetailScreenState createState() => _ToBeShippedOrderDetailScreenState();
}

class _ToBeShippedOrderDetailScreenState extends State<ToBeShippedOrderDetailScreen> with RouteAware {
  var toBeShippedOrderDetailController = Get.put(ToBeShippedOrderDetailController());
  @override
  Widget build(BuildContext context) {
    return Obx(() => toBeShippedOrderDetailController.isLoading.value
        ? const CustomProgressIndicator()
        : SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Obx(() => toBeShippedOrderDetailController.isLoading.value
                  ? const CustomProgressIndicator()
                  : Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.defaultSize * Dimens.size2,
                  right: SizeConfig.defaultSize * Dimens.size2,
                ),
                    child: Column(children: [

                ///------------------- Action Bar ---------------------
                ActionBar(title: "Order # " + toBeShippedOrderDetailController.orderId.value,),


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
                                    TaskIndicator(taskNumber: "2",dashWidth: SizeConfig.defaultSize * Dimens.size25),



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
                                            top: SizeConfig.defaultSize * Dimens.size2,
                                          ),
                                          ///--------------- Enter amount in need text --------------
                                          child: Text(
                                            "Review order items".tr,
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
                                            child: toBeShippedOrderDetailController.allDeliveryItemsListLength.value != 0
                                                ? ListView.builder(
                                              scrollDirection: Axis.vertical,
                                              itemCount: toBeShippedOrderDetailController.allDeliveryItemsList.length,
                                              physics: const BouncingScrollPhysics(),
                                              shrinkWrap: true,
                                              itemBuilder: (context, index) {
                                                var item = toBeShippedOrderDetailController.allDeliveryItemsList[index];
                                                return ToBeShippedOrderDetailCardView(
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


                                        ///---------------- Take photo of printed invoice in box text ---------------------
                                        Text(
                                          "Select Delivery Captains".tr,
                                          style: TextStyle(
                                              fontFamily: ConstantFonts.poppinsMedium,
                                              fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                                              color: ConstantColor.secondaryColor,
                                              fontWeight: FontWeight.w900),
                                        ),

                                        ///------------------------- Select Delivery captains dropdown -------------------

                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize * Dimens.size2,
                                          ),
                                          child: Container(
                                            height: SizeConfig.defaultSize * Dimens.size5,
                                            width: SizeConfig.screenWidth,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(SizeConfig.defaultSize * Dimens.size1),
                                                border:
                                                Border.all(color: ConstantColor.secondaryColor)),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: SizeConfig.defaultSize * Dimens.size1,
                                              ),
                                              child: DropdownButton<String>(
                                                isExpanded: true,
                                                // value: dropDownValue,
                                                hint: Text("Select One".tr),

                                                value: toBeShippedOrderDetailController.dropdownValue.value.isNotEmpty
                                                    ? toBeShippedOrderDetailController.dropdownValue.value
                                                    : null,
                                                icon: Icon(Icons.arrow_drop_down),
                                                iconSize: 24,
                                                elevation: 16,
                                                style: TextStyle(
                                                    color: ConstantColor.secondaryColor,
                                                    fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                                                    fontFamily: ConstantFonts.poppinsMedium),
                                                underline: Container(),
                                                onChanged: (String? data) {
                                                  toBeShippedOrderDetailController.dropdownValue.value = data!;
                                                  var index = toBeShippedOrderDetailController.captainNameList.indexOf(data);
                                                  toBeShippedOrderDetailController.captainId.value = toBeShippedOrderDetailController.captainIdList[index];

                                                },
                                                items: toBeShippedOrderDetailController.captainNameList.value
                                                    .map<DropdownMenuItem<String>>((String value) {
                                                  return DropdownMenuItem<String>(
                                                    value: value,
                                                    child: Text(value),
                                                  );
                                                }).toList(),
                                              ),
                                            ),
                                          ),
                                        ),




                                      ],
                                  )


                                )


                              )]
                                  ),
                                ),

                        ///------------------ Handover to delivery captain button -------------
                        Padding(
                          padding: EdgeInsets.only(
                            top: SizeConfig.defaultSize * Dimens.size7,
                            bottom: SizeConfig.defaultSize * Dimens.size3,

                          ),
                          child: ButtonWidget(
                              text:  "Handover to delivery captain".tr,
                              fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                              minWidth: SizeConfig.screenWidth,
                              minHeight: SizeConfig.defaultSize * Dimens.size5,
                              isChecked:true,
                              press: (BuildContext context) => {
                                //reviewOrdersController.uploadInvoiceAndPackageApiFunction(reviewOrdersController.invoiceFile,reviewOrdersController.packageFile),
                               // toBeShsendOtpForAssignCaptainFunction();

                              toBeShippedOrderDetailController.sendOtpForAssignCaptainFunction()


                              }),
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
