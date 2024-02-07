import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/res/Dimens.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../../constants/ConstantString.dart';
import '../controller/ToBeReturnedController.dart';
import '../widget/ToBeReturnedCardView.dart';

class ToBeReturnedScreen extends StatefulWidget {
  const ToBeReturnedScreen({Key? key}) : super(key: key);

  @override
  State<ToBeReturnedScreen> createState() =>
      _ToBeReturnedScreenState();
}

class _ToBeReturnedScreenState extends State<ToBeReturnedScreen> {
  var toBeReturnedController = Get.put(ToBeReturnedController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => toBeReturnedController.isLoading.value
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
                title: "To Be Returned",
              ),
            ),

            Expanded(
              flex: 9,
              child: Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * Dimens.size1,
                ),
                child: toBeReturnedController.allToBeReturnedOrderListLength.value != 0
                    ? ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: toBeReturnedController.allToBeReturnedOrderList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    var item = toBeReturnedController.allToBeReturnedOrderList[index];
                    return  ToBeReturnedCardView(
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
