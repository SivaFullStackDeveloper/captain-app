import 'dart:io';
import 'package:captain_app/constants/ConstantString.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../../../../../commonWidgets/TaskIndicator.dart';
import '../../../../../constants/ConstantAssets.dart';
import '../../../../../constants/ConstantColor.dart';
import '../../../../../constants/ConstantFonts.dart';
import '../../../../../commonWidgets/ActionBar.dart';
import '../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../commonWidgets/CustomProgressIndicator.dart';
import '../../../../../managerFlow/screen/deliveryOrders/child/newOrders/child/OrdersShippedScreenScaffold.dart';
import '../../../../../managerFlow/screen/otpScreenManager/ManagerOtpScreenScaffold.dart';
import '../../../../../res/Dimens.dart';
import '../../../../../utils/SizeConfig.dart';
import '../child/orderPackedSuccessfully/OrderPackedSuccessfullyScreenScaffold.dart';
import '../controller/ReviewOrdersController.dart';
import '../widget/ReviewOrdersCardView.dart';

class ReviewOrdersScreen extends StatefulWidget {
  const ReviewOrdersScreen({super.key});

  @override
  _ReviewOrdersScreenState createState() => _ReviewOrdersScreenState();
}

class _ReviewOrdersScreenState extends State<ReviewOrdersScreen> with RouteAware {


