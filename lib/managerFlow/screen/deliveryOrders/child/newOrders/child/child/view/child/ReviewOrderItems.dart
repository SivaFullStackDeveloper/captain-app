import 'package:captain_app/commonWidgets/ButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../utils/SizeConfig.dart';
import '../../../../../../../../../verifierFlow/screens/aceeptAndReject/views/VerifierAcceptedScreen.dart';
import '../../../../../../../otpScreenManager/view/newOrdersPakedScaffold.dart';




class ReviewOrderItems extends StatefulWidget {
  const ReviewOrderItems({Key? key}) : super(key: key);

  @override
  State<ReviewOrderItems> createState() => _ReviewOrderItemsState();
}

class _ReviewOrderItemsState extends State<ReviewOrderItems> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Column(

          children: [
            Flexible(
              flex: 7,
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding:  EdgeInsets.only(
                      left: SizeConfig.defaultSize*Dimens.size2,
                      right:  SizeConfig.defaultSize*Dimens.size2,
                    ),
                    child: ActionBar(title:"Order #BKS0098"),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      left: SizeConfig.defaultSize*Dimens.size2,
                      right: SizeConfig.defaultSize*Dimens.size2,
                      top: SizeConfig.defaultSize*Dimens.size2,
                      bottom: SizeConfig.defaultSize*Dimens.size2,
                    ),
                    child:Text('Review Order Items',style: TextStyle(
                      fontSize: SizeConfig.defaultSize*Dimens.size1Point8,

                      color: ConstantColor.secondaryColor,
                    ),),),

                  CustomTextFormFeild(
                    sufixText: 'No.s',
                    hintText: 'Enter Quantity',
                    labeltext: 'Enter Quantity',
                  ),
                  CustomTextFormFeild(
                    sufixText: 'GRAM',
                    hintText: 'Enter WEIGHT',
                    labeltext: 'Enter WEIGHT',
                  ),

                  Padding(
                    padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size2,
                        left: SizeConfig.defaultSize * Dimens.size1,
                        right: SizeConfig.defaultSize * Dimens.size1),

                    child: InkWell(
                      onTap: () {

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
                  ),
                  
                  
                  Padding(
                    padding:  EdgeInsets.only(
                      top:SizeConfig.defaultSize*Dimens.size2,
                      left:SizeConfig.defaultSize*Dimens.size2,
                      right:SizeConfig.defaultSize*Dimens.size2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Column(
                          children: [
                            Text('OTP TO COLLECT',style: TextStyle(
                                color: Colors.grey,

                            ),),
                            Text('XXXX',style: TextStyle(
                              color:Colors.grey,
                            ),)

                          ],
                        ),

                        Switch(
                          activeColor: Colors.grey,
                            activeTrackColor: Colors.grey,
                            value: true, onChanged: (value){

                        })
                      ],
                    ),
                  )
                ],
              ),
            ),


            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ButtonWidget(
                         text:"CONTINUE",
                          fontSize:18,
                         minWidth:320,
                         minHeight:50,
                          isChecked:true,
                          press:(context){
                           Get.to(()=>VerifierAcceptedScreen());

                          },),
              ],
            ),

          ],
        ) );
  }
}
