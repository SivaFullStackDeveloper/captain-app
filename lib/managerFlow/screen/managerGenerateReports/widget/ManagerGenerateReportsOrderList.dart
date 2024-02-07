import 'package:captain_app/constants/ConstantAssets.dart';
import 'package:captain_app/constants/ConstantFonts.dart';
import 'package:captain_app/utils/SizeConfig.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../res/Dimens.dart';





class ManagerGenerateReportsOrderList extends StatefulWidget {
  const ManagerGenerateReportsOrderList({Key? key}) : super(key: key);

  @override
  State<ManagerGenerateReportsOrderList> createState() => _ManagerGenerateReportsOrderListState();
}

class _ManagerGenerateReportsOrderListState extends State<ManagerGenerateReportsOrderList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
          itemBuilder: (BuildContext context,index){
        return Padding(
          padding:  EdgeInsets.only(
            top: SizeConfig.defaultSize*Dimens.size2,
            left: SizeConfig.defaultSize*Dimens.size2,
            right: SizeConfig.defaultSize*Dimens.size2,

          ),
          child: InkWell(
            onTap: (){

            },
            child: Container(
              height: SizeConfig.defaultSize*Dimens.size5,
              decoration: BoxDecoration(
                color: ConstantColor.extraLightYellowColor,
                borderRadius: BorderRadius.all(
                  Radius.circular(SizeConfig.defaultSize*Dimens.size1),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Order# BKS00034',style: TextStyle(
                    color: ConstantColor.secondaryColor,
                    fontFamily: ConstantFonts.poppinsMedium,
                    fontSize: SizeConfig.defaultSize*Dimens.size2,

                  ),),
                  SvgPicture.asset(ConstantAssets.next),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
