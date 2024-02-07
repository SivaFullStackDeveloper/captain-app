import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../res/Dimens.dart';
import '../../../../../../../utils/SizeConfig.dart';
import '../../../../../otpScreenManager/view/newOrdersPakedScaffold.dart';
import '../../../newOrders/widget/CustomTabContainerButton.dart';
import '../../../newOrders/widget/NewOrdersList.dart';



class ManagerShipped extends StatefulWidget {
  const ManagerShipped({Key? key}) : super(key: key);

  @override
  State<ManagerShipped> createState() => _ManagerShippedState();
}

class _ManagerShippedState extends State<ManagerShipped> {
  var newTab = true;
  var assignedTab = false;
  var packedTab = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(
              top: SizeConfig.defaultSize*Dimens.size1,
              left: SizeConfig.defaultSize*Dimens.size2,
              right: SizeConfig.defaultSize*Dimens.size2,

            ),
            child: ActionBar(
              title: 'New Orders',
            ),
          ),

          Row(
mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///-------------------------------------------- new Tab button widget ---------------------------------
              InkWell(
                onTap: (){
                  setState(() {
                    newTab = true;
                    assignedTab = false;
                    packedTab = false;
                  });
                },
                child: CustomTabContainerButton(
                    isPressed:newTab,
                    text:'In Transit'
                ),
              ),
              ///-------------------------------------------- Assigned button widget ---------------------------------
              InkWell(
                onTap: (){

                  setState(() {
                    newTab =false;
                    assignedTab = true;
                    packedTab = false;
                  });
                },
                child: CustomTabContainerButton(

                    isPressed:assignedTab,
                    text:'Delivered'
                ),
              ),


            ],
          ),

          ///-------------------------------------------- Filter icon and Today date---------------------------------

          Padding(
            padding:  EdgeInsets.only(
              top:SizeConfig.defaultSize*Dimens.size2,
              left:SizeConfig.defaultSize*Dimens.size2,
              right:SizeConfig.defaultSize*Dimens.size2,
            ),
            child: InkWell(
                onTap: (){
                  DatePickerBottomSheet(context,true);
                },
                child: SvgPicture.asset(ConstantAssets.filter)),),


          ///-------------------------------------------- List of new order ---------------------------------

          newTab ==true?Expanded(child: TransitOrdersList()):
          assignedTab==true?Expanded(child: DeliveredOrdersList()):Container(),

        ],
      ),
    );
  }
}
