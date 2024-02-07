import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/commonWidgets/DashboardSections.dart';
import 'package:captain_app/constants/ConstantAssets.dart';
import 'package:captain_app/constants/ConstantColor.dart';
import 'package:captain_app/constants/ConstantFonts.dart';
import 'package:captain_app/constants/ConstantString.dart';
import 'package:captain_app/deliveryFlow/screens/dashboard/widget/NewOrderCardView.dart';
import 'package:captain_app/managerFlow/screen/deliveryOrders/widget/DeliveryOrderCardView.dart';
import 'package:captain_app/res/Dimens.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../commonWidgets/CustomProgressIndicator.dart';
import '../child/cancelledOrder/CancelledOrderScaffold.dart';
import '../child/shipped/ShippedScaffold.dart';
import '../child/tobeShipped/TobeShippedScaffold.dart';
import '../controller/DeliveryOrdersController.dart';

class DeliveryOrderScreen extends StatefulWidget {
  const DeliveryOrderScreen({Key? key}) : super(key: key);

  @override
  State<DeliveryOrderScreen> createState() => _DeliveryOrderScreenState();
}

class _DeliveryOrderScreenState extends State<DeliveryOrderScreen> {
  var deliveryOrdersController = Get.put(DeliveryOrdersController());


  @override
  Widget build(BuildContext context) {
    return  Obx(() => deliveryOrdersController.isLoading.value
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
              title: 'Delivery Orders',
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size2,
                  ),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      height: SizeConfig.defaultSize * Dimens.size16,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () => {
                              Get.to(() => const TobeShippedScaffold()),
                            },
                            child: DashboardSections(
                              image: ConstantAssets.shippingBox,
                              title: "To be Shipped",
                              value: deliveryOrdersController.toBeShipped.value.toString(),
                            ),
                          ),
                          InkWell(
                            onTap: () => {
                              Get.to(() => const ShippedScaffold()),
                            },
                            child: DashboardSections(
                              image: ConstantAssets.toBeShipped,
                              title: "Shipped",
                              value: deliveryOrdersController.shipped.value.toString(),
                            ),
                          ),
                          InkWell(
                            onTap: () => {
                              Get.to(() => const CancelledOrderScaffold()),
                            },
                            child: DashboardSections(
                              image: ConstantAssets.toBeShipped,
                              title: "Canceled",
                              value: deliveryOrdersController.cancelled.value.toString(),
                            ),
                          )
                        ],
                      ),
                    ),
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
              child: deliveryOrdersController.allDeliveryOrderListLength.value != 0
                  ? ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: deliveryOrdersController.allDeliveryOrderList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var item = deliveryOrdersController.allDeliveryOrderList[index];
                  return  DeliveryOrderCardView(
                    orderId: item.orderId,
                    status: item.status,
                    packedAt: item.packedAt,
                    shippedAt: item.shippedAt,
                  );
                },
              ): Center(
                  child: Text(ConstantString.noItemFound.tr,style: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2),)),
            )
          ],
        ),
      ),
    ));
  }
}
