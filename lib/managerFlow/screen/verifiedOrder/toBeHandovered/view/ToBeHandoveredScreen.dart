import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/res/Dimens.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../../constants/ConstantString.dart';
import '../controller/ToBeHandoveredController.dart';
import '../widget/ToBeHandoveredCardView.dart';

class ToBeHandoveredScreen extends StatefulWidget {
  const ToBeHandoveredScreen({Key? key}) : super(key: key);

  @override
  State<ToBeHandoveredScreen> createState() =>
      _ToBeHandoveredScreenState();
}

class _ToBeHandoveredScreenState extends State<ToBeHandoveredScreen> {
  var toBeHandoveredController = Get.put(ToBeHandoveredController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => toBeHandoveredController.isLoading.value
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
                title: "To be handovered",
              ),
            ),

            Expanded(
              flex: 9,
              child: Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * Dimens.size1,
                ),
                child: toBeHandoveredController.toBeHandoverOrderListLength.value != 0
                    ? ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: toBeHandoveredController.toBeHandoverOrderList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var item = toBeHandoveredController.toBeHandoverOrderList[index];

                    return ToBeHandoveredCardView(
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
