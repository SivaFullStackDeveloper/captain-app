import 'package:captain_app/constants/ConstantString.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../../../commonWidgets/ImageSectionWithTitle.dart';
import '../../../../../../constants/ConstantAssets.dart';
import '../../../../../../constants/ConstantColor.dart';
import '../../../../../../constants/ConstantFonts.dart';
import '../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../../../res/Dimens.dart';
import '../../../../../../utils/SizeConfig.dart';
import '../controller/ShippedOrderDetailController.dart';
import '../widget/ShippedOrdersDetailsCardView.dart';

class ShippedOrderDetailScreen extends StatefulWidget {
  @override
  _ShippedOrderDetailScreenState createState() =>
      _ShippedOrderDetailScreenState();
}

class _ShippedOrderDetailScreenState extends State<ShippedOrderDetailScreen>
    with RouteAware {
  var shippedOrderDetailController = Get.put(ShippedOrderDetailController());

  @override
  Widget build(BuildContext context) {
    //loginController.translate();
    return Obx(() => shippedOrderDetailController.isLoading.value
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
                  ActionBar(title: ConstantString.orderText + shippedOrderDetailController.orderId.value),

                  ///-------------------- Shipped order Listview -----------
                  Container(
                    child: shippedOrderDetailController.allItemsLength.value !=
                            0
                        ? ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount:
                                shippedOrderDetailController.allItems.length,
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              var item =
                                  shippedOrderDetailController.allItems[index];
                              return ShippedOrdersDetailsCardView(
                                title: item.title,
                                quantity: item.quantity,
                                image: ConstantAssets.coin,
                              );
                            },
                          )
                        : Center(
                            child: Text(
                            ConstantString.noItemFound.tr,
                            style: TextStyle(
                                fontSize:
                                    SizeConfig.defaultSize * Dimens.size2),
                          )),
                  ),

                  ///------------------- Agent Details section ------------
                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size1,
                    ),
                    child: Container(
                      width: SizeConfig.screenWidth,
                      height: SizeConfig.defaultSize * Dimens.size25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            SizeConfig.defaultSize * Dimens.size1Point3,
                          ),
                          color: ConstantColor.lightYellowColor),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left:
                                          SizeConfig.defaultSize * Dimens.size2,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [

                                        ///---------------------------- Agent name label -----------------
                                        Text(ConstantString.agentName.tr,
                                            style: TextStyle(
                                              fontFamily:
                                                  ConstantFonts.poppinsBold,
                                              fontSize: SizeConfig.defaultSize *
                                                  Dimens.size1Point6,
                                              color:
                                                  ConstantColor.secondaryColor,
                                            )),

                                        ///---------------------------- Docket number label -----------------
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize *
                                                Dimens.size1Point5,
                                          ),
                                          child: Text(ConstantString.docketNumber.tr,
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

                                        ///---------------------------- BRN number label -----------------
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize *
                                                Dimens.size1Point5,
                                          ),
                                          child: Text(ConstantString.brnNumber.tr,
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

                                        ///---------------------------- Estimated Delivery label -----------------
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize *
                                                Dimens.size1Point5,
                                          ),
                                          child: Text(ConstantString.estimatedDelivery.tr,
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
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      right:
                                          SizeConfig.defaultSize * Dimens.size2,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        ///---------------------------- Agent name  -----------------
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize *
                                                Dimens.sizePoint5,
                                          ),
                                          child: Text(
                                              shippedOrderDetailController
                                                  .agentName.value,
                                              style: TextStyle(
                                                fontFamily:
                                                    ConstantFonts.poppinsMedium,
                                                fontSize:
                                                    SizeConfig.defaultSize *
                                                        Dimens.size1Point6,
                                                color: ConstantColor.blackColor,
                                              )),
                                        ),

                                        ///---------------------------- Docket number  -----------------
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize *
                                                Dimens.size1Point5,
                                          ),
                                          child: Text(
                                              shippedOrderDetailController
                                                  .docketNumber.value,
                                              style: TextStyle(
                                                fontFamily:
                                                    ConstantFonts.poppinsMedium,
                                                fontSize:
                                                    SizeConfig.defaultSize *
                                                        Dimens.size1Point6,
                                                color: ConstantColor.blackColor,
                                              )),
                                        ),

                                        ///---------------------------- BRN number -----------------
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize *
                                                Dimens.size1Point5,
                                          ),
                                          child: Text(
                                              shippedOrderDetailController
                                                  .brnNumber.value,
                                              style: TextStyle(
                                                fontFamily:
                                                    ConstantFonts.poppinsMedium,
                                                fontSize:
                                                    SizeConfig.defaultSize *
                                                        Dimens.size1Point6,
                                                color: ConstantColor.blackColor,
                                              )),
                                        ),

                                        ///---------------------------- Estimated Delivery -----------------
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize *
                                                Dimens.size1Point5,
                                          ),
                                          child: Text(
                                              shippedOrderDetailController
                                                  .formattedEstimatedDeliveryDate
                                                  .value,
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
                                  ),
                                )
                              ],
                            ),
                          ]),
                    ),
                  ),

                  ///------------------- All Document section ------------
                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size1,
                    ),
                    child: Row(
                      children: [

                        ///------------------- Signature of agent with image ------------
                        Expanded(
                          flex: 5,
                          child: ImageSectionWithTitle(title: ConstantString.signatureOfAgent.tr,imgUrl: shippedOrderDetailController.signatureOfAgentImg.value,),
                        ),
                        SizedBox(
                          width: SizeConfig.defaultSize * Dimens.size1,
                        ),

                        ///------------------- Id of agent with image ------------
                        Expanded(
                          flex: 5,
                          child: ImageSectionWithTitle(title: ConstantString.idOfAgent.tr,imgUrl: shippedOrderDetailController.idOfAgentImg.value,),
                        ),
                      ],
                    ),
                  ),

                  ///------------------- Upload Document section ------------

                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size1,
                    ),
                    child: Row(
                      children: [

                        ///------------------- Photo of invoice with image ------------
                        Expanded(
                          flex: 5,
                          child: ImageSectionWithTitle(title: ConstantString.photoOfInvoice.tr,imgUrl: shippedOrderDetailController.invoiceImg.value,),
                        ),
                        SizedBox(
                          width: SizeConfig.defaultSize * Dimens.size1,
                        ),

                        ///------------------- Package Photo with image ------------
                        Expanded(
                          flex: 5,
                          child: ImageSectionWithTitle(title: ConstantString.packagePhoto.tr,imgUrl: shippedOrderDetailController.packageImg.value,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )));
  }
}
