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
import '../../../../../../constants/ConstantString.dart';
import '../../../../deliveryOrders/child/cancelledOrder/child/child/orderCancelledsuccessfully/OrderCancelledSuccessfullyScaffold.dart';
import '../child/RefundInitiatedSuccessfullyScaffold.dart';
import '../controller/TobeRefundedDetailController.dart';


class TobeRefundedDetailScreen extends StatefulWidget {
  const TobeRefundedDetailScreen({Key? key}) : super(key: key);

  @override
  _TobeRefundedDetailScreenState createState() => _TobeRefundedDetailScreenState();
}

class _TobeRefundedDetailScreenState extends State<TobeRefundedDetailScreen> with RouteAware {
  var tobeRefundedDetailController = Get.put(TobeRefundedDetailController());


  @override
  Widget build(BuildContext context) {
    //loginController.translate();
    return Obx(() => tobeRefundedDetailController.isLoading.value
        ? const CustomProgressIndicator()
        : SafeArea(
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
                ActionBar(title: "Pickup # ${tobeRefundedDetailController.orderId.value}"),



                ///------------------- Upload Document section ------------

                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size3,
                  ),
                  child: Container(
                      width: SizeConfig.screenWidth,
                      child: ImageSectionWithTitle(title: "Upload video of opening of package".tr,imgUrl: "",)),
                ),

                ///-------------------- Pack Orders Listview -----------
                Container(
                    child: tobeRefundedDetailController.allToBeReturnedDeliveryLength.value != 0
                        ? ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: tobeRefundedDetailController.allToBeReturnedDeliveryItemsList.length,
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        var item = tobeRefundedDetailController.allToBeReturnedDeliveryItemsList[index];
                        return  TobeRefundedDetailCardView(
                          title: item.title,
                          quantity: item.quantity,
                          image: item.image,
                          status: item.status,
                        );
                      },
                    ): Center(
                        child: Text(ConstantString.noItemFound.tr,
                          style: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2),)),
                ),




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
                          AgentDetailWidget(label: "Agent Name",title: tobeRefundedDetailController.agentName.value,),
                          AgentDetailWidget(label: "Checked On",title: tobeRefundedDetailController.formattedCheckedOn.value,),
                          AgentDetailWidget(label: "HandOver On",title: tobeRefundedDetailController.formattedHandoverOn.value,),

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
                  text:  "Initiate Refund".tr,
                  fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                  minWidth: SizeConfig.screenWidth,
                  minHeight: SizeConfig.defaultSize * Dimens.size5,
                  isChecked:true,
                  press: (BuildContext context) => {

                    print("=========L>><<>><"),

                    tobeRefundedDetailController.completeOrderForRefund()
                  }),

            )],
            ),
          ),
        )));
  }
}
