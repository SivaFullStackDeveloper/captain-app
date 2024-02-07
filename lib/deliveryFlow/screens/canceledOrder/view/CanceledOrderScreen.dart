import 'package:captain_app/constants/ConstantString.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../../../commonWidgets/ActionBar.dart';
import '../controller/CanceledOrderController.dart';
import '../widget/CanceledOrderCardView.dart';

class CanceledOrderScreen extends StatefulWidget {
  const CanceledOrderScreen({Key? key}) : super(key: key);

  @override
  _CanceledOrderScreenState createState() => _CanceledOrderScreenState();
}

class _CanceledOrderScreenState extends State<CanceledOrderScreen> with RouteAware {
  var canceledOrderController = Get.put(CanceledOrderController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => canceledOrderController.isLoading.value
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
                    child: ActionBar(title: ConstantString.canceledOrders.tr)),



                ///-------------------- cancel Orders Listview -----------
                Expanded(
                  flex: 9,
                  child: canceledOrderController.allOrdersLength.value != 0
                      ? ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount:canceledOrderController.allOrders.length,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var item = canceledOrderController.allOrders[index];
                      return  CanceledOrderCardView(
                        id: item.id,
                        orderId: item.orderId,
                        cancelledAt: item.cancelledAt,
                      );
                    },
                  ): Center(
                      child: Text(ConstantString.noPackageFound.tr,style: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2),)),
                )],
          ),
            )));
  }
}
