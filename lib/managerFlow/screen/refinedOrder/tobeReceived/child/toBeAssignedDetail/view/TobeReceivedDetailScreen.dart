import 'package:captain_app/managerFlow/screen/pickupOrder/tobeRefunded/child/widget/TobeRefundedDetailCardView.dart';
import 'package:captain_app/utils/commonController/CommonController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../../../../commonWidgets/AgentDetailWidget.dart';
import '../../../../../../../commonWidgets/CameraPage.dart';
import '../../../../../../../commonWidgets/ImageSectionWithTitle.dart';
import '../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../../../../res/Dimens.dart';
import '../../../../../../../utils/SizeConfig.dart';
import '../../../../../../../utils/customObject/CustomObject.dart';
import '../child/tobeReceivedOtpVerification/TobeReceivedOtpVerificationScaffold.dart';


class TobeReceivedDetailScreen extends StatefulWidget {
  const TobeReceivedDetailScreen({Key? key}) : super(key: key);

  @override
  _TobeReceivedDetailScreenState createState() => _TobeReceivedDetailScreenState();
}

class _TobeReceivedDetailScreenState extends State<TobeReceivedDetailScreen> with RouteAware {
  //var canceledOrderDetailController = Get.put(CanceledOrderDetailController());
  //var commonController = Get.put(CommonController());

  @override
  Widget build(BuildContext context) {
    //loginController.translate();
    return SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.defaultSize * Dimens.size2,
              right: SizeConfig.defaultSize * Dimens.size2,
            ),
            child: Column(
              children: [

                ///-------------------- Action Bar ------------------
                ActionBar(title: "Pickup #BKS0034"),





                ///------------------- Agent Details section ------------
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size1,
                  ),
                  child: Container(
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.defaultSize * Dimens.size25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          SizeConfig.defaultSize * Dimens.size1Point3,
                        ),
                        color: ConstantColor.lightYellowColor),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Image.asset(ConstantAssets.pickup),

                          AgentDetailWidget(label: "Agent Name",title: "Arshit R",),
                          AgentDetailWidget(label: "Checked On",title: "19-03-2022",),
                          AgentDetailWidget(label: "HandOver On",title: "20-03-2022",),

                        ]),
                  ),
                ),


                ///------------------ Order Ready to ship -------------
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size3,
                    bottom: SizeConfig.defaultSize * Dimens.size3,

                  ),
                  child: ButtonWidget(
                      text:  "Handover To Delivery Captain".tr,
                      fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                      minWidth: SizeConfig.screenWidth,
                      minHeight: SizeConfig.defaultSize * Dimens.size5,
                      isChecked:true,
                      press: (BuildContext context) => {
                        //reviewOrdersController.uploadInvoiceAndPackageApiFunction(reviewOrdersController.invoiceFile,reviewOrdersController.packageFile),
                       // Get.to(()=>  const InitiatedSuccessfullyScaffold())

                         Get.to((()=> TobeReceivedOtpVerificationScaffold()))
                      }),

                )],
            ),
          ),
        ));
  }
}
