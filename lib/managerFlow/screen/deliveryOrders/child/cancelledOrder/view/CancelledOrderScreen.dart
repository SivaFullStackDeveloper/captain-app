import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/res/Dimens.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../../../constants/ConstantString.dart';
import '../controller/CancelledOrderController.dart';
import '../widget/CancelledOrderCardView.dart';

class CancelledOrderScreen extends StatefulWidget {
  const CancelledOrderScreen({Key? key}) : super(key: key);

  @override
  State<CancelledOrderScreen> createState() =>
      _CancelledOrderScreenState();
}

class _CancelledOrderScreenState extends State<CancelledOrderScreen> {
  var cancelledOrderController = Get.put(CancelledOrderController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => cancelledOrderController.isLoading.value
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
                title: "Cancelled Orders",
              ),
            ),

            Expanded(
              flex: 9,
              child: Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * Dimens.size1,
                ),
                child: cancelledOrderController.allDeliveryOrderListLength.value != 0
                    ? ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: cancelledOrderController.allDeliveryOrderList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var item = cancelledOrderController.allDeliveryOrderList[index];
                    return CancelledOrderCardView(
                      id: item.id,
                      orderId: item.orderId,
                      cancelledOn: item.cancelledAt,
                      handedOverOn: item.handedOverAt,
                    );
                  },
                ): Center(
                    child: Text(ConstantString.noItemFound.tr,style: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2),)),
              )
              ),

          ]),
        )));
  }
}
