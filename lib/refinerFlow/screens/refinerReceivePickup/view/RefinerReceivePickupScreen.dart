import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../../../../../../../commonWidgets/ActionBar.dart';
import '../controller/RefinerReceivePickupController.dart';
import '../widget/RefinerReceivePickupCardView.dart';

class RefinerReceivePickupScreen extends StatefulWidget {
  @override
  _RefinerReceivePickupScreenState createState() => _RefinerReceivePickupScreenState();
}

class _RefinerReceivePickupScreenState extends State<RefinerReceivePickupScreen> with RouteAware {
  var packOrdersController = Get.put(RefinerReceivePickupController());

  @override
  Widget build(BuildContext context) {
    //loginController.translate();
    return Obx(() => packOrdersController.isLoading.value
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
                    child: ActionBar(title: "Receive Pickups")),



                ///-------------------- Pack Orders Listview -----------
                Expanded(
                  flex: 9,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount:9,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return  const RefinerReceivePickupCardView(
                        title: "Pickup #3214456",
                        date: "Estimated Delivery Date: 14-02-2022",
                        time: "Estimated Delivery Time: 9:00",
                      );
                    },
                  ),
                )],
          ),
            )));
  }
}
