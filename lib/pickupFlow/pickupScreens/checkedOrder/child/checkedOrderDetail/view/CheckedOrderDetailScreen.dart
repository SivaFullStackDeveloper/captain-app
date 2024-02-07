import 'package:captain_app/deliveryFlow/screens/dashboard/widget/NewOrderCardView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../../../constants/ConstantAssets.dart';
import '../../../../../../constants/ConstantColor.dart';
import '../../../../../../constants/ConstantFonts.dart';
import '../../../../../../constants/ConstantString.dart';
import '../../../../../../res/Dimens.dart';
import '../../../../../../utils/SizeConfig.dart';
import '../controller/CheckedOrderDetailController.dart';
import '../widget/CheckedOrderDetailCardView.dart';

class CheckedOrderDetailScreen extends StatefulWidget {
  const CheckedOrderDetailScreen({super.key});

  @override
  _CheckedOrderDetailScreenState createState() => _CheckedOrderDetailScreenState();
}

class _CheckedOrderDetailScreenState extends State<CheckedOrderDetailScreen> with RouteAware {
  var checkedOrderDetailController = Get.put(CheckedOrderDetailController());

  @override
  Widget build(BuildContext context) {
    //loginController.translate();
    return Obx(() => checkedOrderDetailController.isLoading.value
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
                    child: ActionBar(title: "#${checkedOrderDetailController.orderId.value}")),


                ///-------------------- Pack Orders Listview -----------
                Expanded(
                  flex: 9,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size2,
                    ),
                    child: Container(
                      child:checkedOrderDetailController.allItemsLength.value != 0
                          ?  ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount:checkedOrderDetailController.allItems.length,
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          var item = checkedOrderDetailController.allItems[index];
                          return CheckedOrderDetailView(
                            title: item.title,
                            quantity: item.quantity,
                            status: item.status,
                            image: item.image,
                          );
                        },
                      ): Center(
                          child: Text("No Pickup Item Found",style: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2),)),
                    ),
                  ),
                ),



            /*    ///------------------- Agent Details section ------------
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size5,
                  ),
                  child: Container(
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.defaultSize * Dimens.size35,
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
                            child: Text("Signature Of The Manager",
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
                                        child: Text("Name",
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
                                        child: Text("Received On",
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
                                        child: Text("Signed",
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
                                        child: Text(refundedOrderDetailController.name.value, style: TextStyle(
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
                                        child: Text(refundedOrderDetailController.formattedReceivedOn.value, style: TextStyle(
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
                                        child: Text("Yes", style: TextStyle(
                                          fontFamily: ConstantFonts
                                              .poppinsMedium,
                                          fontSize: SizeConfig
                                              .defaultSize *
                                              Dimens.size1Point6,
                                          color: ConstantColor
                                              .blackColor,
                                        )),
                                      ),

                                    ],
                                  ),
                                )


                              ],
                            ),
                          ),
                        ]),
                  ),
                ),*/



                ///------------------ Handover To Shipment Partner button -------------
                Expanded(
                  flex: 2,
                  child: Padding(
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
                          checkedOrderDetailController.sendOtpToManager()
                        }),
                  ),
                ),

              ],
          ),
            )));
  }
}
