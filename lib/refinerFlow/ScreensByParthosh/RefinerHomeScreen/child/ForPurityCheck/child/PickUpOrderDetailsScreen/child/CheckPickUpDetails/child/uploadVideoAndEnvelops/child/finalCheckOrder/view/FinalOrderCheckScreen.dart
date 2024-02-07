import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../../../../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../../../../../../../../commonWidgets/TaskIndicator.dart';
import '../../../../../../../../../../../../../../commonWidgets/VerifierCustomTextFormFeild.dart';
import '../../../../../../../../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../../../../../../utils/SizeConfig.dart';
import '../../finalOrderResult/FinalOrderResultScaffold.dart';



class FinalOrderCheckScreen extends StatefulWidget {
  const FinalOrderCheckScreen({Key? key}) : super(key: key);

  @override
  State<FinalOrderCheckScreen> createState() => _FinalOrderCheckScreenState();
}

class _FinalOrderCheckScreenState extends State<FinalOrderCheckScreen> {
  @override
  Widget build(BuildContext context) {
    return

      // Obx(() => reviewOrdersController.isLoading.value
      //   ? const CustomProgressIndicator()
      //   :

      SafeArea(
          child:  Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.defaultSize * Dimens.size2,
              right: SizeConfig.defaultSize * Dimens.size2,
            ),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(children: [

                ///------------------- Action Bar ---------------------
                ActionBar(title: 'FINAL CHECKING',),
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size2,
                  ),
                  ///--------------- Enter amount in need text --------------
                  child: Text(
                    "Follow The Steps For Checking Each Pack".tr,
                    style: TextStyle(
                        height: 2,
                        fontFamily: ConstantFonts.poppinsMedium,
                        fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                        color: ConstantColor.secondaryColor,
                        fontWeight: FontWeight.w900),
                  ),
                ),
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
                                    top: SizeConfig.defaultSize * Dimens.size1,
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



                                    /*  for ( var i in text )  TaskIndicator(taskNumber: "2",dashWidth: SizeConfig.defaultSize * Dimens.size20,),*/

                                    ///------------------- Dash draw --------------------
                                    TaskIndicator(taskNumber: "2",dashWidth: SizeConfig.defaultSize * Dimens.size12,),



                                    ///------------------- Dash draw --------------------
                                    TaskIndicator(taskNumber: "3",dashWidth: SizeConfig.defaultSize * Dimens.size15,),


                                    ///------------------- Dash draw --------------------
                                    TaskIndicator(taskNumber: "4",dashWidth: SizeConfig.defaultSize * Dimens.size12,),

                                    TaskIndicator(taskNumber: "5",dashWidth: SizeConfig.defaultSize * Dimens.size12,),

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




                                          ///---------------- Take photo of printed invoice in box text ---------------------
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 0,

                                            ),
                                            child: Text(
                                              "Scan QR On the Seal Bag".tr,
                                              style: TextStyle(
                                                  fontFamily: ConstantFonts.poppinsMedium,
                                                  fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                                                  color: ConstantColor.secondaryColor,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ),

                                          ///---------------- Camera Icon & show capture image ---------------------
                                          InkWell(
                                              onTap: ()=> {
                                                captureInvoicePicture(ImageSource.camera)
                                              },
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  top: SizeConfig.defaultSize * Dimens.size1,
                                                ),
                                                child: SvgPicture.asset(ConstantAssets.qrCodeScan),
                                              )


                                          ),



                                          ///---------------- Take photo of the package text ---------------------
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: SizeConfig.defaultSize * Dimens.size4,

                                            ),
                                            child: Text(
                                              "Upload the video of Opening pack".tr,
                                              style: TextStyle(
                                                  fontFamily: ConstantFonts.poppinsMedium,
                                                  fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                                                  color: ConstantColor.secondaryColor,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ),

                                          ///---------------- Camera Icon & show capture image ---------------------
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: SizeConfig.defaultSize * Dimens.size1,
                                            ),
                                            child:InkWell(
                                              onTap: ()=> {
                                                captureInvoicePicture(ImageSource.camera)
                                              },
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  top: SizeConfig.defaultSize * Dimens.size1,
                                                ),
                                                child: Container(
                                                    child:

                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        top: SizeConfig.defaultSize * Dimens.size1,
                                                      ),
                                                      child: Container(
                                                        width: SizeConfig.defaultSize * Dimens.size30,
                                                        height: SizeConfig.defaultSize * Dimens.size10,
                                                        decoration:  BoxDecoration(
                                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                                            color: ConstantColor.miniDarkYellowColor),
                                                        child: Column(
                                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                          children: [

                                                            Icon(Icons.camera_alt, size: SizeConfig.defaultSize * Dimens.size2Point5,color: ConstantColor.secondaryColor,),
                                                            Text('click to capture',style: TextStyle(
                                                              fontSize: SizeConfig.defaultSize*Dimens.size1Point8,
                                                              color: ConstantColor.secondaryColor,
                                                            ),)
                                                          ],
                                                        ),
                                                      ),
                                                    )


                                                ),
                                              ),
                                            ),
                                          ),

                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: SizeConfig.defaultSize * Dimens.size4,

                                            ),
                                            child: Text(
                                              "Take photo of gold on Weight scale".tr,
                                              style: TextStyle(
                                                  fontFamily: ConstantFonts.poppinsMedium,
                                                  fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                                                  color: ConstantColor.secondaryColor,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ),

                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: SizeConfig.defaultSize * Dimens.size1,
                                            ),
                                            child:InkWell(
                                              onTap: ()=> {
                                                captureInvoicePicture(ImageSource.camera)
                                              },
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  top: SizeConfig.defaultSize * Dimens.size1,
                                                ),
                                                child: Container(
                                                    child:

                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        top: SizeConfig.defaultSize * Dimens.size1,
                                                      ),
                                                      child: Container(
                                                        width: SizeConfig.defaultSize * Dimens.size30,
                                                        height: SizeConfig.defaultSize * Dimens.size10,
                                                        decoration:  BoxDecoration(
                                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                                            color: ConstantColor.miniDarkYellowColor),
                                                        child: Column(
                                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                          children: [

                                                            Icon(Icons.camera_alt, size: SizeConfig.defaultSize * Dimens.size2Point5,color: ConstantColor.secondaryColor,),
                                                            Text('click to capture',style: TextStyle(
                                                              fontSize: SizeConfig.defaultSize*Dimens.size1Point6,
                                                              color: ConstantColor.secondaryColor,
                                                            ),)
                                                          ],
                                                        ),
                                                      ),
                                                    )


                                                ),
                                              ),
                                            ),
                                          ),

                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: SizeConfig.defaultSize * Dimens.size2,

                                            ),
                                            child: Text(
                                              "Upload Video of Purity Checking".tr,
                                              style: TextStyle(
                                                  fontFamily: ConstantFonts.poppinsMedium,
                                                  fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                                                  color: ConstantColor.secondaryColor,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: SizeConfig.defaultSize * Dimens.size1,
                                            ),
                                            child:InkWell(
                                              onTap: ()=> {
                                                captureInvoicePicture(ImageSource.camera)
                                              },
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  top: SizeConfig.defaultSize * Dimens.size1,
                                                ),
                                                child: Container(
                                                  child:

                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: SizeConfig.defaultSize * Dimens.size1,
                                                    ),
                                                    child: Container(
                                                      width: SizeConfig.defaultSize * Dimens.size30,
                                                      height: SizeConfig.defaultSize * Dimens.size12,
                                                      decoration:  BoxDecoration(
                                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                                          color: ConstantColor.miniDarkYellowColor),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                        children: [

                                                          Icon(Icons.camera_alt, size: SizeConfig.defaultSize * Dimens.size2Point5,color: ConstantColor.secondaryColor,),
                                                          Text('click to capture',style: TextStyle(
                                                            fontSize: SizeConfig.defaultSize*Dimens.size1Point8,
                                                            color: ConstantColor.secondaryColor,
                                                          ),)
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),

                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: SizeConfig.defaultSize * Dimens.size2,

                                            ),
                                            child: Text(
                                              "Upload Photo of Caratometer".tr,
                                              style: TextStyle(
                                                  fontFamily: ConstantFonts.poppinsMedium,
                                                  fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                                                  color: ConstantColor.secondaryColor,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: SizeConfig.defaultSize * Dimens.size1,
                                            ),
                                            child:InkWell(
                                              onTap: ()=> {
                                                captureInvoicePicture(ImageSource.camera)
                                              },
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  top: SizeConfig.defaultSize * Dimens.size1,
                                                ),
                                                child: Container(
                                                    child:

                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        top: SizeConfig.defaultSize * Dimens.size1,
                                                      ),
                                                      child: Container(
                                                        width: SizeConfig.defaultSize * Dimens.size30,
                                                        height: SizeConfig.defaultSize * Dimens.size12,
                                                        decoration:  BoxDecoration(
                                                            borderRadius: BorderRadius.all(Radius.circular(10)),
                                                            color: ConstantColor.miniDarkYellowColor),
                                                        child: Column(
                                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                          children: [

                                                            Icon(Icons.camera_alt, size: SizeConfig.defaultSize * Dimens.size2Point5,color: ConstantColor.secondaryColor,),
                                                            Text('click to capture',style: TextStyle(
                                                              fontSize: SizeConfig.defaultSize*Dimens.size1Point8,
                                                              color: ConstantColor.secondaryColor,
                                                            ),)
                                                          ],
                                                        ),
                                                      ),
                                                    )


                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                  ))]
                        ),
                      ),
                    ]),



                Padding(
                  padding:  EdgeInsets.only(top:SizeConfig.defaultSize*Dimens.size2),
                  child: VerifierCustomTextFormFeild3(
                    labeltext: 'Enter Weight',
                    hintText:'Enter Number',
                    sufixText: 'GRAM',
                  ),
                ),

                VerifierCustomTextFormFeild3(
                  labeltext: 'Enter Purity',
                  hintText:'Enter Number',
                  sufixText: '%',
                ),

                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size1,
                    left: SizeConfig.defaultSize * Dimens.size1,
                    right: SizeConfig.defaultSize * Dimens.size1,
                  ),
                  child: Container(
                    color: ConstantColor.extraLightYellowColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Weight Difference Occurred".tr,
                          style: TextStyle(
                              fontFamily: ConstantFonts.poppinsMedium,
                              fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                              color: ConstantColor.blackColor,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "10%".tr,
                          style: TextStyle(
                              fontFamily: ConstantFonts.poppinsMedium,
                              fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                              color: ConstantColor.darkRedColor,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size1,
                    left: SizeConfig.defaultSize * Dimens.size1,
                    right: SizeConfig.defaultSize * Dimens.size1,
                  ),
                  child: Container(
                    color: ConstantColor.extraLightYellowColor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Purity Difference Occurred".tr,
                          style: TextStyle(
                              fontFamily: ConstantFonts.poppinsMedium,
                              fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                              color: ConstantColor.blackColor,
                              fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "1%".tr,
                          style: TextStyle(
                              fontFamily: ConstantFonts.poppinsMedium,
                              fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                              color: ConstantColor.greenColor,
                              fontWeight: FontWeight.w900),
                        ),
                      ],
                    ),
                  ),
                ),


                Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.defaultSize * Dimens.size4,
                    right: SizeConfig.defaultSize * Dimens.size4,
                    top: SizeConfig.defaultSize * Dimens.size4,
                    bottom: SizeConfig.defaultSize * Dimens.size4,
                  ),
                  child: ButtonWidget(
                      text:  "FINAL SUBMITTION".tr,
                      fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                      minWidth: SizeConfig.screenWidth,
                      minHeight: SizeConfig.defaultSize * Dimens.size5,
                      isChecked: true ,
                      press: (BuildContext context) => {
                        Get.to(()=> FinalOrderResultsScaffold())
                        //reviewOrdersController.uploadInvoiceAndPackageApiFunction(reviewOrdersController.invoiceFile,reviewOrdersController.packageFile),

                      }),
                ),

              ],
              ),
            ),





          ));


  }

  ///-------------------------- Invoice image captured ---------------------
  Future captureInvoicePicture(ImageSource source) async {
    final picker = ImagePicker();
    final imageFile = await picker.pickImage(source: source);
    if (mounted) {

      setState(() {
        // reviewOrdersController.invoiceFile = File(imageFile!.path);
        // reviewOrdersController.isImagePickedForPrintedInvoicePic = true;
      });

    }
  }

  ///-------------------------- Package image captured ---------------------
  Future capturePackagePicture(ImageSource source) async {
    final picker = ImagePicker();
    final imageFile = await picker.pickImage(source: source);
    if (mounted) {
      setState(() {
        // reviewOrdersController.packageFile = File(imageFile!.path);
        // reviewOrdersController.isImagePickedForPackagePic = true;

      });
    }
  }


// Widget getInvoiceImage(){
//   if(reviewOrdersController.invoiceFile != null){
//     return ClipOval(
//         child: Image.file(
//           reviewOrdersController.invoiceFile,
//           width: SizeConfig.defaultSize * Dimens.size12,
//           height: SizeConfig.defaultSize * Dimens.size12,
//           fit: BoxFit.cover,
//         ));
//   }else{
//     return Container(
//       width: SizeConfig.defaultSize * Dimens.size15,
//       height: SizeConfig.defaultSize * Dimens.size15,
//       decoration: BoxDecoration(
//           color: ConstantColor.secondaryColor,
//           shape: BoxShape.circle,
//           image: DecorationImage(
//               image: NetworkImage(reviewOrdersController.printedInvoicePic.value),
//               fit: BoxFit.cover)),
//     );
//   }
// }

}