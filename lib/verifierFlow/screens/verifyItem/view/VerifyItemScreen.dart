// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:io';

import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/constants/ConstantString.dart';
import 'package:captain_app/verifierFlow/screens/confirmation/ConfirmationScreenScaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../commonWidgets/VerifierCustomAppBar.dart';
import '../../../../commonWidgets/VerifierCustomTextFormFeild.dart';
import '../../../../constants/ConstantAssets.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../detail/DetailScreenScaffold.dart';
import '../../verifyItemChild/view/VerifierItemScreen2.dart';
import '../controller/VerifyItemController.dart';

class VerifyItemScreen extends StatefulWidget {
  const VerifyItemScreen({super.key});

  @override
  State<VerifyItemScreen> createState() => _VerifyItemScreenState();
}

class _VerifyItemScreenState extends State<VerifyItemScreen> {
 var verifyItemController =  Get.put(VerifyItemController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.only(
            right: SizeConfig.defaultSize*Dimens.size2,
            left: SizeConfig.defaultSize*Dimens.size2,
          ),
          child: Column(
            children: [
 ///---------------------------------------- App Bar widget -------------------------------------------------
              ActionBar(
                title: ConstantString.verifyItem,
              ),
 ///----------------------------------------  product Text Form Field widget -------------------------------------------------
              VerifierCustomTextFormFeild(
                controller: verifyItemController.productName,
                labeltext: ConstantString.productString,
                hintText: ConstantString.hintProductText,
              ),
///----------------------------------------  gross Weight Text Form Field widget -------------------------------------------------

              VerifierCustomTextFormFeild(
                controller: verifyItemController.grossWeight,
                labeltext: ConstantString.grossWeight.toUpperCase(),
                hintText: ConstantString.grossWeightHintText,
                sufixText: ConstantString.gram1.toUpperCase(),
              ),
///----------------------------------------  purity Text Form Field widget -------------------------------------------------
              VerifierCustomTextFormFeild(
                controller: verifyItemController.purity,
                labeltext: ConstantString.purity.toUpperCase(),
                hintText: ConstantString.purityHintText,
                sufixText: ConstantString.puritySufixText,
              ),
///----------------------------------------  verify item camera widget -------------------------------------------------

              Padding(
                padding: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    capturePackagePicture(ImageSource.camera);
                  },
                  child: verifyItemController.isImagePickedForPackagePic.value == false ?Container(
                    height: SizeConfig.defaultSize * Dimens.size20,
                    width: SizeConfig.defaultSize * Dimens.size40,
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 2, color: ConstantColor.greyColor),
                      borderRadius: BorderRadius.all(
                          Radius.circular(Dimens.circularRadius)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          ConstantString.takePhotoOfItem,
                          style: TextStyle(
                            color: ConstantColor.greyColor,
                            fontFamily: ConstantFonts.poppinsRegular,
                          ),
                        ),
                        SvgPicture.asset(ConstantAssets.camera),
                        Text(
                          ConstantString.clickToCapture,
                          style: TextStyle(
                            color: ConstantColor.greyColor,
                            fontFamily: ConstantFonts.poppinsRegular,
                          ),
                        ),
                      ],
                    ),
                  ):getInvoiceImage(),
                ),
              ),



///----------------------------------------  add Details widget -------------------------------------------------

              Padding(
                padding: EdgeInsets.all(SizeConfig.defaultSize * Dimens.size1),
                child: InkWell(
                  onTap: () {
                    Get.to(() => DetailScreenScaffold());
                  },
                  child: Container(
                    height: SizeConfig.defaultSize * Dimens.size5,
                    width: SizeConfig.defaultSize * Dimens.size20,
                    decoration: BoxDecoration(
                        color: ConstantColor.secondaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: ConstantColor.whiteColor,
                        ),
                        Text(
                          ConstantString.addDetails,
                          style: TextStyle(
                            color: ConstantColor.whiteColor,
                            fontFamily: ConstantFonts.poppinsMedium,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(SizeConfig.defaultSize * Dimens.size6),
              ),
///----------------------------------------  proceed Further button widget -------------------------------------------------

              Padding(
                padding: EdgeInsets.all(SizeConfig.defaultSize * Dimens.size1),
                child: InkWell(
                  onTap: () {
                    verifyItemController.verifyItem(
                      verifyItemController.packageFile,
                      verifyItemController.productName.value.text.toString(),
                      verifyItemController.grossWeight.value.text,
                     verifyItemController.purity.value.text,
                    );

                  },
                  child: Container(
                      height: SizeConfig.defaultSize * Dimens.size5,
                      width: SizeConfig.defaultSize * Dimens.size20,
                      decoration: BoxDecoration(
                          color: ConstantColor.secondaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                        child: Text(
                          ConstantString.proceedFurther.toUpperCase(),
                          style: TextStyle(
                              color: ConstantColor.whiteColor,
                              fontFamily: ConstantFonts.poppinsMedium),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
 ///----------------------------------------  capture Picture  function -------------------------------------------------

 Future capturePackagePicture(ImageSource source) async {
   final picker = ImagePicker();
   final imageFile = await picker.pickImage(source: source);
   if (mounted) {
     setState(() {
       verifyItemController.packageFile = File(imageFile!.path);
       verifyItemController.isImagePickedForPackagePic.value = true;

     });
   }
 }
 ///----------------------------------------  image picked function -------------------------------------------------

 Widget getInvoiceImage(){
   if(verifyItemController.invoiceFile != null){
     return ClipOval(
         child: Image.file(
           verifyItemController.invoiceFile!,
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
               image: FileImage(verifyItemController.packageFile!),
               fit: BoxFit.cover)),
     );
   }
 }
}
