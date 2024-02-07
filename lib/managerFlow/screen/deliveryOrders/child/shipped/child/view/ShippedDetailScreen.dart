import 'package:captain_app/constants/ConstantString.dart';
import 'package:captain_app/deliveryFlow/screens/canceledOrder/child/canceledOrderDetail/child/cancelOrderSuccessfully/CancelOrderSuccessfullyScaffold.dart';
import 'package:captain_app/deliveryFlow/screens/canceledOrder/child/canceledOrderDetail/child/cancelOtpVerification/CancelOtpVerificationScaffold.dart';
import 'package:captain_app/managerFlow/screen/deliveryOrders/child/shipped/child/widget/ShippedDetailCardView.dart';
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
import '../../controller/ShippedController.dart';
import '../controller/ShippedDetailController.dart';


class ShippedDetailScreen extends StatefulWidget {
  const ShippedDetailScreen({Key? key}) : super(key: key);

  @override
  _ShippedDetailScreenState createState() => _ShippedDetailScreenState();
}

class _ShippedDetailScreenState extends State<ShippedDetailScreen> with RouteAware {
  var shippedDetailController = Get.put(ShippedDetailController());

  @override
  Widget build(BuildContext context) {
    return  Obx(() => shippedDetailController.isLoading.value
        ? const CustomProgressIndicator()
        :  SafeArea(
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
                ActionBar(title: "Order # ${shippedDetailController.orderId}"),


                ///-------------------- Pack Orders Listview -----------
                Container(
                  child: shippedDetailController.allDeliveryItemsListLength.value != 0
                      ?   ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: shippedDetailController.allDeliveryItemsList.length,
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var item = shippedDetailController.allDeliveryItemsList[index];
                      return  ShippedDetailCardView(
                        title: item.title,
                        quantity: item.quantity,
                        image: item.image,
                      );
                    },
                  )
                : Center(
          child: Text(ConstantString.noItemFound.tr,style: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2),)),
    ),


                ///------------------- Upload Document section ------------

                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size3,
                  ),
                  child: Row(
                    children: [

                      ///-------------------- Photo of invoice text  ----------------
                      Expanded(
                        flex: 5,
                        child: ImageSectionWithTitle(title: ConstantString.photoOfInvoice.tr,imgUrl: shippedDetailController.invoiceImg.value),
                      ),
                      SizedBox(
                        width: SizeConfig.defaultSize * Dimens.size1,
                      ),
                      ///-------------------- Package Photo text  ----------------
                      Expanded(
                        flex: 5,
                        child: ImageSectionWithTitle(title: ConstantString.packagePhoto.tr,imgUrl: shippedDetailController.packageImg.value,),
                      ),
                    ],
                  ),
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
                          AgentDetailWidget(label: "Agent Name",title: shippedDetailController.agentName.value,),
                          AgentDetailWidget(label: "Docket Number",title: shippedDetailController.docketNumber.value,),
                          AgentDetailWidget(label: "BRN Number",title: shippedDetailController.brnNumber.value,),
                          AgentDetailWidget(label: "Estimated Date",title: shippedDetailController.formattedEstimatedDeliveryDate.value,),
                          AgentDetailWidget(label: "Estimated Time",title: shippedDetailController.formattedEstimatedDeliveryTime.value,),

                        ]),
                  ),
                ),

                ///------------------- Upload Document section ------------

                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size3,
                  ),
                  child: Row(
                    children: [

                      ///-------------------- Photo of invoice text  ----------------
                      Expanded(
                        flex: 5,
                        child: ImageSectionWithTitle(title: "Signature Of Agent",imgUrl: shippedDetailController.signatureOfAgentImg.value),
                      ),
                      SizedBox(
                        width: SizeConfig.defaultSize * Dimens.size1,
                      ),
                      ///-------------------- Package Photo text  ----------------
                      Expanded(
                        flex: 5,
                        child: ImageSectionWithTitle(title: "ID Of Agent".tr,imgUrl: shippedDetailController.idOfAgentImg.value),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        )));
  }
}
