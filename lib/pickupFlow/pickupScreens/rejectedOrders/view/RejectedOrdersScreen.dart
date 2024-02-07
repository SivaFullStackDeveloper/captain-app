import 'package:captain_app/deliveryFlow/screens/dashboard/widget/NewOrderCardView.dart';
import 'package:captain_app/pickupFlow/pickupScreens/rejectedOrders/controller/RejectedOrdersController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../../commonWidgets/CircleContainerWithImage.dart';
import '../widget/RejectedOrdersCardView.dart';

class RejectedOrdersScreen extends StatefulWidget {
  @override
  _RejectedOrdersScreenState createState() => _RejectedOrdersScreenState();
}

class _RejectedOrdersScreenState extends State<RejectedOrdersScreen> with RouteAware {
  var rejectedOrdersController = Get.put(RejectedOrdersController());

  @override
  Widget build(BuildContext context) {
    //loginController.translate();
    return Obx(() => rejectedOrdersController.isLoading.value
        ? const CustomProgressIndicator()
        : SafeArea(
            child: Padding(
              padding: EdgeInsets.only(
                left: SizeConfig.defaultSize * Dimens.size2,
                right: SizeConfig.defaultSize * Dimens.size2,
              ),
              child: Column(
              children: [

                ///-------------------- Action Bar ------------------
                Expanded(
                  flex: 1,
                    child: ActionBar(title: "Rejected Orders")),



                ///-------------------- Pack Orders Listview -----------
                Expanded(
                  flex: 9,
                  child: rejectedOrdersController.allRejectedOrderLength.value != 0
                      ? ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount:rejectedOrdersController.allRejectedPickupOrders.length,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var item = rejectedOrdersController.allRejectedPickupOrders[index];
                      return  RejectedOrdersCardView(
                        id: item.id,
                        orderId: item.orderId,
                        checkedAt: item.checkedAt,
                      );
                    },
                  ):Center(
                    child: Text("No Item Found", style: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2),
                    ),
                ))],
          ),
            )));
  }
}
