import 'package:captain_app/commonWidgets/ActionBar.dart';

import 'package:captain_app/res/Dimens.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../../../constants/ConstantString.dart';
import '../controller/ShippedController.dart';
import '../widget/ShippedCardView.dart';

class ShippedScreen extends StatefulWidget {
  const ShippedScreen({Key? key}) : super(key: key);

  @override
  State<ShippedScreen> createState() =>
      _ShippedScreenState();
}

class _ShippedScreenState extends State<ShippedScreen> {
  var shippedController = Get.put(ShippedController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => shippedController.isLoading.value
        ? const CustomProgressIndicator()
        : SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: SizeConfig.defaultSize * Dimens.size1Point8,
            right: SizeConfig.defaultSize * Dimens.size1Point8,
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ///------------------- Action Bar ---------------------
            Expanded(
              flex: 1,
              child: ActionBar(
                title: "Shipped",
              ),
            ),

            Expanded(
              flex: 9,
              child: Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * Dimens.size1,
                ),
                child:shippedController.allDeliveryOrderListLength.value != 0
                    ?  ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: shippedController.allDeliveryOrderList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var item = shippedController.allDeliveryOrderList[index];
                    return  ShippedCardView(
                      id: item.id,
                      orderId: item.orderId,
                      address: item.agentName,
                    );
                  },
                ): Center(
                    child: Text(ConstantString.noItemFound.tr,style: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2),)),
              ),
            ),
          ]),
        )));
  }
}
