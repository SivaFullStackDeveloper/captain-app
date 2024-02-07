import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../../../constants/ConstantAssets.dart';
import '../../../../../../res/Dimens.dart';
import '../../../../../../utils/SizeConfig.dart';
import '../../../../../constants/ConstantColor.dart';
import '../../../../../constants/ConstantFonts.dart';
import '../../../../../constants/ConstantString.dart';
import '../widget/AllClientAdvanceInvoiceOrderList.dart';
import '../widget/CustomeTabContainerForAdvanceInvoice.dart';


class AdvanceInvoiceScreen extends StatefulWidget {
  const AdvanceInvoiceScreen({Key? key}) : super(key: key);

  @override
  State<AdvanceInvoiceScreen> createState() => _AdvanceInvoiceScreenState();
}

class _AdvanceInvoiceScreenState extends State<AdvanceInvoiceScreen> {
  var allTab = true;
  var receiptTab = false;
  var refundTab = false;
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
                        width: SizeConfig.defaultSize * Dimens.size4,
                        height: SizeConfig.defaultSize * Dimens.size4,
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
                  Text(ConstantString.advanceInvoice.tr,style: TextStyle(
                    fontFamily: ConstantFonts.poppinsMedium,
                    fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                    color: ConstantColor.secondaryColor,
                  )),
                  SizedBox(
                    width: SizeConfig.defaultSize * Dimens.size8,
                  ),
                  Icon(Icons.share,
                    size: SizeConfig.defaultSize * Dimens.size3,
                    color: ConstantColor.secondaryColor,
                  )
                ],
              )
          ),
          // Container(
          //   margin: EdgeInsets.all(SizeConfig.defaultSize*Dimens.size2),
          //   padding:  EdgeInsets.all(
          //     SizeConfig.defaultSize*Dimens.size2,
          //   ),
          //   decoration: BoxDecoration(
          //     color: ConstantColor.lightYellowColor,
          //   ),
          //   child: TextField(
          //     decoration: InputDecoration.collapsed(
          //         hintText: 'Search by user name',
          //         hintStyle: TextStyle(
          //             fontFamily: ConstantFonts.poppinsMedium,
          //             fontSize: SizeConfig.defaultSize * Dimens.size1Point3,
          //             color: ConstantColor.secondaryColor)
          //     ),
          //   ),
          // ),
          Row(
            children: [
              ///-------------------------------------------- All button widget ---------------------------------
              InkWell(
                onTap: (){
                  // setState(() {
                  //   allTab = true;
                  //   underSettlementTab = false;
                  //   settledTab = false;
                  // });
                },
                child: CustomTabContainerButtonForAdvanceInvoice(
                    isPressed:allTab,
                    text:'All'
                ),
              ),
              ///-------------------------------------------- Buy Gold button widget ---------------------------------
              InkWell(
                onTap: (){
                  // Get.to(()=>ReviewOrdersScreen());
                  setState(() {
                    // allTab =false;
                    // underSettlementTab = true;
                    // settledTab = false;
                  });
                },
                child: CustomTabContainerButtonForAdvanceInvoice(
                    isPressed:receiptTab,
                    text:'Receipts'
                ),
              ),
              ///-------------------------------------------- Upload Gold button widget ---------------------------------
              InkWell(
                onTap: (){
                  setState(() {
                    // allTab =false;
                    // underSettlementTab = false;
                    // settledTab = true;
                    // print(settledTab.toString());

                  });
                },
                child: CustomTabContainerButtonForAdvanceInvoice(
                    isPressed:refundTab,
                    text:'Refund'
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
                Text("Total : ₹ 670805.00",style: TextStyle(
                  fontFamily: ConstantFonts.poppinsMedium,
                  fontSize: SizeConfig.defaultSize * Dimens.size1Point2,
                  color: ConstantColor.blackColor,
                )),
              ],
            ),
          ),


          ///-------------------------------------------- List of new order ---------------------------------

          Expanded(child: AllClientAdvanceInvoiceOrderList()),
          // allTab ==true? Expanded(child: AllInvoiceOrderList()):
          // assignedTab==true?Expanded(child: AssignedOrdersList()):Container(),
          // packedTab==true? Expanded(child: PackedOrdersList()):Container(),
        ],
      ),
    );
  }
}
