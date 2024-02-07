import 'package:captain_app/accountingFlow/screens/Purchase/ReleaseOfCustody/child/CustodyReleseScreen/widget/CustodyReleaseOrderList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../res/Dimens.dart';
import '../../../../../../../utils/SizeConfig.dart';




class CustodyReleaseScreen extends StatefulWidget {
  var name;
  CustodyReleaseScreen({Key? key,required this.name}) : super(key: key);

  @override
  State<CustodyReleaseScreen> createState() => _CustodyReleaseScreenState();
}

class _CustodyReleaseScreenState extends State<CustodyReleaseScreen> {

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
              child: Row(
                children: [
                  InkWell(
                    onTap: ()=> Get.back(),
                    child: Container(
                        width: SizeConfig.defaultSize * Dimens.size5,
                        height: SizeConfig.defaultSize * Dimens.size5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            SizeConfig.defaultSize * Dimens.size1,
                          ),
                          border: Border.all(
                            color: ConstantColor.secondaryColor, //                   <--- border color
                            width: SizeConfig.defaultSize * Dimens.sizePoint1,
                          ),
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          size: SizeConfig.defaultSize * Dimens.size3,
                          color: ConstantColor.secondaryColor,
                        )
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.defaultSize * Dimens.size1,
                  ),
                  Text(widget.name,style: TextStyle(
                    fontFamily: ConstantFonts.poppinsMedium,
                    fontSize: SizeConfig.defaultSize * Dimens.size2,
                    color: ConstantColor.secondaryColor,
                  )),
                  SizedBox(
                    width: SizeConfig.defaultSize * Dimens.size10,
                  ),
                  Icon(Icons.share,
                    size: SizeConfig.defaultSize * Dimens.size3,
                    color: ConstantColor.secondaryColor,
                  )
                ],
              )
          ),
          ///-------------------------------------------- Filter icon and Today date---------------------------------
          Padding(
            padding:  EdgeInsets.only(
              top:SizeConfig.defaultSize*Dimens.size2,
              left:SizeConfig.defaultSize*Dimens.size2,
              right:SizeConfig.defaultSize*Dimens.size2,
            ),
            child: Row(
              children: [
                Text("Today",style: TextStyle(
                  fontFamily: ConstantFonts.poppinsMedium,
                  fontSize: SizeConfig.defaultSize * Dimens.size2Point1,
                  color: ConstantColor.blackColor,
                )),
                SvgPicture.asset(
                    ConstantAssets.downArrow,
                    height: SizeConfig.defaultSize * Dimens.size3,
                    width: SizeConfig.defaultSize * Dimens.size3,
                    fit: BoxFit.scaleDown
                ),
                SizedBox(
                  width: SizeConfig.defaultSize * Dimens.size22,
                ),
                SvgPicture.asset(
                  ConstantAssets.curvedFilter,
                  height: SizeConfig.defaultSize * Dimens.size2,
                )
              ],
            ),
          ),


          ///-------------------------------------------- List of new order ---------------------------------

          const Expanded(child: CustodyReleaseOrderList()),
          // allTab ==true? Expanded(child: AllInvoiceOrderList()):
          // assignedTab==true?Expanded(child: AssignedOrdersList()):Container(),
          // packedTab==true? Expanded(child: PackedOrdersList()):Container(),
        ],
      ),
    );
  }
}
