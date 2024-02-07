import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../../../commonWidgets/ActionBar.dart';
import '../../../../commonWidgets/CircleContainerWithImage.dart';
import '../../dashboard/controller/DashboardController.dart';
import '../controller/ShipOrderController.dart';
import '../widget/ToBeShippedCardView.dart';

class ToBeShippedScreen extends StatefulWidget {
  const ToBeShippedScreen({super.key});

  @override
  _ToBeShippedScreenState createState() => _ToBeShippedScreenState();
}

class _ToBeShippedScreenState extends State<ToBeShippedScreen> with RouteAware {
  var shipOrderController = Get.put(ShipOrderController());

  @override
  Widget build(BuildContext context) {
    //loginController.translate();
    return Obx(() => shipOrderController.isLoading.value
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
                    child: ActionBar(title: "Ship Orders")),



                ///-------------------- Pack Orders Listview -----------
                Expanded(
                  flex: 9,
                  child: shipOrderController.allOrdersLength.value != 0
                      ? ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: shipOrderController.allOrders.length,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var item = shipOrderController.allOrders[index];
                      return ToBeShippedCardView(
                        id: item.id,
                        orderId: item.orderId,
                        agent: item.agentName,
                      );
                    },
                  ): Center(
                      child: Container(
                        child: Text("No Package Found",style: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2),),
                      )),
                )],
          ),
            )));
  }
}
