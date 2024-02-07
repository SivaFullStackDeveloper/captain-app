import 'package:captain_app/pickupFlow/pickupScreens/pickupDashboard/widget/PickupNewOrderCardView.dart';
import 'package:captain_app/pickupFlow/pickupScreens/toBeChecked/ToBeCheckedScaffold.dart';
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
import '../../../../deliveryFlow/screens/dashboard/view/UserProfileScreen.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../LanguageScreen.dart';
import '../../checkedOrder/CheckedOrderScaffold.dart';
import '../../reports/PickupReportsScaffold.dart';
import '../controller/PickupDashboardController.dart';

class PickupDashboardScreen extends StatefulWidget {
  @override
  _PickupDashboardScreenState createState() => _PickupDashboardScreenState();
}

class _PickupDashboardScreenState extends State<PickupDashboardScreen> with RouteAware {
  var pickupDashboardController = Get.put(PickupDashboardController());

  @override
  Widget build(BuildContext context) {
    //loginController.translate();
    return Obx(() => pickupDashboardController.isLoading.value
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
                            Get.to(()=>LanguagePickUpScreen());
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
                          InkWell(
                            onTap: ()=>{
                             // Get.to(()=> CameraPage())
                              Get.to(()=> const ToBeCheckedScaffold())
                            },
                            child: DashboardSections(
                              image: ConstantAssets.search,
                              title: "To Be Checked",
                              value: pickupDashboardController.receivedOrder.value.toString(),
                            ),
                          ),
                          InkWell(
                            onTap: ()=> {
                              // Get.to(()=> ReceivePickupScaffold())
                              Get.to(()=> CheckedOrderScaffold())
                            },
                            child: DashboardSections(
                              image: ConstantAssets.markas,
                              title: "Give to Manager",
                              value: pickupDashboardController.pendingOrder.value.toString(),
                            ),
                          ),

                        ],
                      ),
/*

                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeConfig.defaultSize * Dimens.size2Point5,
                        ),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: ()=>{
                                Get.to(()=>CheckedOrderScaffold())
                      },
                              child: DashboardSections(
                                image: ConstantAssets.shippedOrder,
                                title: "Checked Order",
                                value: pickupDashboardController.checkedOrder.value.toString(),
                              ),
                            ),
                           */
/* InkWell(
                              onTap: (){
                                Get.to(()=>RejectedOrdersScaffold());
                              },
                              child: DashboardSections(
                                image: ConstantAssets.cancelShipped,
                                title: "",
                                value: pickupDashboardController.rejectedOrder.value.toString(),
                              ),
                            )
*//*
                          ],
                        ),
                      ),
*/



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
                                Get.to(()=>const PickupReportsScaffold());
                              },
                              child: DashboardSections(
                                image: ConstantAssets.markas,
                                title: ConstantString.reports.tr,
                                value: "55",
                              ),
                            )

                          ],
                        ),
                      ),


                      ///----------------- New Order text --------------------

                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeConfig.defaultSize * Dimens.size2Point5,
                          left: SizeConfig.defaultSize * Dimens.size1,
                        ),
                        child: Text("New Order",
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


                  pickupDashboardController.allOrdersLength.value != 0
                      ? ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: pickupDashboardController.allOrders.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var item = pickupDashboardController.allOrders[index];
                      return  PickupNewOrderCardView(
                        id: item.id,
                        orderId: item.orderId,
                        status: item.status,
                        date: item.estimatedDeliveryDate,
                        time: item.estimatedDeliveryDate,
                      );
                    },
                  ): Center(
                      child: Text("No Package Found",style: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2),))],
          ),
              ),
            )));
  }
}
