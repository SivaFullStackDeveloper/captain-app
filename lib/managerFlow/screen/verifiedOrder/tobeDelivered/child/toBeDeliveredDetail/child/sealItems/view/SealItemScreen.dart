// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';
import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/verifierFlow/screens/sealTheItems/model/GetSecurityBagsModel.dart';

import 'package:captain_app/commonWidgets/CustomProgressIndicator.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pinput/pinput.dart';
import '../../../../../../../../../../commonWidgets/CameraPage.dart';
import '../../../../../../../../../../commonWidgets/VerifierCustomAppBar.dart';
import '../../../../../../../../../../commonWidgets/VerifierCustomTextFormFeild.dart';
import '../../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../../constants/ConstantString.dart';
import '../../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../../utils/SizeConfig.dart';
import '../../../../../../../../../../utils/commonController/CommonController.dart';
import '../../../../../../../../../utils/customObject/CustomObject.dart';
import '../controller/SealItemController.dart';
import 'package:textfield_search/textfield_search.dart';


class SealItemScreen extends StatefulWidget {
  const SealItemScreen({super.key});

  @override
  State<SealItemScreen> createState() => _SealItemScreenState();
}

class _SealItemScreenState extends State<SealItemScreen> {

  var sealItemController = Get.put(SealItemController());
  var commonController = Get.put(CommonController());
  var imagePicked = false;


  @override
  void initState() {
    super.initState();
    sealItemController.chooseTamperProofTextField.addListener(
        _printLatestValue);
  }

  // @override
  // void dispose() {
  //   // sealItemController.chooseTamperProofTextField.dispose();
  //   super.dispose();
  // }

  _printLatestValue() {
    //toBeShippedOrderDetailController.dropdownValue.value = data!;
    var index = sealItemController.serialNumberList.indexOf(sealItemController.chooseTamperProofTextField.text);
    print("index $index ");
    sealItemController.captainId.value = sealItemController.captainIdList[index];
    print("text field: ${sealItemController.chooseTamperProofTextField.text}");
    print("id ======>>>  "+  sealItemController.captainId.value);
  }

  final List<DropdownMenuItem> items = [];

