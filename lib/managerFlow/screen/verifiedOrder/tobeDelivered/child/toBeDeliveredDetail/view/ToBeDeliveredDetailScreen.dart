import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/managerFlow/screen/verifiedOrder/tobeDelivered/child/toBeDeliveredDetail/widget/ToBeDeliveredDetailCardView.dart';
import 'package:captain_app/res/Dimens.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../constants/ConstantString.dart';
import '../../../controller/TobeDeliveredForVerifyController.dart';
import '../../../widget/TobeDeliveredCardView.dart';
import '../child/sealItems/SealItemScreenScaffold.dart';
import '../controller/TobeDeliveredDetailController.dart';

class ToBeDeliveredDetailScreen extends StatefulWidget {
  const ToBeDeliveredDetailScreen({Key? key}) : super(key: key);

  @override
  State<ToBeDeliveredDetailScreen> createState() =>
      _ToBeDeliveredDetailScreenState();
}

class _ToBeDeliveredDetailScreenState extends State<ToBeDeliveredDetailScreen> {
  var tobeDeliveredForVerifierDetailController = Get.put(TobeDeliveredForVerifierDetailController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => tobeDeliveredForVerifierDetailController.isLoading.value
        ? const CustomProgressIndicator()
        : SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: SizeConfig.defaultSize * Dimens.size1Point8,
            right: SizeConfig.defaultSize * Dimens.size1Point8,
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            ///------------------- Action Bar ---------------------
            Flexible(
              flex: 2,
              child: ActionBar(
                title: "Box # ${tobeDeliveredForVerifierDetailController.orderId.value}",
              ),
            ),



            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * Dimens.size2,
                ),
                child: Container(
                  width: SizeConfig.screenWidth,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        SizeConfig.defaultSize * Dimens.size1Point3,
                      ),
                      color: ConstantColor.lightYellowColor),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Box Limit Reached",
                            style: TextStyle(
                              fontFamily: ConstantFonts.poppinsBold,
                              fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                              color: ConstantColor.secondaryColor,
                            )),

                        ///-------------------- Value with right arrow -----------------
                        Padding(
                          padding: EdgeInsets.only(
                            top: SizeConfig.defaultSize * Dimens.size1Point5,
                          ),
                          child: Text(tobeDeliveredForVerifierDetailController.boxWeight.value.toString() + " GRAM" , style: TextStyle(
                            fontFamily: ConstantFonts
                                .poppinsBold,
                            fontSize: SizeConfig
                                .defaultSize *
                                Dimens.size3,
                            color: ConstantColor
                                .blackColor,
                          )),
                        ),


                      ]),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.defaultSize * Dimens.size1Point5,
              ),
              child: Text("Contains Verifier Orders " , style: TextStyle(
                fontFamily: ConstantFonts.poppinsBold,
                fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                color: ConstantColor.blackColor,
              )),
            ),

            Expanded(
                flex: 8,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size1,
                  ),
                  child: tobeDeliveredForVerifierDetailController.allBoxItemListLength.value != 0
                      ? ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: tobeDeliveredForVerifierDetailController.allBoxItemList.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      var item = tobeDeliveredForVerifierDetailController.allBoxItemList[index];

                      return ToBeDeliveredDetailCardView(
                        id: item.id,
                        orderId: item.orderId,
                        verifyDate: item.createdAt,
                        verifyTime: item.createdAt,
                      );
                    },
                  ): Center(
                      child: Text(ConstantString.noItemFound.tr,style: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2),)),
                )
            ),



            ButtonWidget(
                text:  "Start Shipping Process".tr,
                fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                minWidth: SizeConfig.screenWidth,
                minHeight: SizeConfig.defaultSize * Dimens.size5,
                isChecked: true,
                press: (BuildContext context) => {
                  Get.to(()=> const SealItemScreenScaffold(),arguments: [
                    {"id": tobeDeliveredForVerifierDetailController.id.value},
                    {"orderId": tobeDeliveredForVerifierDetailController.orderId.value}
                  ])
                  //cancelOtpVerificationController.handoverToManager()
                  //cancelOtpVerificationController.login(cancelOtpVerificationController.enterMobileNumber.value.text)
                }),

          ]),
        )));
  }
}
