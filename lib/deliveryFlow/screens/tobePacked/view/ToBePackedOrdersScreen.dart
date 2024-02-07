import 'package:captain_app/constants/ConstantString.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../constants/ConstantAssets.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../../../commonWidgets/ActionBar.dart';
import '../../dashboard/controller/DashboardController.dart';
import '../widget/CustomTabButtoncontainer.dart';
import '../controller/PackOrdersController.dart';
import '../widget/ToBePackedOrdersCardView.dart';

class ToBePackedOrdersScreen extends StatefulWidget {
  const ToBePackedOrdersScreen({super.key});

  @override
  _ToBePackedOrdersScreenState createState() => _ToBePackedOrdersScreenState();
}

class _ToBePackedOrdersScreenState extends State<ToBePackedOrdersScreen> with RouteAware {
  var packOrdersController = Get.put(ToBePackedOrdersController());
  var dashboardController = Get.put(DashboardController());
  var orders = true;
  var reOrders = false;


  @override
  Widget build(BuildContext context) {
    return Obx(() => dashboardController.isLoading.value
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
                    child: ActionBar(title: ConstantString.packOrders.tr)),


                Row(

                  children: [
                    ///-------------------------------------------- new Tab button widget ---------------------------------
                    InkWell(
                      onTap: (){
                        setState(() {
                          orders = true;
                          reOrders = false;
                        //   settledTab = false;
                        });
                      },
                      child: CustomTabContainerButtonDelivery(
                          isPressed:orders,
                          text:'Order'
                      ),
                    ),
                    ///-------------------------------------------- Assigned button widget ---------------------------------
                    InkWell(
                      onTap: (){
                        // Get.to(()=>ReviewOrdersScreen());
                        setState(() {
                          orders = false;
                          reOrders = true;
                        });
                      },
                      child: CustomTabContainerButtonDelivery(
                          isPressed: reOrders,
                          text:'Re-Order from Returns'
                      ),
                    ),
                  ],
                ),

                ///-------------------------------------------- Filter icon and Today date---------------------------------

                Padding(
                  padding:  EdgeInsets.only(
                    top:SizeConfig.defaultSize*Dimens.size2,
                    left:SizeConfig.defaultSize*Dimens.size2,
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
                  child:   dashboardController.allOrdersLength.value != 0
                      ? ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount:dashboardController.allOrders.length,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var item = dashboardController.allOrders[index];
                      return  ToBePackedOrdersCardView(
                        id: item.id,
                        orderId: item.orderId,
                        title: item.orderId,
                        status: item.status,
                        address: item.address.address,
                        pincode: item.address.pincode,
                      );
                    },
                  ): Center(
                      child: Container(
                        child: Text(ConstantString.noPackageFound.tr,style: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2),),
                      )),
                )],
          ),
            )));
  }
}
