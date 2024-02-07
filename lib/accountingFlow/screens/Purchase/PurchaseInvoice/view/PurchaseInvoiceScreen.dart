import 'package:captain_app/accountingFlow/screens/Purchase/PurchaseInvoice/widget/AllPurchaseInvoiceOrderList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../../../constants/ConstantAssets.dart';
import '../../../../../../res/Dimens.dart';
import '../../../../../../utils/SizeConfig.dart';
import '../../../../../constants/ConstantColor.dart';
import '../../../../../constants/ConstantFonts.dart';
import '../../../../../constants/ConstantString.dart';
import '../widget/CustomTabContainerButtonForPurchaseInvoice.dart';



class PurchaseInvoiceScreen extends StatefulWidget {
  const PurchaseInvoiceScreen({Key? key}) : super(key: key);

  @override
  State<PurchaseInvoiceScreen> createState() => _PurchaseInvoiceScreenState();
}

class _PurchaseInvoiceScreenState extends State<PurchaseInvoiceScreen> {
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
                  Text(ConstantString.purchaseInvoice.tr,style: TextStyle(
                    fontFamily: ConstantFonts.poppinsMedium,
                    fontSize: SizeConfig.defaultSize * Dimens.size2,
                    color: ConstantColor.secondaryColor,
                  )),
                  SizedBox(
                    width: SizeConfig.defaultSize * Dimens.size9,
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
                child: CustomTabContainerButtonForPurchaseInvoice(
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
                child: CustomTabContainerButtonForPurchaseInvoice(
                    isPressed:underSettlementTab,
                    text:'Old Gold'
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
                child: CustomTabContainerButtonForPurchaseInvoice(
                    isPressed:settledTab,
                    text:'Custody Gold'
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

          Expanded(child: AllPurchaseInvoiceOrderList()),
          // allTab ==true? Expanded(child: AllInvoiceOrderList()):
          // assignedTab==true?Expanded(child: AssignedOrdersList()):Container(),
          // packedTab==true? Expanded(child: PackedOrdersList()):Container(),
        ],
      ),
    );
  }
}
