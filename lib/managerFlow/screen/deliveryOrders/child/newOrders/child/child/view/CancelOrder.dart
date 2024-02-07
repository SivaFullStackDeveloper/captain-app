import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/res/Dimens.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../otpScreenManager/view/newOrdersPakedScaffold.dart';
import '../../../widget/NewOrdersList.dart';



class CancelOrder extends StatefulWidget {
  const CancelOrder({Key? key}) : super(key: key);

  @override
  State<CancelOrder> createState() => _CancelOrderState();
}

class _CancelOrderState extends State<CancelOrder> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left:SizeConfig.defaultSize*Dimens.size2,
            right:SizeConfig.defaultSize*Dimens.size2,
          ),
          child: ActionBar(
            title: 'Cancel orders',
          ),
        ),
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

        Expanded(child:
        CancelOrdersList()
        ),

      ],
    )
    );
  }
}
