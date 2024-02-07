import 'package:captain_app/deliveryFlow/screens/dashboard/controller/DashboardController.dart';
import 'package:captain_app/deliveryFlow/screens/dashboard/widget/NewOrderCardView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../../constants/ConstantAssets.dart';
import '../../../../../../constants/ConstantColor.dart';
import '../../../../../../constants/ConstantFonts.dart';
import '../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../../../commonWidgets/ActionBar.dart';
import '../../../../commonWidgets/CircleContainerWithImage.dart';
import '../controller/ShippedOrderController.dart';
import '../widget/ShippedOrderCardView.dart';

class ShippedOrderScreen extends StatefulWidget {
  @override
  _ShippedOrderScreenState createState() => _ShippedOrderScreenState();
}

class _ShippedOrderScreenState extends State<ShippedOrderScreen> with RouteAware {
  var shippedOrderController = Get.put(ShippedOrderController());
  //var dashboardController = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    //loginController.translate();
    return Obx(() => shippedOrderController.isLoading.value
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
                    child: ActionBar(title: "Shipped Orders")),



                ///-------------------- Pack Orders Listview -----------
                Expanded(
                  flex: 9,
                  child: shippedOrderController.allOrdersLength.value != 0
                      ? ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount:shippedOrderController.allOrders.length,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var item = shippedOrderController.allOrders[index];
                      return  ShippedOrderCardView(
                        id: item.id,
                        orderId: item.orderId,
                        estimatedDeliveryDate: item.estimatedDeliveryDate,
                      );
                    },
                  ): Center(
                      child: Text("No Package Found",style: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2),)),
                )],
          ),
            )));
  }
}
