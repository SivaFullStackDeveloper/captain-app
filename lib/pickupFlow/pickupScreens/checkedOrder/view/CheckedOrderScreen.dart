import 'package:captain_app/constants/ConstantString.dart';
import 'package:captain_app/deliveryFlow/screens/dashboard/widget/NewOrderCardView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../commonWidgets/ActionBar.dart';
import '../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../constants/ConstantAssets.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../controller/CheckedOrderController.dart';
import '../widget/CheckedOrderCardView.dart';

class CheckedOrderScreen extends StatefulWidget {
  @override
  _CheckedOrderScreenState createState() => _CheckedOrderScreenState();
}

class _CheckedOrderScreenState extends State<CheckedOrderScreen> with RouteAware {
  var refundedPickupController = Get.put(CheckedOrderController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => refundedPickupController.isLoading.value
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
                    child: ActionBar(title: "Checked Order")),

                ///--------------------- today drag--------------------
                Padding(
                  padding:  EdgeInsets.only(
                    top:SizeConfig.defaultSize*Dimens.size2,
                    left:SizeConfig.defaultSize*Dimens.size1,
                    right:SizeConfig.defaultSize*Dimens.size2,
                  ),
                  child: Row(
                    children: [
                      Text("Today",style: TextStyle(
                        fontFamily: ConstantFonts.poppinsMedium,
                        fontSize: SizeConfig.defaultSize * Dimens.size2Point1,
                        color: ConstantColor.blackColor,
                      )),
                      SvgPicture.asset(
                          ConstantAssets.downArrow,
                          height: SizeConfig.defaultSize * Dimens.size3,
                          width: SizeConfig.defaultSize * Dimens.size3,
                          fit: BoxFit.scaleDown
                      ),
                    ],
                  ),
                ),
                ///-------------------- Pack Orders Listview -----------
                Expanded(
                  flex: 9,
                  child:  refundedPickupController.allPickupOrderLength.value != 0
                      ? ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount:refundedPickupController.allPickupOrders.length,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var item = refundedPickupController.allPickupOrders[index];
                      return   CheckedOrderCardView(
                        id: item.id,
                        orderId: item.orderId,
                        checkedAt: item.checkedAt,
                      );
                    },
                  ):Center(
                    child: Text(ConstantString.noItemFound.tr, style: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2),
                    ),
                ))],
          ),
            )));
  }
}
