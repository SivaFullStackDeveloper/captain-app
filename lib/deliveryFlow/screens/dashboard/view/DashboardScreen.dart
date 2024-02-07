import 'package:captain_app/deliveryFlow/screens/canceledOrder/CanceledOrderScaffold.dart';
import 'package:captain_app/deliveryFlow/screens/dashboard/widget/NewOrderCardView.dart';
import 'package:captain_app/deliveryFlow/screens/shippedOrder/ShippedOrderScaffold.dart';
import 'package:captain_app/deliveryFlow/screens/toBeShipped/ToBeShippedScaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../allUsersAuthentication/selectModule/SelectModuleScaffold.dart';
import '../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../commonWidgets/DashboardSections.dart';
import '../../../../constants/ConstantAssets.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../LanguageScreen.dart';
import '../../reports/DeliveryReportsScaffold.dart';
import '../../tobePacked/ToBePackedScaffold.dart';
import '../controller/DashboardController.dart';
import 'UserProfileScreen.dart';


class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> with RouteAware {
  var dashboardController = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => dashboardController.isLoading.value
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
                  Padding(
                    padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size1Point6,
                        bottom: SizeConfig.defaultSize * Dimens.size2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          // onTap: ()=> Get.back(),
                          onTap: ()=> Get.to(()=> const SelectModuleScaffold()),
                          child: Container(
                              padding: EdgeInsets.all(
                                SizeConfig.defaultSize * Dimens.size1,
                              ),
                              width: SizeConfig.defaultSize * Dimens.size4
                              ,
                              height: SizeConfig.defaultSize * Dimens.size4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  SizeConfig.defaultSize * Dimens.size1,
                                ),
                                border: Border.all(
                                  color: ConstantColor.greyColor, //                   <--- border color
                                  width: SizeConfig.defaultSize * Dimens.sizePoint1,
                                ),
                              ),
                              child: SvgPicture.asset(
                                ConstantAssets.backArrow,
                                height: SizeConfig.defaultSize * Dimens.sizePoint1,
                                color: ConstantColor.blackColor,
                              )
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.defaultSize * Dimens.size1,
                          ),
                          child: Row(children: [
                            Text(ConstantString.hi.tr,
                                style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsRegular,
                                  fontSize: SizeConfig.defaultSize *
                                      Dimens.size1Point8,
                                  color: ConstantColor.greyColor,
                                )),

                            ///--------------------- Name text -------------------------

                            Padding(
                              padding: EdgeInsets.only(
                                left:
                                SizeConfig.defaultSize * Dimens.sizePoint5,
                              ),
                              child: ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxHeight:SizeConfig.defaultSize * Dimens.size10,
                                  maxWidth: SizeConfig.defaultSize * Dimens.size20,
                                ),
                                child: Text("${"Suurya"} 👋",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        fontFamily: ConstantFonts.poppinsMedium,
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.size1Point8,
                                        color: ConstantColor.blackColor,
                                        fontWeight: FontWeight.w900)),
                              ),
                            ),
                            /*  Padding(
                                padding: EdgeInsets.only(
                                    right: SizeConfig.defaultSize * Dimens.size2),
                                child: GoogleTranslateWidget()),*/
                          ]),
                        ),
                        SizedBox(
                          width: SizeConfig.defaultSize * Dimens.size13,
                        ),
                        InkWell(
                          onTap: (){
                            Get.to(()=>LanguageScreen());
                          },
                          child:  SvgPicture.asset(
                              ConstantAssets.googleTranslate,
                              height: SizeConfig.defaultSize * Dimens.size3,
                              width: SizeConfig.defaultSize * Dimens.size3,
                              fit: BoxFit.scaleDown
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.defaultSize * Dimens.size1Point5,
                        ),
                        InkWell(
                          onTap: (){
                            Get.to(()=> const UserProfileScreen());
                          },
                          child:  SvgPicture.asset(
                              ConstantAssets.profileIcon1,
                              height: SizeConfig.defaultSize * Dimens.size3,
                              width: SizeConfig.defaultSize * Dimens.size3,
                              fit: BoxFit.scaleDown
                          ),
                        )
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          ///--------------------- To Be Packed section ------------------------
                          InkWell(
                           onTap: ()=> {
                             Get.to(()=> const ToBePackedOrdersScaffold())
                           },
                           child: DashboardSections(
                             image: ConstantAssets.shippingBox,
                             title: ConstantString.toBePacked.tr,
                             value: dashboardController.packedOrder.value.toString(),
                           ),
                         ),

                          ///--------------------- To Be Shipped section ------------------------
                          InkWell(
                            onTap: ()=>{
                              Get.to(()=> const ToBeShippedOrderScaffold())
                            },
                            child: DashboardSections(
                              image: ConstantAssets.toBeShipped,
                              title: ConstantString.toBeShipped.tr,
                              value: dashboardController.toBeShippedOrder.value.toString(),
                            ),
                          )

                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeConfig.defaultSize * Dimens.size2Point5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            ///--------------------- Shipped Order section ------------------------
                            InkWell(
                              onTap: ()=>{
                                Get.to(()=>const ShippedOrderScaffold())
                      },
                              child: DashboardSections(
                                image: ConstantAssets.shippedOrder,
                                title: ConstantString.shippedOrder.tr,
                                value: dashboardController.shippedOrder.value.toString(),
                              ),
                            ),

                            ///--------------------- Cancelled Order section ------------------------
                            InkWell(
                              onTap: (){
                                Get.to(()=>const CanceledOrderScaffold());
                              },
                              child: DashboardSections(
                                image: ConstantAssets.cancelShipped,
                                title: ConstantString.cancelledOrder.tr,
                                value: dashboardController.cancelledOrder.value.toString(),
                              ),
                            )

                          ],
                        ),
                      ),


                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeConfig.defaultSize * Dimens.size2Point5,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [


                            ///--------------------- Reports Order section ------------------------
                            InkWell(
                              onTap: (){
                                Get.to(()=>const DeliveryReportsScaffold());
                              },
                              child: DashboardSections(
                                image: ConstantAssets.shippedOrder,
                                title: ConstantString.reports.tr,
                                value: dashboardController.report.value.toString(),
                              ),
                            )

                          ],
                        ),
                      ),


                      ///----------------- New Order text --------------------
                      // Padding(
                      //   padding: EdgeInsets.only(
                      //     top: SizeConfig.defaultSize * Dimens.size2Point5,
                      //     left: SizeConfig.defaultSize * Dimens.size1,
                      //   ),
                      //   child: Text(ConstantString.newOrder.tr,
                      //       style: TextStyle(
                      //         fontFamily: ConstantFonts
                      //             .poppinsBold,
                      //         fontSize:
                      //         SizeConfig.defaultSize *
                      //             Dimens.size1Point6,
                      //         color: ConstantColor
                      //             .secondaryColor,
                      //       )),
                      // ),

                    ],
                  ),
                  ///--------------------- New Orders Listview ------------------------
                  // dashboardController.allOrdersLength.value != 0
                  //     ? ListView.builder(
                  //   physics: const BouncingScrollPhysics(),
                  //   itemCount:dashboardController.allOrders.length,
                  //   shrinkWrap: true,
                  //   itemBuilder: (context, index) {
                  //     var item = dashboardController.allOrders[index];
                  //     return  NewOrderCardView(
                  //       title: item.orderId,
                  //       status: item.status,
                  //       address: item.address.address,
                  //       pincode: item.address.pincode,
                  //     );
                  //   },
                  // ): Center(
                  //   child: Text(ConstantString.noItemFound.tr,style: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2),))
                  //
                ]
          ),
              ),
            )));
  }
}
