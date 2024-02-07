import 'package:captain_app/accountingFlow/screens/Sale/saleInvoice/widget/AllSaleInvoiceOrderList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../../../constants/ConstantAssets.dart';
import '../../../../../../res/Dimens.dart';
import '../../../../../../utils/SizeConfig.dart';
import '../../../../../constants/ConstantColor.dart';
import '../../../../../constants/ConstantFonts.dart';
import '../../../../../constants/ConstantString.dart';
import '../widget/customTabContainerButtonForSaleInvoice.dart';


class SaleInvoiceScreen extends StatefulWidget {
  const SaleInvoiceScreen({Key? key}) : super(key: key);

  @override
  State<SaleInvoiceScreen> createState() => _SaleInvoiceScreenState();
}

class _SaleInvoiceScreenState extends State<SaleInvoiceScreen> {
  var allTab = true;
  var underSettlementTab = false;
  var settledTab = false;
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
                Text(ConstantString.saleInvoice.tr,style: TextStyle(
                  fontFamily: ConstantFonts.poppinsMedium,
                  fontSize: SizeConfig.defaultSize * Dimens.size2,
                  color: ConstantColor.secondaryColor,
                )),
                SizedBox(
                  width: SizeConfig.defaultSize * Dimens.size12,
                ),
                Icon(Icons.share,
                  size: SizeConfig.defaultSize * Dimens.size3,
                  color: ConstantColor.secondaryColor,
                )
              ],
            )
          ),

          Row(

            children: [
              ///-------------------------------------------- new Tab button widget ---------------------------------
              InkWell(
                onTap: (){
                  // setState(() {
                  //   allTab = true;
                  //   underSettlementTab = false;
                  //   settledTab = false;
                  // });
                },
                child: CustomTabContainerButtonForSaleInvoice(
                    isPressed:allTab,
                    text:'All'
                ),
              ),
              ///-------------------------------------------- Assigned button widget ---------------------------------
              InkWell(
                onTap: (){
                  // Get.to(()=>ReviewOrdersScreen());
                  setState(() {
                    // allTab =false;
                    // underSettlementTab = true;
                    // settledTab = false;
                  });
                },
                child: CustomTabContainerButtonForSaleInvoice(
                    isPressed:underSettlementTab,
                    text:'Under Settlement'
                ),
              ),
              ///-------------------------------------------- Packed button widget ---------------------------------
              InkWell(
                onTap: (){
                  setState(() {
                    // allTab =false;
                    // underSettlementTab = false;
                    // settledTab = true;
                    // print(settledTab.toString());

                  });
                },
                child: CustomTabContainerButtonForSaleInvoice(
                    isPressed:settledTab,
                    text:'Settled'
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
                  width: SizeConfig.defaultSize * Dimens.size12,
                ),
                Text("Total: ₹ 670805.00",style: TextStyle(
                  fontFamily: ConstantFonts.poppinsMedium,
                  fontSize: SizeConfig.defaultSize * Dimens.size1Point2,
                  color: ConstantColor.blackColor,
                )),
              ],
            ),
          ),


          ///-------------------------------------------- List of new order ---------------------------------

          Expanded(child: AllSaleInvoiceOrderList()),
          // allTab ==true? Expanded(child: AllInvoiceOrderList()):
          // assignedTab==true?Expanded(child: AssignedOrdersList()):Container(),
          // packedTab==true? Expanded(child: PackedOrdersList()):Container(),
        ],
      ),
    );
  }
}
