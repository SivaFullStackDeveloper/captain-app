
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';


import '../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../constants/ConstantAssets.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../../../../../../../commonWidgets/ActionBar.dart';
import '../controller/ToBeCheckedController.dart';
import '../widget/ToBeCheckedCardView.dart';

class ToBeCheckedScreen extends StatefulWidget {
  @override
  _ToBeCheckedScreenState createState() => _ToBeCheckedScreenState();
}

class _ToBeCheckedScreenState extends State<ToBeCheckedScreen> with RouteAware {
  var toBeCheckedController = Get.put(ToBeCheckedController());

  @override
  Widget build(BuildContext context) {
    //loginController.translate();
    return Obx(() => toBeCheckedController.isLoading.value
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
                    child: ActionBar(title: "To Be Checked")),
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
                  child: toBeCheckedController.allOrdersLength.value != 0
                      ? ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount:toBeCheckedController.allOrders.length,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var item = toBeCheckedController.allOrders[index];
                      return   ToBeCheckedCardView(
                        id: item.id,
                        orderId: item.orderId,
                        date: item.estimatedDeliveryDate,
                        time: item.estimatedDeliveryDate,
                      );
                    },
                  ): Center(
                      child: Text("No Pickup Item Found",style: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2),)),
                )

              ],
          ),
            )));
  }
}
