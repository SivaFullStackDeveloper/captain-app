import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../../constants/ConstantAssets.dart';
import '../../../../../../deliveryFlow/screens/tobePacked/child/view/ReviewOrdersScreen.dart';
import '../../../../../../res/Dimens.dart';
import '../../../../../../utils/SizeConfig.dart';
import '../../../../otpScreenManager/view/newOrdersPakedScaffold.dart';
import '../child/ReviewOrdersScreenScaffold.dart';
import '../widget/CustomTabContainerButton.dart';
import '../widget/NewOrdersList.dart';





class NewOrders extends StatefulWidget {
  const NewOrders({Key? key}) : super(key: key);

  @override
  State<NewOrders> createState() => _NewOrdersState();
}

class _NewOrdersState extends State<NewOrders> {
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
                                                                  text:'New'
                                                              ),
                                              ),
              ///-------------------------------------------- Assigned button widget ---------------------------------
              InkWell(
                                       onTap: (){
                                         Get.to(()=>ReviewOrdersScreenScaffold());
                                         setState(() {
                                           newTab =false;
                                           assignedTab = true;
                                           packedTab = false;
                                         });
                                       },
                                       child: CustomTabContainerButton(

                                                      isPressed:assignedTab,
                                                      text:'Assigned'
                                                  ),
                                     ),
              ///-------------------------------------------- Packed button widget ---------------------------------
              InkWell(
                                                    onTap: (){
                                                      setState(() {
                                                        newTab =false;
                                                        assignedTab = false;
                                                        packedTab = true;
                                                        print(packedTab.toString());

                                                      });
                                                    },
                                                    child: CustomTabContainerButton(

                                                                  isPressed:packedTab,
                                                                  text:'Packed'
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

    newTab ==true?Expanded(child: NewOrdersList()):
    assignedTab==true?Expanded(child: AssignedOrdersList()):Container(),
          packedTab==true? Expanded(child: PackedOrdersList()):Container(),
        ],
      ),
    );
  }
}
