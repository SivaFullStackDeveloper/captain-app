
import 'package:captain_app/pickupFlow/pickupScreens/receivePickup/ReceivePickupScaffold.dart';
import 'package:captain_app/pickupFlow/pickupScreens/receivePickup/child/pickupDetails/PickupDetailsScaffold.dart';
import 'package:captain_app/pickupFlow/pickupScreens/toBeChecked/ToBeCheckedScaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../commonWidgets/ActionBar.dart';
import '../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../commonWidgets/DashboardSections.dart';
import '../../../../commonWidgets/GoogleTranslateWidget.dart';
import '../../../../constants/ConstantAssets.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../refinerReceivePickup/RefinerReceivePickupScaffold.dart';
import '../../shippedOrderDetailsScreen/ShippedOrderDetailScaffold.dart';
import '../controller/RefinerDashboardController.dart';
import '../widget/RefinerNewOrderCardView.dart';

class RefinerDashboardScreen extends StatefulWidget {
  @override
  _RefinerDashboardScreenState createState() => _RefinerDashboardScreenState();
}

class _RefinerDashboardScreenState extends State<RefinerDashboardScreen> with RouteAware {
  var dashboardController = Get.put(RefinerDashboardController());

  @override
  Widget build(BuildContext context) {
    //loginController.translate();
    return

      // Obx(() => dashboardController.isLoading.value
      //   ? const CustomProgressIndicator()
      //   :

    SafeArea(
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
                                  fontSize:
                                      SizeConfig.defaultSize * Dimens.size1Point8,
                                  color: ConstantColor.greyColor,
                                )),

                            ///--------------------- Name text -------------------------
                            Padding(
                              padding: EdgeInsets.only(
                                left: SizeConfig.defaultSize * Dimens.sizePoint5,
                              ),
                              child: Text("${"Suurya"} 👋",
                                  style: TextStyle(
                                      fontFamily: ConstantFonts.poppinsMedium,
                                      fontSize: SizeConfig.defaultSize *
                                          Dimens.size1Point8,
                                      color: ConstantColor.blackColor,
                                      fontWeight: FontWeight.w900)),
                            ),

                              // Padding(
                              //   padding: EdgeInsets.only(
                              //       right: SizeConfig.defaultSize * Dimens.size2),
                              //   child: GoogleTranslateWidget()),
                          ]),
                        ),
                        SvgPicture.asset(
                          ConstantAssets.googleTranslate,
                          color: ConstantColor.secondaryColor,
                          width: SizeConfig.defaultSize * Dimens.size3,
                          height: SizeConfig.defaultSize * Dimens.size3,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  ),
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //       children: [
                  //        InkWell(
                  //          onTap: ()=> {
                  //            Get.to(()=> RefinerReceivePickupScaffold())
                  //          },
                  //          child: DashboardSections(
                  //            image: ConstantAssets.shippingBox,
                  //            title: "To Be Received",
                  //            value: "60",
                  //          ),
                  //        ),
                  //         InkWell(
                  //           onTap: ()=>{
                  //             Get.to(()=> ToBeCheckedScaffold())
                  //           },
                  //           child: DashboardSections(
                  //             image: ConstantAssets.toBeShipped,
                  //             title: "To Be Checked",
                  //             value: "60",
                  //           ),
                  //         )
                  //
                  //       ],
                  //     ),
                  //
                  //
                  //
                  //
                  //     ///----------------- New Order text --------------------
                  //
                  //     Padding(
                  //       padding: EdgeInsets.only(
                  //         top: SizeConfig.defaultSize * Dimens.size2Point5,
                  //         left: SizeConfig.defaultSize * Dimens.size1,
                  //       ),
                  //       child: Text("New Pickups",
                  //           style: TextStyle(
                  //             fontFamily: ConstantFonts
                  //                 .poppinsBold,
                  //             fontSize:
                  //             SizeConfig.defaultSize *
                  //                 Dimens.size1Point6,
                  //             color: ConstantColor
                  //                 .secondaryColor,
                  //           )),
                  //     ),
                  //   ],
                  // ),


                  ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount:5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                          Get.to(()=>ShippedOrderDetailsScaffold());
                        },
                        child: const RefinerNewOrderCardView(
                          title: "Pickup #3214456",
                          status: "Start Packing",
                          deliveryDate: "Estimated Delivery Date: 14-02-2022",
                          deliveryTime: "Estimated Delivery Date: 06-02-2022",
                        ),
                      );
                    },
                  )],
          ),
              ),
            ))
    //)
    ;
  }
}
