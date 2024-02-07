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
import '../../../../../../../commonWidgets/ImageSectionWithTitle.dart';
import '../../../../../../../commonWidgets/RoundedEdittextField.dart';
import '../../../../../../../constants/ConstantString.dart';
import '../child/sealedBagSuccessfully/SealedBagSuccessfullyScaffold.dart';
import '../controller/TobeDeliveredDetailController.dart';

class ToBeDeliveredDetailScreen extends StatefulWidget {
  @override
  _ToBeDeliveredDetailScreenState createState() => _ToBeDeliveredDetailScreenState();
}

class _ToBeDeliveredDetailScreenState extends State<ToBeDeliveredDetailScreen> with RouteAware {
  var tobeDeliveredDetailController = Get.put(TobeDeliveredDetailController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(
            left: SizeConfig.defaultSize * Dimens.size2,
            right: SizeConfig.defaultSize * Dimens.size2,
          ),
          child: Column(children: [

            ///------------------- Action Bar ---------------------
            ActionBar(title:"Order #BKS0005455656",),


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
                                          "Scan QR on the seal bag".tr,
                                          style: TextStyle(
                                              height: 2,
                                              fontFamily: ConstantFonts.poppinsMedium,
                                              fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                                              color: ConstantColor.secondaryColor,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ),


                                      Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize * Dimens.size2,
                                          ),
                                          child: SvgPicture.asset(ConstantAssets.qrCodeScan)),



                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: SizeConfig.defaultSize * Dimens.size8,
                                        ),
                                        ///--------------- Enter amount in need text --------------
                                        child: Text(
                                          "Take photo of gold on weight scale".tr,
                                          style: TextStyle(
                                              height: 2,
                                              fontFamily: ConstantFonts.poppinsMedium,
                                              fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                                              color: ConstantColor.secondaryColor,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: SizeConfig.defaultSize * Dimens.size1Point5,
                                        ),
                                        child: Container(
                                          width: SizeConfig.screenWidth,
                                          height: SizeConfig.defaultSize * Dimens.size12,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(SizeConfig.defaultSize * Dimens.size1Point3,),
                                              color: ConstantColor.miniDarkYellowColor),
                                          child: InkWell(
                                            onTap: ()=> {
                                              //CustomObject.videoThumbnailForScreen = "CheckItemScreen",
                                              //Get.to(() =>CameraPage())
                                            },
                                            child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  ///---------------- Camera Icon ---------------------
                                                  Container(
                                                    decoration: BoxDecoration(shape: BoxShape.circle, color: ConstantColor.miniDarkYellowColor),
                                                    child: Icon(
                                                      Icons.camera_alt,
                                                      size: SizeConfig.defaultSize * Dimens.size2Point5,
                                                      color: ConstantColor.secondaryColor,
                                                    ),
                                                  ),

                                                  Text(
                                                    "Click to capture".tr,
                                                    style: TextStyle(
                                                      fontFamily: ConstantFonts.poppinsRegular,
                                                      fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                                                      color: ConstantColor.secondaryColor,
                                                    ),
                                                  ),
                                                ]),
                                          ),
                                        ),
                                      ),




                                      ///--------------- Edittext ----------------
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize * Dimens.size2,
                                        ),
                                        child: RoundedEdittextField(
                                          enabled: true,
                                          controller: tobeDeliveredDetailController.weightController.value,
                                          title: "0",
                                          suffix: ConstantString.gram,
                                          enterHint: "Enter Weight",
                                          onChanged: (value) {
                                          },
                                        ),
                                      ),



                                      /*  Text(
                                        tobeAssignedDetailController.initialTime.toString(),
                                        style: TextStyle(
                                            height: 2,
                                            fontFamily: ConstantFonts.poppinsMedium,
                                            fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                                            color: ConstantColor.secondaryColor,
                                            fontWeight: FontWeight.w900),
                                      ),*/



                                    ],
                                  )
                              ))]
                    ),
                  ),
                ]),


            ///------------------ Order Ready to ship -------------
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.defaultSize * Dimens.size7,
              ),
              child: ButtonWidget(
                  text:  "Ok To place in warehouse".tr,
                  fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                  minWidth: SizeConfig.screenWidth,
                  minHeight: SizeConfig.defaultSize * Dimens.size5,
                  isChecked:true,
                  press: (BuildContext context) => {
                    //reviewOrdersController.uploadInvoiceAndPackageApiFunction(reviewOrdersController.invoiceFile,reviewOrdersController.packageFile),

                     Get.to((()=> const SealedBagSuccessfullyScaffold()))
                  }),
            ),



            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Re - Check ?".tr,
                    style: TextStyle(
                      height: 2,
                      fontFamily: ConstantFonts.poppinsMedium,
                      fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                      color: ConstantColor.secondaryColor,
                    ),
                  ),
                ]),
          ],
          ),
        ),

      ),

    );



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
