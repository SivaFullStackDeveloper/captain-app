import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../../../constants/ConstantAssets.dart';
import '../../../../../../constants/ConstantColor.dart';
import '../../../../../../constants/ConstantFonts.dart';
import '../../../../../../constants/ConstantString.dart';
import '../../../../../../res/Dimens.dart';
import '../../../../../../utils/SizeConfig.dart';
import '../widget/AllPurityCheckOrderList.dart';




class ForPurityCheckScreen extends StatefulWidget {
  const ForPurityCheckScreen({Key? key}) : super(key: key);

  @override
  State<ForPurityCheckScreen> createState() => _ForPurityCheckScreenState();
}

class _ForPurityCheckScreenState extends State<ForPurityCheckScreen> {
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: ()=> Get.back(),
                    child: Container(
                        padding: EdgeInsets.all(
                          SizeConfig.defaultSize * Dimens.size1,
                        ),
                        width: SizeConfig.defaultSize * Dimens.size4
                        ,
                        height: SizeConfig.defaultSize * Dimens.size4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            SizeConfig.defaultSize * Dimens.size1,
                          ),
                          border: Border.all(
                            color: ConstantColor.greyColor, //                   <--- border color
                            width: SizeConfig.defaultSize * Dimens.sizePoint1,
                          ),
                        ),
                        child: SvgPicture.asset(
                          ConstantAssets.backArrow,
                          height: SizeConfig.defaultSize * Dimens.sizePoint1,
                          color: ConstantColor.blackColor,
                        )
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.defaultSize * Dimens.size1,
                  ),
                  Text("For Purity Check",style: TextStyle(
                    fontFamily: ConstantFonts.poppinsBold,
                    fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                    color: ConstantColor.secondaryColor,
                  )),
                  SizedBox(
                    width: SizeConfig.defaultSize * Dimens.size8,
                  ),
                  InkWell(
                    onTap: (){
                      // Get.to(()=> const ProfileScaffold());
                    },
                    child:  SvgPicture.asset(
                        ConstantAssets.qrCodeScan,
                        height: SizeConfig.defaultSize * Dimens.size3,
                        width: SizeConfig.defaultSize * Dimens.size3,
                        fit: BoxFit.scaleDown
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.defaultSize * Dimens.size1Point5,
                  ),
                  InkWell(
                    onTap: (){},
                    child:  SvgPicture.asset(
                        ConstantAssets.googleTranslate,
                        height: SizeConfig.defaultSize * Dimens.size3,
                        width: SizeConfig.defaultSize * Dimens.size3,
                        fit: BoxFit.scaleDown
                    ),
                  ),


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

              ],
            ),
          ),

          ///-------------------------------------------- List of new order ---------------------------------

          const Expanded(child: AllForPurityCheckOrderList()),
          // allTab ==true? Expanded(child: AllInvoiceOrderList()):
          // assignedTab==true?Expanded(child: AssignedOrdersList()):Container(),
          // packedTab==true? Expanded(child: PackedOrdersList()):Container(),
        ],
      ),
    );
  }
}
