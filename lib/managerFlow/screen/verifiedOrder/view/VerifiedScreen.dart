import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/commonWidgets/DashboardSections.dart';
import 'package:captain_app/constants/ConstantAssets.dart';
import 'package:captain_app/constants/ConstantColor.dart';
import 'package:captain_app/constants/ConstantFonts.dart';
import 'package:captain_app/deliveryFlow/screens/dashboard/widget/NewOrderCardView.dart';
import 'package:captain_app/managerFlow/screen/verifiedOrder/sendToWarehouse/SendToWarehouseScaffold.dart';
//import 'package:captain_app/managerFlow/toBeRefundedScreen/ToBeRefundedScreenScaffold.dart';
import 'package:captain_app/res/Dimens.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../constants/ConstantString.dart';
import '../controller/VerifierOrdersController.dart';
import '../toBeHandovered/ToBeHandoveredScaffold.dart';
import '../tobeAssigned/TobeAssignedScaffold.dart';
import '../tobeDelivered/TobeDeliveredScaffold.dart';
import '../widget/VerifiedCardView.dart';

class VerifiedScreen extends StatefulWidget {
  const VerifiedScreen({Key? key}) : super(key: key);

  @override
  State<VerifiedScreen> createState() => _VerifiedScreenState();
}

class _VerifiedScreenState extends State<VerifiedScreen> {

  var verifierOrdersController = Get.put(VerifierOrdersController());


  @override
  Widget build(BuildContext context) {
    return  Obx(() => verifierOrdersController.isLoading.value
        ? const CustomProgressIndicator()
        :  SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: SizeConfig.defaultSize * Dimens.size2,
          right: SizeConfig.defaultSize * Dimens.size2,
        ),
        child: Column(
          children: [
            ActionBar(
              title: 'Verified Module',
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
                          Get.to(() => TobeAssignedScaffold()),
                        },
                        child: DashboardSections(
                          image: ConstantAssets.shippingBox,
                          title: "To be Assigned",
                          value: verifierOrdersController.toBeAssigned.value.toString(),
                        ),
                      ),
                      InkWell(
                        onTap: () => {
                          Get.to(() => SendToWarehouseScaffold()),
                        },
                        child: DashboardSections(
                          image: ConstantAssets.toBeShipped,
                          title: "Send to \nwarehouse",
                          value: verifierOrdersController.toBeSent.value.toString(),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => {
                          Get.to(() => TobeDeliveredScaffold()),
                        },
                        child: DashboardSections(
                          image: ConstantAssets.toBeShipped,
                          title: "To be delivered",
                          value: verifierOrdersController.toBeSent.value.toString(),
                        ),
                      ),
                      InkWell(
                        onTap: () => {
                          Get.to(() => ToBeHandoveredScaffold()),
                        },
                        child: DashboardSections(
                          image: ConstantAssets.toBeShipped,
                          title: "To be \nhandovered",
                          value: verifierOrdersController.toBeSent.value.toString(),
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
                  child: Text("New Request",
                      style: TextStyle(
                        fontFamily: ConstantFonts.poppinsBold,
                        fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                        color: ConstantColor.secondaryColor,
                      )),
                ),
              ],
            ),
            Expanded(
              child: verifierOrdersController.allVerifierOrderListLength.value != 0
                  ?  ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: verifierOrdersController.allVerifierOrderList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var item = verifierOrdersController.allVerifierOrderList[index];
                  return VerifiedCardView(
                    id: item.id,
                    orderId: item.orderId,
                    requestDate: item.createdAt,
                    requestTime: item.createdAt,
                  );
                },
              ): Center(
                  child: Text(ConstantString.noItemFound.tr,style: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2),)),
            )
          ],
        ),
      ),
    ));
  }

}
