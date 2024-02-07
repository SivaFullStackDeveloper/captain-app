import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/res/Dimens.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../../constants/ConstantString.dart';
import '../controller/TobeAssignedController.dart';
import '../widget/TobeAssignedCardView.dart';

class TobeAssignedScreen extends StatefulWidget {
  const TobeAssignedScreen({Key? key}) : super(key: key);

  @override
  State<TobeAssignedScreen> createState() =>
      _TobeAssignedScreenState();
}

class _TobeAssignedScreenState extends State<TobeAssignedScreen> {
  var tobeAssignedController = Get.put(TobeAssignedController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => tobeAssignedController.isLoading.value
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
                title: "Customer Request",
              ),
            ),

            Expanded(
              flex: 9,
              child: Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * Dimens.size1,
                ),
                child: tobeAssignedController.toBeAssignedVerifierOrderListLength.value != 0
                    ?  ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: tobeAssignedController.toBeAssignedVerifierOrderList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var item = tobeAssignedController.toBeAssignedVerifierOrderList[index];

                    return TobeAssignedCardView(
                      id: item.id,
                      orderId: item.orderId,
                      requestDate: item.createdAt,
                      requestTime: item.createdAt,
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
