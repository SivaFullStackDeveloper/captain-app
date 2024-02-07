import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/res/Dimens.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../../constants/ConstantString.dart';
import '../controller/SendToWarehouseController.dart';
import '../widget/SendToWarehouseCardView.dart';

class SendToWarehouseScreen extends StatefulWidget {
  const SendToWarehouseScreen({Key? key}) : super(key: key);

  @override
  State<SendToWarehouseScreen> createState() =>
      _SendToWarehouseScreenState();
}

class _SendToWarehouseScreenState extends State<SendToWarehouseScreen> {
  var tobeDeliveredController = Get.put(SendToWarehouseController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => tobeDeliveredController.isLoading.value
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
                title: "Send to warehouse",
              ),
            ),

            Expanded(
              flex: 9,
              child: Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * Dimens.size1,
                ),
                child: tobeDeliveredController.toBeAssignedVerifierOrderListLength.value != 0
                    ? ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: tobeDeliveredController.toBeAssignedVerifierOrderList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var item = tobeDeliveredController.toBeAssignedVerifierOrderList[index];

                    return SendToWarehouseCardView(
                      id: item.id,
                      orderId: item.orderId,
                      verifyDate: item.createdAt,
                      verifyTime: item.createdAt,
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
