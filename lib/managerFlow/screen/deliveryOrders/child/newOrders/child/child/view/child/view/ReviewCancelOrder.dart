import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/constants/ConstantColor.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../../../../deliveryFlow/screens/tobePacked/child/widget/ReviewOrdersCardView.dart';
import '../../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../../utils/SizeConfig.dart';




class ReviewCancelOrder extends StatefulWidget {
  const ReviewCancelOrder({Key? key}) : super(key: key);

  @override
  State<ReviewCancelOrder> createState() => _ReviewCancelOrderState();
}

class _ReviewCancelOrderState extends State<ReviewCancelOrder> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

                Padding(
                  padding:  EdgeInsets.only(
                    left: SizeConfig.defaultSize*Dimens.size2,
                    right: SizeConfig.defaultSize*Dimens.size2,
                  ),
                  child: ActionBar(
                    title: 'Order #BKS0098',
                  ),
                ),

    Padding(
    padding:  EdgeInsets.only(
    left: SizeConfig.defaultSize*Dimens.size2,
    right: SizeConfig.defaultSize*Dimens.size2,
      top: SizeConfig.defaultSize*Dimens.size2,
      bottom: SizeConfig.defaultSize*Dimens.size2,
    ),
    child:Text('Video of Opening By Captain',style: TextStyle(
              fontSize: SizeConfig.defaultSize*Dimens.size1Point8,

              color: ConstantColor.secondaryColor,
            ),),),


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



          ],
        )
    );
  }
}
