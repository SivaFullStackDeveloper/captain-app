import 'package:captain_app/deliveryFlow/screens/dashboard/widget/NewOrderCardView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../../../../../../../commonWidgets/ActionBar.dart';
import '../controller/ReceivePickupOrderController.dart';
import '../widget/ReceivePickupOrderCardView.dart';

class ReceivePickupScreen extends StatefulWidget {
  @override
  _ReceivePickupScreenState createState() => _ReceivePickupScreenState();
}

class _ReceivePickupScreenState extends State<ReceivePickupScreen>
    with RouteAware {
  var receivePickupController = Get.put(ReceivePickupController());

  @override
  Widget build(BuildContext context) {
    //loginController.translate();
    return Obx(() => receivePickupController.isLoading.value
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
                Expanded(flex: 1, child: ActionBar(title: "Receive Pickups")),

                ///-------------------- Pack Orders Listview -----------
                Expanded(
                  flex: 9,
                  child: receivePickupController.allPickupOrderLength.value != 0
                      ? ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount:
                              receivePickupController.allPickupOrders.length,
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            var item =
                                receivePickupController.allPickupOrders[index];
                            return ReceivePickupCardView(
                              id: item.id,
                              orderId: item.orderId,
                              date: item.estimatedDeliveryDate,
                              time: item.estimatedDeliveryDate,
                            );
                          },
                        )
                      : Center(
                          child: Text(
                          "No Pickup Item Found",
                          style: TextStyle(
                              fontSize: SizeConfig.defaultSize * Dimens.size2),
                        )),
                )
              ],
            ),
          )));
  }
}
