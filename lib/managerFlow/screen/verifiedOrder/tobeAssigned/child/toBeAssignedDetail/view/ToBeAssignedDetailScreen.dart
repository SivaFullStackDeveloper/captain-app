import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../../../commonWidgets/TaskIndicator.dart';
import '../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../../../../commonWidgets/MySeparator.dart';
import '../../../../../../../res/Dimens.dart';
import '../../../../../../../utils/SizeConfig.dart';
import '../child/toBeAssignedOtpVerification/ToBeAssignedOtpVerificationScaffold.dart';
import '../child/toBeAssignedSuccessfully/ToBeAssignedSuccessfullyScaffold.dart';
import '../controller/ToBeAssignedDetailController.dart';
import '../widget/ToBeAssignedDetailCardView.dart';

class ToBeAssignedDetailScreen extends StatefulWidget {
  @override
  _ToBeAssignedDetailScreenState createState() => _ToBeAssignedDetailScreenState();
}

class _ToBeAssignedDetailScreenState extends State<ToBeAssignedDetailScreen> with RouteAware {
  var tobeAssignedDetailController = Get.put(ToBeAssignedDetailController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => tobeAssignedDetailController.isLoading.value
        ? const CustomProgressIndicator()
        :  SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(
            left: SizeConfig.defaultSize * Dimens.size2,
            right: SizeConfig.defaultSize * Dimens.size2,
          ),
          child: Column(children: [

            ///------------------- Action Bar ---------------------
            ActionBar(title:"Order ${tobeAssignedDetailController.orderId.value}"),


            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: SizeConfig.defaultSize * Dimens.size2,
                    ),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: SizeConfig.defaultSize * Dimens.size2,
                              ),
                              child: Column(children: [
                                Container(
                                  width: SizeConfig.defaultSize * Dimens.size6,
                                  height: SizeConfig.defaultSize * Dimens.size6,
                                  alignment: Alignment.center,

                                  ///-------------------- Icons inside circle -----------------
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: ConstantColor.greyColor,
                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(SizeConfig.defaultSize * Dimens.size6))
                                  ),

                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                        fontFamily: ConstantFonts.poppinsMedium,
                                        fontSize: SizeConfig.defaultSize * Dimens.size2Point5,
                                        color: ConstantColor.secondaryColor,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ),

                                ///------------------- Dash draw --------------------
                                TaskIndicator(taskNumber: "2",dashWidth: SizeConfig.defaultSize * Dimens.size15),

                                ///------------------- Dash draw --------------------
                                TaskIndicator(taskNumber: "3",dashWidth: SizeConfig.defaultSize * Dimens.size10),


                              ]),
                            ),
                          ),


                          ///----------------- All right side items ---------------
                          Expanded(
                              flex: 9,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                    left: SizeConfig.defaultSize * Dimens.size1,
                                    right: SizeConfig.defaultSize * Dimens.size2,
                                    top: SizeConfig.defaultSize * Dimens.size1,

                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [



                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: SizeConfig.defaultSize * Dimens.size2,
                                        ),
                                        ///--------------- Enter amount in need text --------------
                                        child: Text(
                                          "Check items inside box".tr,
                                          style: TextStyle(
                                              height: 2,
                                              fontFamily: ConstantFonts.poppinsMedium,
                                              fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                                              color: ConstantColor.secondaryColor,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ),


                                      InkWell(
                                        onTap: ()=> {
                                          tobeAssignedDetailController.selectDate(context)
                                        },
                                        child: SizedBox(
                                            height: SizeConfig.defaultSize * Dimens.size16,
                                            child: Text(
                                              tobeAssignedDetailController.formattedDate.value == ""?
                                              "Choose Date":tobeAssignedDetailController.formattedDate.value.toString(),
                                          style: TextStyle(
                                              height: 2,
                                              fontFamily: ConstantFonts.poppinsMedium,
                                              fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                                              color: ConstantColor.blackColor,
                                              fontWeight: FontWeight.w900),
                                        ),
                                        ),
                                      ),




                                      Text(
                                        "Select Appointment Time".tr,
                                        style: TextStyle(
                                            height: 2,
                                            fontFamily: ConstantFonts.poppinsMedium,
                                            fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                                            color: ConstantColor.secondaryColor,
                                            fontWeight: FontWeight.w900),
                                      ),


                                      InkWell(
                                        onTap: ()=> {
                                        tobeAssignedDetailController.chooseTime(context),
                                        },
                                        child: Text(
                                          tobeAssignedDetailController.formattedTimeOfDay.value == ""?"Select Time": tobeAssignedDetailController.formattedTimeOfDay.value,
                                         // tobeAssignedDetailController.initialTime.toString(),
                                          style: TextStyle(
                                              height: 2,
                                              fontFamily: ConstantFonts.poppinsMedium,
                                              fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                                              color: ConstantColor.blackColor,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ),




                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: SizeConfig.defaultSize * Dimens.size9,
                                        ),
                                        child: Text(
                                          "Select Captain for verifying".tr,
                                          style: TextStyle(
                                              height: 2,
                                              fontFamily: ConstantFonts.poppinsMedium,
                                              fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                                              color: ConstantColor.secondaryColor,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ),


                                      ///------------------------- Select Delivery captains dropdown -------------------

                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: SizeConfig.defaultSize * Dimens.size2,
                                        ),
                                        child: Container(
                                          height: SizeConfig.defaultSize * Dimens.size5,
                                          width: SizeConfig.screenWidth,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(SizeConfig.defaultSize * Dimens.size1),
                                              border:
                                              Border.all(color: ConstantColor.secondaryColor)),
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: SizeConfig.defaultSize * Dimens.size1,
                                            ),
                                            child: DropdownButton<String>(
                                              isExpanded: true,
                                              // value: dropDownValue,
                                              hint: Text("Select One".tr),

                                              value: tobeAssignedDetailController.dropdownValue.value.isNotEmpty
                                                  ? tobeAssignedDetailController.dropdownValue.value
                                                  : null,
                                              icon: Icon(Icons.arrow_drop_down),
                                              iconSize: 24,
                                              elevation: 16,
                                              style: TextStyle(
                                                  color: ConstantColor.secondaryColor,
                                                  fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                                                  fontFamily: ConstantFonts.poppinsMedium),
                                              underline: Container(),
                                              onChanged: (String? data) {
                                                tobeAssignedDetailController.dropdownValue.value = data!;
                                                var index = tobeAssignedDetailController.captainNameList.indexOf(data);
                                                tobeAssignedDetailController.captainId.value = tobeAssignedDetailController.captainIdList[index];
                                                },
                                              items: tobeAssignedDetailController.captainNameList.value
                                                  .map<DropdownMenuItem<String>>((String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        ),
                                      ),


                                      ///------------------ Order Ready to ship -------------
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: SizeConfig.defaultSize * Dimens.size7,
                                          bottom: SizeConfig.defaultSize * Dimens.size3,

                                        ),
                                        child: ButtonWidget(
                                            text:  "Handover To Captain".tr,
                                            fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                                            minWidth: SizeConfig.screenWidth,
                                            minHeight: SizeConfig.defaultSize * Dimens.size5,
                                            isChecked:true,
                                            press: (BuildContext context) => {
                                              tobeAssignedDetailController.handoverToVerifierCaptain()
                                            }),
                                      ),
                                    ],
                                  )
                              ))]
                    ),
                  ),
                ]),
          ],
          ),
        ),

        ),

      ));



  }

  ///-------------------------- Invoice image captured ---------------------
  Future captureInvoicePicture(ImageSource source) async {
    final picker = ImagePicker();
    final imageFile = await picker.pickImage(source: source);
    if (mounted) {

     /* setState(() {
        reviewOrdersController.invoiceFile = File(imageFile!.path);
        reviewOrdersController.isImagePickedForPrintedInvoicePic = true;
      });*/

    }
  }

  ///-------------------------- Package image captured ---------------------
  Future capturePackagePicture(ImageSource source) async {
    final picker = ImagePicker();
    final imageFile = await picker.pickImage(source: source);
    if (mounted) {
      /*setState(() {
        reviewOrdersController.packageFile = File(imageFile!.path);
        reviewOrdersController.isImagePickedForPackagePic = true;

      });*/
    }
  }

/*
  Widget getInvoiceImage(){
    if(reviewOrdersController.invoiceFile != null){
      return ClipOval(
          tobeReceived: Image.file(
            reviewOrdersController.invoiceFile,
            width: SizeConfig.defaultSize * Dimens.size12,
            height: SizeConfig.defaultSize * Dimens.size12,
            fit: BoxFit.cover,
          ));
    }else{
      return Container(
        width: SizeConfig.defaultSize * Dimens.size15,
        height: SizeConfig.defaultSize * Dimens.size15,
        decoration: BoxDecoration(
            color: ConstantColor.secondaryColor,
            shape: BoxShape.circle,
            image: DecorationImage(
                image: NetworkImage(reviewOrdersController.printedInvoicePic.value),
                fit: BoxFit.cover)),
      );
    }
  }*/

}
