import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../../../deliveryFlow/screens/tobePacked/child/widget/ReviewOrdersCardView.dart';
import '../../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../../utils/SizeConfig.dart';




class DeliverdOrderDetails extends StatefulWidget {
  const DeliverdOrderDetails({Key? key}) : super(key: key);

  @override
  State<DeliverdOrderDetails> createState() => _DeliverdOrderDetailsState();
}

class _DeliverdOrderDetailsState extends State<DeliverdOrderDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              Padding(
                padding:  EdgeInsets.only(
                  left: SizeConfig.defaultSize*Dimens.size2,
                  right: SizeConfig.defaultSize*Dimens.size2,
                ),
                child:ActionBar(title: 'Order # BKS00034',),),


              Padding(
                padding:  EdgeInsets.only(
                  left: SizeConfig.defaultSize*Dimens.size2,
                  right: SizeConfig.defaultSize*Dimens.size2,
                ),
                child:ReviewOrdersView(
                  index: 2,
                  title: 'item.title',
                  quantity: 'item.quantity',
                  image: ConstantAssets.coin,
                ),),


              Padding(
                padding:  EdgeInsets.only(
                  left: SizeConfig.defaultSize*Dimens.size2,
                  right: SizeConfig.defaultSize*Dimens.size2,
                ),
                child:ReviewOrdersView(
                  index: 2,
                  title: 'item.title',
                  quantity: 'item.quantity',
                  image: ConstantAssets.coin,
                ),),



              Padding(
                padding:  EdgeInsets.only(
                  left: SizeConfig.defaultSize*Dimens.size2,
                  right: SizeConfig.defaultSize*Dimens.size2,
                ),child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeConfig.defaultSize *
                              Dimens.size1Point5,
                          bottom: SizeConfig.defaultSize *
                              Dimens.size1Point5,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(

                              ),
                              child: Text("Photo with Invoice",
                                  style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsBold,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point6,
                                    color: ConstantColor.secondaryColor,
                                  )),
                            ),
                            Container(
                              width:
                              SizeConfig.defaultSize * Dimens.size8,
                              height:
                              SizeConfig.defaultSize * Dimens.size8,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ConstantColor
                                      .miniDarkYellowColor),
                              child: Icon(
                                Icons.camera_alt,
                                size: SizeConfig.defaultSize *
                                    Dimens.size2Point5,
                                color: ConstantColor.secondaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top:
                          SizeConfig.defaultSize * Dimens.size1,
                        ),
                        child: Text("Photo with Invoice",
                            style: TextStyle(
                              fontFamily:
                              ConstantFonts.poppinsRegular,
                              fontSize: SizeConfig.defaultSize *
                                  Dimens.size1Point2,
                              color: ConstantColor.secondaryColor,
                            )),
                      ),
                    ],
                  ),

                  Container(
                    height: SizeConfig.defaultSize * Dimens.size20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          SizeConfig.defaultSize * Dimens.size1Point3,
                        ),
                        color: ConstantColor.lightYellowColor),
                    child: InkWell(
                      onTap: ()=>{
                        print("--------------"),
                        //_selectOptionBottomSheet(),

                        //Navigator.pop(context)
                      },
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: SizeConfig.defaultSize * Dimens.size3,
                              ),
                              child: Text("Package Photo",
                                  style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsBold,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point6,
                                    color: ConstantColor.secondaryColor,
                                  )),
                            ),


                            Column(
                              children: [
                                ///---------------- Camera Icon ---------------------
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: SizeConfig.defaultSize *
                                        Dimens.size1Point5,
                                    bottom: SizeConfig.defaultSize *
                                        Dimens.size1Point5,
                                  ),
                                  child: Container(
                                    width:
                                    SizeConfig.defaultSize * Dimens.size8,
                                    height:
                                    SizeConfig.defaultSize * Dimens.size8,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                        ConstantColor.miniDarkYellowColor),
                                    child: Icon(
                                      Icons.camera_alt,
                                      size: SizeConfig.defaultSize *
                                          Dimens.size2Point5,
                                      color: ConstantColor.secondaryColor,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: SizeConfig.defaultSize * Dimens.size1,
                                  ),
                                  child: Text("Click To Capture",
                                      style: TextStyle(
                                        fontFamily:
                                        ConstantFonts.poppinsRegular,
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.size1Point2,
                                        color: ConstantColor.secondaryColor,
                                      )),
                                ),
                              ],
                            ),
                          ]),
                    ),
                  ),


                ],
              ),),

              Padding(
                padding:  EdgeInsets.only(
                  right:SizeConfig.defaultSize *
                      Dimens.size1Point2,
                  left:SizeConfig.defaultSize *
                      Dimens.size1Point2,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: ConstantColor.lightYellowColor,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),

                      )
                  ),
                  child: Column(
                    children: [
                      TransitCutsomTextBox(
                        text: 'Agent Name',
                        text2: 'Arshit R',
                      ),
                      TransitCutsomTextBox(
                        text: 'Docket Number',
                        text2: '0581094993',
                      ),
                      TransitCutsomTextBox(
                        text: 'BRN Number',
                        text2: 'A303737',
                      ),
                      TransitCutsomTextBox(
                        text: 'Delivery Date',
                        text2: '19-03-2022',
                      ),
                      TransitCutsomTextBox(
                        text: 'Delivery Time',
                        text2: '8:00 PM',
                      ),

                    ],
                  ),

                ),
              ),




              Padding(
                padding:  EdgeInsets.only(
                  left: SizeConfig.defaultSize*Dimens.size2,
                  right: SizeConfig.defaultSize*Dimens.size2,
                ),child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeConfig.defaultSize *
                              Dimens.size1Point5,
                          bottom: SizeConfig.defaultSize *
                              Dimens.size1Point5,
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(

                              ),
                              child: Text("Signature of Agent",
                                  style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsBold,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point6,
                                    color: ConstantColor.secondaryColor,
                                  )),
                            ),
                            Container(
                              width:
                              SizeConfig.defaultSize * Dimens.size8,
                              height:
                              SizeConfig.defaultSize * Dimens.size8,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: ConstantColor
                                      .miniDarkYellowColor),
                              child: Icon(
                                Icons.camera_alt,
                                size: SizeConfig.defaultSize *
                                    Dimens.size2Point5,
                                color: ConstantColor.secondaryColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top:
                          SizeConfig.defaultSize * Dimens.size1,
                        ),
                        child: Text("Photo with Invoice",
                            style: TextStyle(
                              fontFamily:
                              ConstantFonts.poppinsRegular,
                              fontSize: SizeConfig.defaultSize *
                                  Dimens.size1Point2,
                              color: ConstantColor.secondaryColor,
                            )),
                      ),
                    ],
                  ),

                  Expanded(
                    flex: 5,
                    child: Container(
                      height: SizeConfig.defaultSize * Dimens.size20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            SizeConfig.defaultSize * Dimens.size1Point3,
                          ),
                          color: ConstantColor.lightYellowColor),
                      child: InkWell(
                        onTap: ()=>{
                          print("--------------"),
                          //_selectOptionBottomSheet(),

                          //Navigator.pop(context)
                        },
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: SizeConfig.defaultSize * Dimens.size3,
                                ),
                                child: Text("ID of Agent",
                                    style: TextStyle(
                                      fontFamily: ConstantFonts.poppinsBold,
                                      fontSize: SizeConfig.defaultSize *
                                          Dimens.size1Point6,
                                      color: ConstantColor.secondaryColor,
                                    )),
                              ),


                              Column(
                                children: [
                                  ///---------------- Camera Icon ---------------------
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: SizeConfig.defaultSize *
                                          Dimens.size1Point5,
                                      bottom: SizeConfig.defaultSize *
                                          Dimens.size1Point5,
                                    ),
                                    child: Container(
                                      width:
                                      SizeConfig.defaultSize * Dimens.size8,
                                      height:
                                      SizeConfig.defaultSize * Dimens.size8,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                          ConstantColor.miniDarkYellowColor),
                                      child: Icon(
                                        Icons.camera_alt,
                                        size: SizeConfig.defaultSize *
                                            Dimens.size2Point5,
                                        color: ConstantColor.secondaryColor,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: SizeConfig.defaultSize * Dimens.size1,
                                    ),
                                    child: Text("Click To Capture",
                                        style: TextStyle(
                                          fontFamily:
                                          ConstantFonts.poppinsRegular,
                                          fontSize: SizeConfig.defaultSize *
                                              Dimens.size1Point2,
                                          color: ConstantColor.secondaryColor,
                                        )),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ),
                  ),

                ],
              ),),
            ],
          ),
        )
    );
  }
}





















































class TransitCutsomTextBox extends StatefulWidget {
  var text;
  var text2;
  TransitCutsomTextBox({Key? key,this.text,this.text2}) : super(key: key);

  @override
  State<TransitCutsomTextBox> createState() => _TransitCutsomTextBoxState();
}

class _TransitCutsomTextBoxState extends State<TransitCutsomTextBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
        left: SizeConfig.defaultSize *
            Dimens.size1Point2,
        top: SizeConfig.defaultSize *
            Dimens.size1Point2,
        right: SizeConfig.defaultSize *
            Dimens.size1Point2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.text,style: TextStyle(
            fontFamily: ConstantFonts.poppinsMedium,
            color: ConstantColor.secondaryColor,
            fontSize:SizeConfig.defaultSize *
                Dimens.size1Point8,
          ),),

          Text(widget.text2,style: TextStyle(
            fontFamily: ConstantFonts.poppinsRegular,
            color: ConstantColor.blackColor,
            fontSize:SizeConfig.defaultSize *
                Dimens.size1Point4,
          ),),

        ],

      ),
    );
  }
}

