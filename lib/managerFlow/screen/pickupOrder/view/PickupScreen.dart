import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/commonWidgets/DashboardSections.dart';
import 'package:captain_app/constants/ConstantAssets.dart';
import 'package:captain_app/constants/ConstantColor.dart';
import 'package:captain_app/constants/ConstantFonts.dart';
import 'package:captain_app/deliveryFlow/screens/dashboard/widget/NewOrderCardView.dart';
//import 'package:captain_app/managerFlow/toBeRefundedScreen/ToBeRefundedScreenScaffold.dart';
import 'package:captain_app/res/Dimens.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../constants/ConstantString.dart';
import '../controller/PickupOrdersController.dart';
import '../tobeRefunded/TobeRefundedScaffold.dart';
import '../tobeReturned/ToBeReturnedScaffold.dart';
import '../widget/PickupOrderCardView.dart';

class PickupScreen extends StatefulWidget {
  const PickupScreen({Key? key}) : super(key: key);

  @override
  State<PickupScreen> createState() => _PickupScreenState();
}

class _PickupScreenState extends State<PickupScreen> {
  var pickupOrdersController = Get.put(PickupOrdersController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => pickupOrdersController.isLoading.value
        ? const CustomProgressIndicator()
        : SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: SizeConfig.defaultSize * Dimens.size2,
          right: SizeConfig.defaultSize * Dimens.size2,
        ),
        child: Column(
          children: [
            ActionBar(
              title: 'Pickup Module',
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => {
                          Get.to(() => ToBeReturnedScaffold()),
                        },
                        child: DashboardSections(
                          image: ConstantAssets.shippingBox,
                          title: "To be Returned",
                          value: pickupOrdersController.toBeReturned.value.toString(),
                        ),
                      ),
                      InkWell(
                        onTap: () => {
                          Get.to(() => TobeRefundedScaffold()),
                        },
                        child: DashboardSections(
                          image: ConstantAssets.toBeShipped,
                          title: "To be Refunded",
                          value: pickupOrdersController.toBeRefunded.value.toString(),
                        ),
                      ),
                    ],
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
                        fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                        color: ConstantColor.secondaryColor,
                      )),
                ),
              ],
            ),
            Expanded(
              child: pickupOrdersController.allPickupOrderListLength.value != 0
                  ? ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: pickupOrdersController.allPickupOrderList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var item = pickupOrdersController.allPickupOrderList[index];

                  return PickupOrderCardView(
                    title: item.orderId,
                    status: item.status,
                    checkedOn: item.cancelledAt??"",
                    handOveredOn: item.handedOverAt??"",
                  );
                },
              ): Center(
                  child: Text(ConstantString.noItemFound.tr,style: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2),)),

            ),
          ],
        ),
      ),
    ));
  }
}
