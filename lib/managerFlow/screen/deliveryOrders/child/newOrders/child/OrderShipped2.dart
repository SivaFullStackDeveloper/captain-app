import 'dart:io';
import 'package:captain_app/constants/ConstantString.dart';
import 'package:captain_app/managerFlow/screen/deliveryOrders/child/newOrders/child/widget/SucessScreenScaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../commonWidgets/TaskIndicator.dart';
import '../../../../../../constants/ConstantAssets.dart';
import '../../../../../../constants/ConstantColor.dart';
import '../../../../../../constants/ConstantFonts.dart';
import '../../../../../../deliveryFlow/screens/tobePacked/child/widget/ReviewOrdersCardView.dart';
import '../../../../../../res/Dimens.dart';
import '../../../../../../utils/SizeConfig.dart';


class OrdersShippedScreen extends StatefulWidget {
  const OrdersShippedScreen({super.key});

  @override
  _OrdersShippedScreenState createState() => _OrdersShippedScreenState();
}

class _OrdersShippedScreenState extends State<OrdersShippedScreen> with RouteAware {


  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child:  Padding(
          padding: EdgeInsets.only(
            left: SizeConfig.defaultSize * Dimens.size2,
            right: SizeConfig.defaultSize * Dimens.size2,
          ),
          child: Column(children: [

            ///------------------- Action Bar -----------------------------------
            ActionBar(title:'Order#546151651',),


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

                                  ///-------------------- Circle 1 section -----------------
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
                                ///------------------- Dash draw with circle 2--------------------
                                TaskIndicator(taskNumber: "2",dashWidth: SizeConfig.defaultSize * Dimens.size28),


                                ///------------------- Dash draw with circle 3--------------------
                                TaskIndicator(taskNumber: "3",dashWidth: SizeConfig.defaultSize * Dimens.size15,),


                                ///------------------- Dash draw with circle 4--------------------
                                TaskIndicator(taskNumber: "4",dashWidth: SizeConfig.defaultSize * Dimens.size12,),


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
                                        ///--------------- Review Order Items text --------------
                                        child: Text(
                                          ConstantString.reviewOrderItems.tr,
                                          style: TextStyle(
                                              height: 2,
                                              fontFamily: ConstantFonts.poppinsMedium,
                                              fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                                              color: ConstantColor.secondaryColor,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ),


                                      ///-------------------- Review Orders Listview -----------
                                      SizedBox(
                                        height: SizeConfig.defaultSize * Dimens.size28,
                                        child:  ListView.builder(
                                          scrollDirection: Axis.vertical,
                                          itemCount:2,
                                          physics: const BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {

                                            return ReviewOrdersView(
                                              index: index,
                                              title: 'item.title',
                                              quantity:' item.quantity',
                                              image: ConstantAssets.coin,
                                            );
                                          },
                                        ),
                                        // ): Center(
                                        //     child: Text(ConstantString.noItemFound.tr,style: TextStyle(fontSize: SizeConfig.defaultSize * Dimens.size2),)),
                                      ),



                                      ///---------------- Take photo of printed invoice in box text ---------------------
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: SizeConfig.defaultSize * Dimens.size2,

                                        ),
                                        child: Text(
                                          ConstantString.takePhotoOfPrintedInvoiceInBox.tr,
                                          style: TextStyle(
                                              fontFamily: ConstantFonts.poppinsMedium,
                                              fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                                              color: ConstantColor.secondaryColor,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ),

                                      ///---------------- Camera Icon & display captured image ---------------------
                                      InkWell(
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
                                                  top: SizeConfig.defaultSize * Dimens.size2,
                                                ),
                                                child: Container(
                                                  width: SizeConfig.defaultSize * Dimens.size10,
                                                  height: SizeConfig.defaultSize * Dimens.size10,
                                                  decoration:  BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: ConstantColor.miniDarkYellowColor),
                                                  child: Icon(Icons.camera_alt, size: SizeConfig.defaultSize * Dimens.size2Point5,color: ConstantColor.secondaryColor,),
                                                ),
                                              )

                                          ),
                                        ),
                                      ),

                                      ///---------------- Take photo of the package text ---------------------
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: SizeConfig.defaultSize * Dimens.size3,

                                        ),
                                        child: Text(
                                          ConstantString.takePhotoOfThePackage.tr,
                                          style: TextStyle(
                                              fontFamily: ConstantFonts.poppinsMedium,
                                              fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                                              color: ConstantColor.secondaryColor,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ),

                                      ///---------------- Camera Icon & display captured image ---------------------
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: SizeConfig.defaultSize * Dimens.size1,
                                        ),
                                        child: InkWell(
                                          onTap: ()=>{
                                            capturePackagePicture(ImageSource.camera)
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              top: SizeConfig.defaultSize * Dimens.size2,
                                            ),
                                            child: Container(
                                              width: SizeConfig.defaultSize * Dimens.size10,
                                              height: SizeConfig.defaultSize * Dimens.size10,
                                              decoration:  BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: ConstantColor.miniDarkYellowColor),
                                              child: Icon(Icons.camera_alt, size: SizeConfig.defaultSize * Dimens.size2Point5,color: ConstantColor.secondaryColor,),
                                            ),
                                          ),
                                        ),
                                      ),


                                      ///---------------- Final Step text ---------------------
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: SizeConfig.defaultSize * Dimens.size3,

                                        ),
                                        child: Text(
                                          ConstantString.finalStep.tr,
                                          style: TextStyle(
                                              fontFamily: ConstantFonts.poppinsMedium,
                                              fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                                              color: ConstantColor.secondaryColor,
                                              fontWeight: FontWeight.w900),
                                        ),
                                      ),


                                      ///------------------ Order Ready to ship button -------------
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: SizeConfig.defaultSize * Dimens.size3,
                                          bottom: SizeConfig.defaultSize * Dimens.size3,

                                        ),
                                        child: ButtonWidget(
                                            text:  'CONTINUE',
                                            fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                                            minWidth: SizeConfig.screenWidth,
                                            minHeight: SizeConfig.defaultSize * Dimens.size5,
                                            isChecked: true ,
                                            press: (BuildContext context) => {
                                              Get.to(()=> SucessScreenScaffold()),

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


    );


  }

  ///-------------------------- Invoice image capturing widget function ---------------------
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

  ///-------------------------- Package image capturing widget function ---------------------
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


///-------------------------- display captured image function ---------------------
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
