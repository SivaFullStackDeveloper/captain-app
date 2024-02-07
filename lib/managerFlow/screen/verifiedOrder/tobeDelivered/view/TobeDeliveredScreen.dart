import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/res/Dimens.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../../constants/ConstantString.dart';
import '../controller/TobeDeliveredForVerifyController.dart';
import '../widget/TobeDeliveredCardView.dart';

class TobeDeliveredScreen extends StatefulWidget {
  const TobeDeliveredScreen({Key? key}) : super(key: key);

  @override
  State<TobeDeliveredScreen> createState() =>
      _TobeDeliveredScreenState();
}

class _TobeDeliveredScreenState extends State<TobeDeliveredScreen> {
  var tobeDeliveredController = Get.put(TobeDeliveredForVerifyController());

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
                title: "To Be Delivered",
              ),
            ),

            Expanded(
              flex: 9,
              child: Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * Dimens.size1,
                ),
                child: tobeDeliveredController.toBeDeliveredVerifierOrderListLength.value != 0
                    ? ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: tobeDeliveredController.toBeDeliveredVerifierOrderList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var item = tobeDeliveredController.toBeDeliveredVerifierOrderList[index];

                    return TobeDeliveredCardView(
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
