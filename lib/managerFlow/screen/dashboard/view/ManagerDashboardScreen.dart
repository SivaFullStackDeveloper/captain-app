import 'package:captain_app/deliveryFlow/screens/canceledOrder/CanceledOrderScaffold.dart';
import 'package:captain_app/deliveryFlow/screens/dashboard/widget/NewOrderCardView.dart';
import 'package:captain_app/managerFlow/screen/managerGenerateReports/view/ManagerGenerateReports.dart';

import 'package:captain_app/managerFlow/screen/refinedOrder/RefinedScaffold.dart';
import 'package:captain_app/managerFlow/screen/verifiedOrder/VerifiedScaffold.dart';
import 'package:captain_app/managerFlow/screen/verifiedOrder/homeScreen/VerifierManagerHomeScreenScaffold.dart';
import 'package:captain_app/pickupFlow/pickupScreens/rejectedOrders/RejectedOrdersScaffold.dart';
import 'package:captain_app/pickupFlow/pickupScreens/toBeChecked/ToBeCheckedScaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../commonWidgets/DashboardSections.dart';
import '../../../../constants/ConstantAssets.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../pickupFlow/pickupScreens/receivePickup/ReceivePickupScaffold.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../deliveryOrders/DeliveryOrderScaffold.dart';
import '../../managerGenerateReports/ManagerGenerateReportsScaffold.dart';
import '../../pickupOrder/PickupScaffold.dart';
import '../controller/ManagerDashboardController.dart';
import '../widget/ManagerDashboardCardView.dart';

class ManagerDashboardScreen extends StatefulWidget {
  const ManagerDashboardScreen({super.key});

  @override
  _ManagerDashboardScreenState createState() => _ManagerDashboardScreenState();
}

