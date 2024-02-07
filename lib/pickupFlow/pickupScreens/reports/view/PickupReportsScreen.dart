import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/constants/ConstantFonts.dart';
import 'package:captain_app/deliveryFlow/screens/reports/child/reportDetails/ReportsDetailScaffold.dart';
import 'package:captain_app/deliveryFlow/screens/reports/child/reportDetails/controller/ReportsDetailController.dart';
import 'package:captain_app/utils/commonController/CommonController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../commonWidgets/ButtonWidget.dart';
import '../../../../commonWidgets/ReportStageListWidget.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../child/pickupReportDetails/PickupReportsDetailScaffold.dart';
import '../controller/PickupReportsController.dart';

class PickupReportsScreen extends StatefulWidget {
  const PickupReportsScreen({Key? key}) : super(key: key);

  @override
  State<PickupReportsScreen> createState() => _PickupReportsScreenState();
}

class _PickupReportsScreenState extends State<PickupReportsScreen> {
  var isShow = false;
  var pickupReportsController = Get.put(PickupReportsController());
  //var commonController = Get.put(CommonController());


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: SizeConfig.defaultSize * Dimens.size2,
          right: SizeConfig.defaultSize * Dimens.size2,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ActionBar(
              title: ConstantString.generateReports,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.defaultSize * Dimens.size2,
              ),
              child: Row(
                children: [

                  ///----------------------- Today text ----------------------
                  Text(
                    ConstantString.today,
                    style: TextStyle(
                      fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                      fontFamily: ConstantFonts.poppinsMedium,
                      color: ConstantColor.blackColor,
                    ),
                  ),

                  ///----------------------- Down arrow ----------------------
                  Icon(
                    Icons.arrow_drop_down_sharp,
                    color: ConstantColor.blackColor,
                  ),
                ],
              ),
            ),

            ///----------------------- Select stage of delivery text ----------------------
            Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size4,
                    ),
                    child: Text(
                      "Select stage of delivery",
                      style: TextStyle(
                        fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                        fontFamily: ConstantFonts.poppinsRegular,
                        color: ConstantColor.secondaryColor,
                      ),
                    ),
                  ),


                  ///--------------------- Stage listview ------------------
                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size1,
                    ),
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              SizeConfig.defaultSize * Dimens.size1Point3,
                            ),
                            color: ConstantColor.miniDarkYellowColor),
                        child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: pickupReportsController.reportItem.length,
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            var item = pickupReportsController.reportItem[index];
                            // var item = reviewOrdersController.allItems[index];
                            return ReportStageListWidget(
                              index: index,
                              title: item,
                            );
                          },
                        )
                    ),



                  ),
                ],
              ),
            ),




            ///------------------ Order Ready to ship button -------------
            Expanded(
              flex: 2,
              child: Column(
                children: [

                  ///----------------------- Today text ----------------------
                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size4,
                    ),
                    child: Text(
                      "Filtered Orders: 548",
                      style: TextStyle(
                        fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                        fontFamily: ConstantFonts.poppinsMedium,
                        color: ConstantColor.blackColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size2,

                    ),

                    child: ButtonWidget(
                        text:  "Show Results".tr,
                        fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                        minWidth: SizeConfig.screenWidth,
                        minHeight: SizeConfig.defaultSize * Dimens.size5,
                        isChecked:true ,
                        press: (BuildContext context) => {
                         // reviewOrdersController.uploadInvoiceAndPackageApiFunction(reviewOrdersController.invoiceFile,reviewOrdersController.packageFile),
                          Get.to(()=>PickupReportsDetailScaffold())
                        }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
