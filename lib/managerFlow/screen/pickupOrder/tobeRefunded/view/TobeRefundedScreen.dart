import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/res/Dimens.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../../constants/ConstantString.dart';
import '../controller/TobeRefundedController.dart';
import '../widget/TobeRefundedCardView.dart';

class TobeRefundedScreen extends StatefulWidget {
  const TobeRefundedScreen({Key? key}) : super(key: key);

  @override
  State<TobeRefundedScreen> createState() =>
      _TobeRefundedScreenState();
}

class _TobeRefundedScreenState extends State<TobeRefundedScreen> {
  var tobeRefundedController = Get.put(TobeRefundedController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => tobeRefundedController.isLoading.value
        ? const CustomProgressIndicator()
        :  SafeArea(
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
                title: "To Be Refunded",
              ),
            ),

            Expanded(
              flex: 9,
              child: Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * Dimens.size1,
                ),
                child: tobeRefundedController.allToBeRefundOrderListLength.value != 0
                    ? ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: tobeRefundedController.allToBeRefundOrderList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var item = tobeRefundedController.allToBeRefundOrderList[index];

                    return TobeRefundedCardView(
                      id: item.id,
                      orderId: item.orderId,
                      canceledOn: item.cancelledAt,
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