class _ManagerDashboardScreenState extends State<ManagerDashboardScreen>
    with RouteAware {
  var managerDashboardController = Get.put(ManagerDashboardController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => managerDashboardController.isLoading.value
        ? const CustomProgressIndicator()
        : SafeArea(
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
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
                              child: Text("${"Suurya"} 👋",
                                  style: TextStyle(
                                      fontFamily: ConstantFonts.poppinsMedium,
                                      fontSize: SizeConfig.defaultSize *
                                          Dimens.size1Point8,
                                      color: ConstantColor.blackColor,
                                      fontWeight: FontWeight.w900)),
                            ),

                            /*  Padding(
                                padding: EdgeInsets.only(
                                    right: SizeConfig.defaultSize * Dimens.size2),
                                child: GoogleTranslateWidget()),*/
                          ]),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () => {
                              Get.to(() => const DeliveryOrderScaffold()),
                            },
                            child: DashboardSections(
                              image: ConstantAssets.shippingBox,
                              title: "Delivery Orders",
                              value: managerDashboardController.delivery.value
                                  .toString(),
                            ),
                          ),
                          InkWell(
                            onTap: () => {
                              Get.to(() => const PickupScaffold()),
                            },
                            child: DashboardSections(
                              image: ConstantAssets.toBeShipped,
                              title: "Pickup orders",
                              value: managerDashboardController.pickup.value
                                  .toString(),
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
                            InkWell(
                              onTap: () => {
                                Get.to(() =>
                                    const VerifierManagerHomeScreenScaffold()),
                              },
                              child: DashboardSections(
                                image: ConstantAssets.shippedOrder,
                                title: "Verified Orders",
                                value: managerDashboardController.verifier.value
                                    .toString(),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Get.to(() => RefinedScaffold());
                              },
                              child: DashboardSections(
                                image: ConstantAssets.cancelShipped,
                                title: "Refined Orders",
                                value: managerDashboardController.refiner.value
                                    .toString(),
                              ),
                            )
                          ],
                        ),
                      ),

                      InkWell(
                        onTap: () {
                          Get.to(() => ManagerGenerateReportsScaffold());
                        },
                        child: DashboardSections(
                          image: ConstantAssets.search,
                          title: ConstantString.generateReports,
                          value: managerDashboardController.refiner.value
                              .toString(),
                        ),
                      ),

                      ///----------------- New Order text --------------------

                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeConfig.defaultSize * Dimens.size2Point5,
                          left: SizeConfig.defaultSize * Dimens.size1,
                        ),
                        child: Text("New Handovers",
                            style: TextStyle(
                              fontFamily: ConstantFonts.poppinsBold,
                              fontSize:
                                  SizeConfig.defaultSize * Dimens.size1Point6,
                              color: ConstantColor.secondaryColor,
                            )),
                      ),
                    ],
                  ),
                  Expanded(
                    child: managerDashboardController
                                .allHandoverListLength.value !=
                            0
                        ? ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            itemCount: managerDashboardController
                                .allHandoverList.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              var item = managerDashboardController
                                  .allHandoverList[index];
                              return ManagerDashboardCardView(
                                id: item.id,
                                orderId: item.orderId,
                                handedOverOn: item.handedOverAt,
                                readyToShip: item.createdAt,
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
                  )
                ],
              ),
            ),
          ));
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     InkWell(
//                       onTap: () => {
//                         Get.to(() => const DeliveryOrderScaffold()),
//                       },
//                       child: DashboardSections(
//                         image: ConstantAssets.shippingBox,
//                         title: "Delivery Orders",
//                         value: managerDashboardController.delivery.value.toString(),
//                       ),
//                     ),
//                     InkWell(
//                       onTap: () => {
//                         Get.to(() => const PickupScaffold()),
//                       },
//                       child: DashboardSections(
//                         image: ConstantAssets.toBeShipped,
//                         title: "Pickup orders",
//                         value: managerDashboardController.pickup.value.toString(),
//                       ),
//                     )
//                   ],
//                 ),
//
//                 Padding(
//                   padding: EdgeInsets.only(
//                     top: SizeConfig.defaultSize * Dimens.size2Point5,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       InkWell(
//                         onTap: () => {
//                           Get.to(() => const VerifiedScaffold()),
//
//                         },
//                         child: DashboardSections(
//                           image: ConstantAssets.shippedOrder,
//                           title: "Verified Orders",
//                           value: managerDashboardController.verifier.value.toString(),
//                         ),
//                       ),
//                       InkWell(
//                         onTap: () {
//                           Get.to(()=> RefinedScaffold());
//                         },
//                         child: DashboardSections(
//                           image: ConstantAssets.cancelShipped,
//                           title: "Refined Orders",
//                           value: managerDashboardController.refiner.value.toString(),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//
//                 Padding(
//                   padding: EdgeInsets.only(
//                     top: SizeConfig.defaultSize * Dimens.size2Point5,
//                   ),
//                   child: InkWell(
//                     onTap: () {
//                       Get.to(()=> ManagerGenerateReportsScaffold());
//                     },
//                     child: DashboardSections(
//                       image: ConstantAssets.search,
//                       title: ConstantString.generateReports,
//                       value: managerDashboardController.refiner.value.toString(),
//                     ),
//                   ),
//                 ),
//
//                 ///----------------- New Order text --------------------
//
//                 Padding(
//                   padding: EdgeInsets.only(
//                     top: SizeConfig.defaultSize * Dimens.size2Point5,
//                     left: SizeConfig.defaultSize * Dimens.size1,
//                   ),
//                   child: Text("New Handovers",
//                       style: TextStyle(
//                         fontFamily: ConstantFonts.poppinsBold,
//                         fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
//                         color: ConstantColor.secondaryColor,
//                       )),
//                 ),
//               ],
//             ),
//             Expanded(
//               child: managerDashboardController.allHandoverListLength.value != 0
//                   ? ListView.builder(
//                 physics: const BouncingScrollPhysics(),
//                 itemCount: managerDashboardController.allHandoverList.length,
//                 shrinkWrap: true,
//                 itemBuilder: (context, index) {
//                   var item = managerDashboardController.allHandoverList[index];
//                   return  ManagerDashboardCardView(
//                     id: item.id,
//                     orderId: item.orderId,
//                     handedOverOn: item.handedOverAt,
//                     readyToShip: item.createdAt,
//                   );
//                 },
//               ): Center(
//                   child: Text(ConstantString.noItemFound.tr,style: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2),)),
//             )
//           ],
//         ),
//       ),
//     ));
  }
}
