
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../../../constants/ConstantAssets.dart';
import '../../../../../../res/Dimens.dart';
import '../../../../../../utils/SizeConfig.dart';
import '../../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../constants/ConstantString.dart';
import '../controller/RejectedOrdersDetailsController.dart';
import '../widget/RejectedOrdersDetailsCardView.dart';

class RejectedOrdersDetailsScreen extends StatefulWidget {
  @override
  _RejectedOrdersDetailsScreenState createState() => _RejectedOrdersDetailsScreenState();
}

class _RejectedOrdersDetailsScreenState extends State<RejectedOrdersDetailsScreen> with RouteAware {
  var rejectedOrdersDetailsController = Get.put(RejectedOrdersDetailsController());

  @override
  Widget build(BuildContext context) {
    //loginController.translate();
    return Obx(() => rejectedOrdersDetailsController.isLoading.value
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
                  ActionBar(title: rejectedOrdersDetailsController.orderId.value),


                  ///-------------------- Pack Orders Listview -----------
                  Container(
                    child:rejectedOrdersDetailsController.allItemsLength.value != 0
                        ? ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount:rejectedOrdersDetailsController.allItems.length,
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        var item = rejectedOrdersDetailsController.allItems[index];
                        return   RejectedOrdersDetailsCardView(
                          title: item.title,
                          quantity: item.quantity,
                          status: item.status,
                          image: item.image,
                        );
                      },
                    ): Center(
                        child: Text("No Pickup Item Found",style: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2),)),
                  ),


                  ///------------------- Agent Details section ------------
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
                                          child: Text(rejectedOrdersDetailsController.name.value, style: TextStyle(
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
                                          child: Text(rejectedOrdersDetailsController.formattedReceivedOn.value, style: TextStyle(
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
                  ),





                ],
          ),
              ),
            )));
  }
}