  //List<int> text = [1,2,3,4];

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child:Padding(
                padding: EdgeInsets.only(
                  left: SizeConfig.defaultSize * Dimens.size2,
                  right: SizeConfig.defaultSize * Dimens.size2,
                ),
                    child: Column(children: [

                ///------------------- Action Bar -----------------------------------
                ActionBar(title: 'Order#1234' ),


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
                                    // TaskIndicator(taskNumber: "2",dashWidth: SizeConfig.defaultSize * Dimens.size28),
                                    TaskIndicator(taskNumber: "2",dashWidth: SizeConfig.defaultSize * Dimens.size30),
                                    TaskIndicator(taskNumber: "3",dashWidth: SizeConfig.defaultSize * Dimens.size18),
                                    TaskIndicator(taskNumber: "4",dashWidth: SizeConfig.defaultSize * Dimens.size15),
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
                                            'Review Order Items',
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
                                          height: SizeConfig.defaultSize * Dimens.size24,
                                          child:  ListView.builder(
                                            scrollDirection: Axis.vertical,
                                            itemCount:2,
                                            physics: const BouncingScrollPhysics(),
                                            shrinkWrap: true,
                                            itemBuilder: (context, index) {

                                              return

                                                ReviewOrdersView(
                                                index: 2,
                                                title: 'item.title',
                                                quantity: 'item.quantity',
                                                image: ConstantAssets.coin,
                                              );
                                            },
                                          ),
                                        ),



                                        ///---------------- Select Delivery Captain text ---------------------
                                        // Padding(
                                        //   padding: EdgeInsets.only(
                                        //     top: SizeConfig.defaultSize * Dimens.size2,
                                        //   ),
                                        //   child: Text(
                                        //     'Select Delivery Captain',
                                        //     style: TextStyle(
                                        //         fontFamily: ConstantFonts.poppinsMedium,
                                        //         fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                                        //         color: ConstantColor.secondaryColor,
                                        //         fontWeight: FontWeight.w900),
                                        //   ),
                                        // ),
                                        ///--------------Select Delivery Captain drop down down ----------------------
                                        //                                         Container(
                                        //                                             height: SizeConfig.defaultSize*Dimens.size8,
                                        //                                             width: SizeConfig.defaultSize*Dimens.size30,
                                        //                                             child: DropdownButtonFormField(
                                        //
                                        //                                               decoration: InputDecoration(
                                        //                                                 hintText: ConstantString.selectOption,
                                        //                                                 enabledBorder: OutlineInputBorder(
                                        //                                                   borderSide: BorderSide(
                                        //                                                     color: ConstantColor.greyColor,
                                        //                                                   ),
                                        //                                                   borderRadius: BorderRadius.all(
                                        //                                                       Radius.circular(10)),
                                        //                                                 ),
                                        //                                                 disabledBorder: OutlineInputBorder(
                                        //                                                   borderSide: BorderSide(
                                        //                                                     color: ConstantColor.greyColor,
                                        //                                                   ),
                                        //                                                   borderRadius: BorderRadius.all(
                                        //                                                       Radius.circular(10)),
                                        //                                                 ),
                                        //                                                 focusedBorder: OutlineInputBorder(
                                        //                                                   borderSide: BorderSide(
                                        //                                                     color: ConstantColor.greyColor,
                                        //                                                   ),
                                        //                                                   borderRadius: BorderRadius.all(
                                        //                                                       Radius.circular(10)),
                                        //                                                 ),
                                        //                                                 border: OutlineInputBorder(
                                        //                                                   borderSide: BorderSide(
                                        //                                                     color: ConstantColor.greyColor,
                                        //                                                   ),
                                        //                                                   borderRadius: BorderRadius.all(
                                        //                                                       Radius.circular(10)),
                                        //                                                 ),
                                        //                                               ),
                                        //                                               items:<DropdownMenuItem<String>>[
                                        //                                                 DropdownMenuItem(
                                        //                                                   child:  Text('None',style: TextStyle(
                                        //
                                        //                                                   ),),
                                        //
                                        //                                                 ),
                                        //
                                        //                                               ], onChanged: (String? value) {  },
                                        //
                                        //                                             )),

                                        ///---------------- Take photo of the printed invoice text ---------------------
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize * Dimens.size8,

                                          ),
                                          child: Text(
                                            "Take Photo of printed invoice in box".tr,
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
                                                      width: SizeConfig.defaultSize * Dimens.size10,
                                                      height: SizeConfig.defaultSize * Dimens.size10,
                                                      decoration:  BoxDecoration(
                                                          borderRadius: BorderRadius.all(Radius.circular(SizeConfig.defaultSize * Dimens.size10)),
                                                          color: ConstantColor.miniDarkYellowColor),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                        children: [
                                                          Icon(Icons.camera_alt, size: SizeConfig.defaultSize * Dimens.size2Point5,color: ConstantColor.secondaryColor,),
                                                          // Text('click to capture',style: TextStyle(
                                                          //   fontSize: SizeConfig.defaultSize*Dimens.size1Point8,
                                                          //   color: ConstantColor.secondaryColor,
                                                          // ),)
                                                        ],
                                                      ),
                                                    ),
                                                  )


                                              ),
                                            ),
                                          ),
                                        ),


                                        ///---------------- Take photo of the package text ---------------------
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize * Dimens.size7,

                                          ),
                                          child: Text(
                                            "Take Photo of the package".tr,
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
                                                      width: SizeConfig.defaultSize * Dimens.size10,
                                                      height: SizeConfig.defaultSize * Dimens.size10,
                                                      decoration:  BoxDecoration(
                                                          borderRadius: BorderRadius.all(Radius.circular(SizeConfig.defaultSize * Dimens.size10)),
                                                          color: ConstantColor.miniDarkYellowColor),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                        children: [
                                                          Icon(Icons.camera_alt, size: SizeConfig.defaultSize * Dimens.size2Point5,color: ConstantColor.secondaryColor,),
                                                          // Text('click to capture',style: TextStyle(
                                                          //   fontSize: SizeConfig.defaultSize*Dimens.size1Point8,
                                                          //   color: ConstantColor.secondaryColor,
                                                          // ),)
                                                        ],
                                                      ),
                                                    ),
                                                  )


                                              ),
                                            ),
                                          ),
                                        ),

                                        ///---------------- Final Step text ---------------------
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: SizeConfig.defaultSize * Dimens.size6,

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
                                              text: 'ORDER READY TO SHIP',
                                              fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                                              minWidth: SizeConfig.screenWidth,
                                              minHeight: SizeConfig.defaultSize * Dimens.size5,
                                              isChecked:true,
                                              press: (BuildContext context) => {

                                                // Get.to(()=> ManagerOtpScreenScaffold()),
                                                Get.to(()=> OrderPackedSuccessfullyScaffold()),

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

      });

    }
  }

  ///-------------------------- Package image capturing widget function ---------------------
  Future capturePackagePicture(ImageSource source) async {
    final picker = ImagePicker();
    final imageFile = await picker.pickImage(source: source);
    if (mounted) {
      setState(() {


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