  @override
  Widget build(BuildContext context) {
    return Obx(() =>
    sealItemController.isLoading.value ?
    CustomProgressIndicator() : SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(
            left: SizeConfig.defaultSize * Dimens.size2,
            right: SizeConfig.defaultSize * Dimens.size2,
          ),
          child: Column(children: [

            ///------------------------- Action Bar --------------------------------
            ActionBar(title: 'Seal The Items',),

            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.defaultSize * Dimens.size2,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                      Radius.circular(SizeConfig.defaultSize * Dimens.size1)),
                  color: ConstantColor.extraLightYellowColor,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size1Point2,
                    left: SizeConfig.defaultSize * Dimens.size1Point2,
                    right: SizeConfig.defaultSize * Dimens.size1Point2,
                  ),
                  child: Column(
                    children: [

                      ///------------------------- Choose tamper proof textfield dropdown --------------------------------

                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeConfig.defaultSize * Dimens.size2,
                          left: SizeConfig.defaultSize * Dimens.size1Point2,
                          right: SizeConfig.defaultSize * Dimens.size1Point2,
                        ),
                        child: TextFieldSearch(
                          decoration: InputDecoration(
                            labelText: 'Choose Tamper Proof',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ConstantColor.secondaryColor),
                            ),
                            labelStyle: TextStyle(
                                color: ConstantColor.secondaryColor),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ConstantColor.greyColor, width: 1),
                              borderRadius: BorderRadius.circular(5.0),

                            ),
                          ),
                          textStyle: TextStyle(
                              color: ConstantColor.secondaryColor),
                          label: 'Choose tamper proof',
                          controller: sealItemController.chooseTamperProofTextField,
                          future: () {
                            return sealItemController.securityBags();
                          },
                        ),
                      ),


                      ///---------------------- Sealing video ------------------------------
                      Padding(
                        padding: EdgeInsets.only(
                            top: SizeConfig.defaultSize * Dimens.size2,
                            left: SizeConfig.defaultSize * Dimens.size1,
                            right: SizeConfig.defaultSize * Dimens.size1),
                        child: InkWell(
                          onTap: () {
                            CustomObject.videoThumbnailForScreen =
                            "CheckingPickupDetailScreen";
                            Get.to(() => const CameraPage());
                          },
                          child: commonController
                              .checkingPickupDetailVideoUpload.value == false ?
                          Container(
                            height: SizeConfig.defaultSize * Dimens.size12,
                            width: SizeConfig.screenWidth,
                            decoration: BoxDecoration(
                              color: ConstantColor.whiteColor,
                              border: Border.all(width: SizeConfig.defaultSize *
                                  Dimens.sizePoint1,
                                  color: ConstantColor.greyColor),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(Dimens.circularRadius)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Upload sealing video',
                                  style: TextStyle(
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point2,
                                    color: ConstantColor.greyColor,
                                    fontFamily: ConstantFonts.poppinsRegular,
                                  ),
                                ),
                                Icon(Icons.camera_alt,
                                  color: ConstantColor.greyColor,),
                                Text(
                                  'Click to Capture',
                                  style: TextStyle(
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point2,
                                    color: ConstantColor.greyColor,
                                    fontFamily: ConstantFonts.poppinsRegular,
                                  ),
                                ),
                              ],
                            ),
                          ) : Image.memory(commonController.uint8list),
                        ),
                      ),

                      ///------------------------- Capture Image --------------------------------
                      imagePicked == false ? Padding(
                        padding: EdgeInsets.only(
                            top: SizeConfig.defaultSize * Dimens.size2,
                            left: SizeConfig.defaultSize * Dimens.size1,
                            right: SizeConfig.defaultSize * Dimens.size1),

                        child: InkWell(
                          onTap: () {
                            captureImage(ImageSource.camera);
                          },
                          child: Container(
                            height: SizeConfig.defaultSize * Dimens.size12,
                            width: SizeConfig.screenWidth,
                            decoration: BoxDecoration(
                              color: ConstantColor.whiteColor,
                              border: Border.all(width: SizeConfig.defaultSize *
                                  Dimens.sizePoint1,
                                  color: ConstantColor.greyColor),
                              borderRadius: BorderRadius.all(
                                  Radius.circular(Dimens.circularRadius)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Take a photo weight scale',
                                  style: TextStyle(
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point2,
                                    color: ConstantColor.greyColor,
                                    fontFamily: ConstantFonts.poppinsRegular,
                                  ),
                                ),
                                Icon(Icons.camera_alt,
                                  color: ConstantColor.greyColor,),
                                Text(
                                  'Click to Capture',
                                  style: TextStyle(
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point2,
                                    color: ConstantColor.greyColor,
                                    fontFamily: ConstantFonts.poppinsRegular,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                      ) : Padding(
                          padding: EdgeInsets.only(
                              top: SizeConfig.defaultSize * Dimens.size2),
                          child: getImage()),

                      ///------------------------- Enter weight of bag textfield --------------------------------
                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeConfig.defaultSize * Dimens.size2,
                          bottom: SizeConfig.defaultSize * Dimens.size3,
                        ),
                        child: VerifierCustomTextFormFeild3(
                          controller: sealItemController.enterWeightOfBagTextField,
                          labeltext: 'Enter Weight Of Bag On Weight Scale',
                          hintText: '',
                          sufixText: 'GRAM',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),


            Padding(
              padding: EdgeInsets.all(SizeConfig.defaultSize * Dimens.size2),
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.defaultSize * Dimens.size1),
              child: InkWell(
                onTap: () {
                  sealItemController.packBoxByManagerFunction();
                  // Get.to(() => PrintQRScaffold());
                },
                child: Container(
                    height: SizeConfig.defaultSize * Dimens.size5,
                    width: SizeConfig.defaultSize * Dimens.size20,
                    decoration: BoxDecoration(
                        color: ConstantColor.secondaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                      child: Text(
                        'Generate QR',
                        style: TextStyle(
                            fontSize: SizeConfig.defaultSize *
                                Dimens.size1Point6,
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
    ));
  }


  Widget getImage() {
    return ClipOval(
        child: Image.file(
          sealItemController.imgFile,
          width: SizeConfig.defaultSize * Dimens.size14,
          height: SizeConfig.defaultSize * Dimens.size14,
          fit: BoxFit.cover,
        ));
  }

  Future captureImage(ImageSource source) async {
    final picker = ImagePicker();
    final imageFile = await picker.pickImage(source: source);
    if (mounted) {
      setState(() {
        sealItemController.imgFile = File(imageFile!.path);
        imagePicked = true;

      });
    }
  }
}
