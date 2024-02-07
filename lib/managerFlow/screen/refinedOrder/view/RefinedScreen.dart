import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/commonWidgets/DashboardSections.dart';
import 'package:captain_app/constants/ConstantAssets.dart';
import 'package:captain_app/constants/ConstantColor.dart';
import 'package:captain_app/constants/ConstantFonts.dart';
import 'package:captain_app/deliveryFlow/screens/dashboard/widget/NewOrderCardView.dart';
import 'package:captain_app/managerFlow/screen/refinedOrder/tobeDelivered/child/toBeDeliveredDetail/ToBeDeliveredDetailScaffold.dart';
import 'package:captain_app/managerFlow/screen/refinedOrder/tobeReceived/TobeReceivedScaffold.dart';
//import 'package:captain_app/managerFlow/toBeRefundedScreen/ToBeRefundedScreenScaffold.dart';
import 'package:captain_app/res/Dimens.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../tobeDelivered/TobeDeliveredScaffold.dart';
import '../widget/RefinedCardView.dart';

class RefinedScreen extends StatefulWidget {
  const RefinedScreen({Key? key}) : super(key: key);

  @override
  State<RefinedScreen> createState() => _RefinedScreenState();
}

class _RefinedScreenState extends State<RefinedScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: SizeConfig.defaultSize * Dimens.size2,
          right: SizeConfig.defaultSize * Dimens.size2,
        ),
        child: Column(
          children: [
            ActionBar(
              title: 'Refined Module',
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => {
                          Get.to(() => TobeReceivedScaffold()),
                        },
                        child: DashboardSections(
                          image: ConstantAssets.shippingBox,
                          title: "To be Received",
                          value: '60',
                        ),
                      ),
                      InkWell(
                        onTap: () => {
                          Get.to(() => TobeDeliveredScaffold()),
                        },
                        child: DashboardSections(
                          image: ConstantAssets.toBeShipped,
                          title: "To be Delivered",
                          value: '45',
                        ),
                      ),
                    ],
                  ),
                ),

                ///----------------- New Order text --------------------

                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size2Point5,
                    left: SizeConfig.defaultSize * Dimens.size1,
                  ),
                  child: Text("New Handover",
                      style: TextStyle(
                        fontFamily: ConstantFonts.poppinsBold,
                        fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                        color: ConstantColor.secondaryColor,
                      )),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return RefinedCardView(
                    id: "item.id",
                    orderId: "BKS 123245",
                    canceledOn: "14-09-2022",
                    handedOverOn: "8:00PM",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
