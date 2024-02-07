// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:captain_app/verifierFlow/screens/confirmation/ConfirmationScreenScaffold.dart';
import 'package:captain_app/verifierFlow/screens/finalResults/FinalResultsScaffold.dart';
import 'package:captain_app/verifierFlow/screens/sealTheItems/SealTheItemScreenScaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../commonWidgets/VerifierCustomAppBar.dart';
import '../../../../commonWidgets/VerifierCustomTextFormFeild.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../shallProceed/ShallProceedScreenScaffold.dart';
import '../controller/MeltController.dart';

class VerifyItemScreen2 extends StatefulWidget {
  const VerifyItemScreen2({super.key});

  @override
  State<VerifyItemScreen2> createState() => _VerifyItemScreen2State();
}

class _VerifyItemScreen2State extends State<VerifyItemScreen2> {
  var meltGoldController = Get.put(MeltController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
///------------------------------------- App Bar widget ------------------------------------------------------
                VerifierCustomAppBar(title: "Melt"),
///------------------------------------- enter Net Weight text Form Field widget ------------------------------------------------------
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.sizePoint8,
                    right: SizeConfig.defaultSize * Dimens.size1Point8,
                    left: SizeConfig.defaultSize * Dimens.size1Point8,
                  ),
                  child: VerifierCustomTextFormFeild3(
                    controller: meltGoldController.netWeight,
                    labeltext: ConstantString.netWeight.toUpperCase(),
                    hintText: ConstantString.enterNetWeight,
                    sufixText: ConstantString.gram.toUpperCase(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.sizePoint8,
                    right: SizeConfig.defaultSize * Dimens.size1Point8,
                    left: SizeConfig.defaultSize * Dimens.size1Point8,
                  ),
                  child: VerifierCustomTextFormFeild3(
                    controller: meltGoldController.purity,
                    labeltext: ConstantString.purity.toUpperCase(),
                    hintText: ConstantString.enterPurityPercentage,
                    sufixText: ConstantString.percentSymbol,
                  ),
                ),
///------------------------------------------- camera pick 1 widget ---------------------------------------
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.sizePoint8,
                    right: SizeConfig.defaultSize * Dimens.size1Point8,
                    left: SizeConfig.defaultSize * Dimens.size1Point8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          capturePackagePicture(ImageSource.camera);
                        },
                        child: meltGoldController.isImagePickedForPackagePic.value == false ?Container(
                          height: SizeConfig.defaultSize * Dimens.size14,
                          width: SizeConfig.defaultSize * Dimens.size18,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2, color: ConstantColor.greyColor),
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
                              Icon(Icons.camera_alt,color: ConstantColor.greyColor,),
                              Text(
                                ConstantString.takePhotoOfItem,
                                style: TextStyle(
                                  color: ConstantColor.greyColor,
                                  fontFamily: ConstantFonts.poppinsRegular,
                                ),
                              ),
                            ],
                          ),
                        ):getInvoiceImage(),
                      ),

///------------------------------------------- camera pick 2 widget ---------------------------------------
                      InkWell(
                        onTap: () {
                          capturePackagePicture2(ImageSource.camera);
                        },
                        child:  meltGoldController.isImagePickedForPackagePic2.value == false ?Container(
                          height: SizeConfig.defaultSize * Dimens.size14,
                          width: SizeConfig.defaultSize * Dimens.size18,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 2, color: ConstantColor.greyColor),
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
                              Icon(Icons.camera_alt,color: ConstantColor.greyColor,),
                              Text(
                                ConstantString.clickToCapture,
                                style: TextStyle(
                                  color: ConstantColor.greyColor,
                                  fontFamily: ConstantFonts.poppinsRegular,
                                ),
                              ),
                            ],
                          ),
                        ):getInvoiceImage2(),
                      ),
                    ],
                  ),
                ),
///------------------------------------------- continue  button widget ---------------------------------------
                Padding(
                  padding:
                      EdgeInsets.all(SizeConfig.defaultSize * Dimens.size15),
                ),
                Padding(
                  padding:
                      EdgeInsets.all(SizeConfig.defaultSize * Dimens.size1),
                  child: InkWell(
                    onTap: () {
                      meltGoldController.meltGold(
                          meltGoldController.packageFile,
                          meltGoldController.packageFile2,
                       meltGoldController.netWeight.value.text,
                     meltGoldController.purity.value.text,
                      );
                      Get.to(()=>FinalResultsScaffold());

                    },
                    child: Container(
                        height: SizeConfig.defaultSize * Dimens.size5,
                        width: SizeConfig.defaultSize * Dimens.size20,
                        decoration: BoxDecoration(
                            color: ConstantColor.secondaryColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Center(
                          child: Text(
                            ConstantString.continue1.toUpperCase(),
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
      ),
    );
  }
///------------------------------------------- camera 1 image capture function ---------------------------------------
  Future capturePackagePicture(ImageSource source) async {
    final picker = ImagePicker();
    final imageFile = await picker.pickImage(source: source);
    if (mounted) {
      setState(() {
        meltGoldController.packageFile = File(imageFile!.path);
        meltGoldController.isImagePickedForPackagePic.value = true;

      });
    }
  }
  ///------------------------------------------- image after picking widget function ---------------------------------------
  Widget getInvoiceImage(){
    if(meltGoldController.invoiceFile != null){
      return ClipOval(
          child: Image.file(
            meltGoldController.invoiceFile!,
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
                image: FileImage(meltGoldController.packageFile!),
                fit: BoxFit.cover)),
      );
    }
  }
  ///------------------------------------------- camera 2 image capture function ---------------------------------------
  Future capturePackagePicture2(ImageSource source) async {
    final picker2 = ImagePicker();
    final imageFile2 = await picker2.pickImage(source: source);
    if (mounted) {
      setState(() {
        meltGoldController.packageFile2 = File(imageFile2!.path);
        meltGoldController.isImagePickedForPackagePic2.value = true;

      });
    }
  }
  ///------------------------------------------- image after picking widget2 function ---------------------------------------
  Widget getInvoiceImage2(){
    if(meltGoldController.invoiceFile2 != null){
      return ClipOval(
          child: Image.file(
            meltGoldController.invoiceFile2!,
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
                image: FileImage(meltGoldController.packageFile2!),
                fit: BoxFit.cover)),
      );
    }
  }
}
