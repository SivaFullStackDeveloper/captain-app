import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/commonWidgets/ButtonWidget.dart';
import 'package:captain_app/commonWidgets/MySeparator.dart';
import 'package:captain_app/commonWidgets/StepperWidget.dart';
import 'package:captain_app/constants/ConstantAssets.dart';
import 'package:captain_app/constants/ConstantColor.dart';
import 'package:captain_app/constants/ConstantFonts.dart';

import 'package:captain_app/res/Dimens.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../../../constants/ConstantString.dart';
import '../controller/TobeShippedController.dart';
import '../widget/TobeShippedCardView.dart';

class TobeShippedScreen extends StatefulWidget {
  const TobeShippedScreen({Key? key}) : super(key: key);

  @override
  State<TobeShippedScreen> createState() =>
      _TobeShippedScreenState();
}

class _TobeShippedScreenState extends State<TobeShippedScreen> {
  var tobeShippedController = Get.put(TobeShippedController());


  @override
  Widget build(BuildContext context) {
    return Obx(() => tobeShippedController.isLoading.value
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
                title: "To Be Shipped",
              ),
            ),

            Expanded(
              flex: 9,
              child: Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * Dimens.size1,
                ),
                child: tobeShippedController.allDeliveryOrderListLength.value != 0
                    ? ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: tobeShippedController.allDeliveryOrderList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var item = tobeShippedController.allDeliveryOrderList[index];

                    return TobeShippedCardView(
                      id: item.id,
                      orderId: item.orderId,
                      agentName: item.agentName,
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
