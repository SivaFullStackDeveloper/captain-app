// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';
import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/constants/ConstantAssets.dart';
import 'package:captain_app/verifierFlow/screens/sealTheItems/model/GetSecurityBagsModel.dart';
import 'package:captain_app/commonWidgets/CustomProgressIndicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import '../../../../../../../../../../commonWidgets/CameraPage.dart';
import '../../../../../../../../../../commonWidgets/VerifierCustomAppBar.dart';
import '../../../../../../../../../../commonWidgets/VerifierCustomTextFormFeild.dart';
import '../../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../../constants/ConstantFonts.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../../utils/SizeConfig.dart';
import '../../../../../../../../../../utils/commonController/CommonController.dart';
import '../../../../../../../../../utils/customObject/CustomObject.dart';
import 'package:textfield_search/textfield_search.dart';

import '../../uploadGold/controller/UploadGoldController.dart';
import '../controller/SealTheItemController.dart';


class SealTheItemScreen extends StatefulWidget {
  const SealTheItemScreen({super.key});

  @override
  State<SealTheItemScreen> createState() => _SealTheItemScreenState();
}

class _SealTheItemScreenState extends State<SealTheItemScreen> {

  var sealItemController = Get.put(SealTheItemController());
  var commonController = Get.put(CommonController());
  var imagePicked = false;
  var uploadGoldController = Get.put(UploadGoldController());
  TextEditingController chooseTamperProofTextField  = TextEditingController();
  final List<DropdownMenuItem> items = [];


  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
  chooseTamperProofTextField.dispose();
    super.dispose();
  }


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
            ///------------------------- dropdown widget column --------------------------------
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
                        padding:  EdgeInsets.only(
                          top: SizeConfig.defaultSize*Dimens.size2,
                        ),
                        child: Column(
                          children: [
                            Text('Scan The Seal Bag ',
                              style: TextStyle(
                                color: ConstantColor.secondaryColor,
                                fontSize: SizeConfig.defaultSize*Dimens.size2,
                                fontFamily: ConstantFonts.poppinsBold,

                              ),
                            ),
          ///----------------------------------------- qr code scan  widget column --------------------------------
                            Padding(
                              padding:  EdgeInsets.only(
                                top:SizeConfig.defaultSize*Dimens.size2,
                              ),
                              child: InkWell(
                                onTap: ()=>barcodeScan(),
                                child: SvgPicture.asset(ConstantAssets.qrCodeScan),
                              ),
                            ),
                          ],
                        ),
                      ),
       ///----------------------------------------- Choose Tamper Proof text field widget column --------------------------------
                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeConfig.defaultSize * Dimens.size2,
                          left: SizeConfig.defaultSize * Dimens.size1Point2,
                          right: SizeConfig.defaultSize * Dimens.size1Point2,
                        ),
                        child: TextFieldSearch(
                          initialList: sealItemController.serialNumberList,
                          decoration: InputDecoration(
                            labelText: ConstantString.chooseTamperProof,
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
                          label: ConstantString.chooseTamperProof,
                          controller: chooseTamperProofTextField,
                          //future: ()=>sealItemController.securityBags(),

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
                            captureAgentImage(ImageSource.camera);
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
                          child: getAgentImage()),

                      ///------------------------- Enter weight of bag text field --------------------------------
                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeConfig.defaultSize * Dimens.size2,
                          bottom: SizeConfig.defaultSize * Dimens.size3,
                        ),
                        child: VerifierCustomTextFormFeild3(
                          controller: sealItemController.enterWeightOfBagTextField,
                          labeltext: ConstantString.enterWeightOfBagOnWeightScale,
                          hintText: '',
                          sufixText: ConstantString.gram.toUpperCase(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ///------------------------- ITEMS PICKED button widget --------------------------------
            Padding(
              padding: EdgeInsets.all(SizeConfig.defaultSize * Dimens.size2),
            ),
            Padding(
              padding: EdgeInsets.all(SizeConfig.defaultSize * Dimens.size1),
              child: InkWell(
                onTap: () {
                  sealItemController.pickedItems(
                      sealItemController.agentImgFile,
                      commonController.uint8list,
                      uploadGoldController.otp.value,
                      chooseTamperProofTextField.text,
                    sealItemController.enterWeightOfBagTextField.value.toString(),

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
                        ConstantString.itemsPicked,
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

  ///------------------------- image picking  function --------------------------------
  Widget getAgentImage() {
    return ClipOval(
        child: Image.file(
          sealItemController.agentImgFile,
          width: SizeConfig.defaultSize * Dimens.size14,
          height: SizeConfig.defaultSize * Dimens.size14,
          fit: BoxFit.cover,
        ));
  }
  ///------------------------- image capture  function --------------------------------
  Future captureAgentImage(ImageSource source) async {
    final picker = ImagePicker();
    final imageFile = await picker.pickImage(source: source);
    if (mounted) {
      setState(() {
        sealItemController.agentImgFile = File(imageFile!.path);
        imagePicked = true;

      });
    }
  }

  String _scanBarcode = 'Unknown';
  ///------------------------- start Barcode Scan stream  function --------------------------------
  Future<void> startBarcodeScanStream() async {
    FlutterBarcodeScanner.getBarcodeStreamReceiver(
        '#ff6666', 'Cancel', true, ScanMode.BARCODE)!
        .listen((barcode) {
      setState(() {
        _scanBarcode = _scanBarcode;
      });
    });
  }
  ///------------------------- Barcode Scan   function --------------------------------
  Future<void> barcodeScan() async {
    String barcodeScanRes;
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
    if (!mounted) return;
    setState(() {
      _scanBarcode = _scanBarcode;
      _scanBarcode = barcodeScanRes;
    });
  }
}