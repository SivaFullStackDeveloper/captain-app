import 'package:captain_app/accountingFlow/screens/sale/saleInvoice/child/SaleInvoicePreviewScreen/SaleInvoicePreviewScreenScaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../constants/ConstantColor.dart';
import '../../../../../../constants/ConstantFonts.dart';
import '../../../../../../res/Dimens.dart';
import '../../../../../../utils/SizeConfig.dart';


class AllSaleInvoiceOrderList extends StatefulWidget {
  const AllSaleInvoiceOrderList({Key? key}) : super(key: key);

  @override
  State<AllSaleInvoiceOrderList> createState() => _AllSaleInvoiceOrderListState();
}

class _AllSaleInvoiceOrderListState extends State<AllSaleInvoiceOrderList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, var index) {
          SizeConfig().init(context);
          return Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.defaultSize * Dimens.size1,
                left: SizeConfig.defaultSize * Dimens.size2,
                right: SizeConfig.defaultSize * Dimens.size2,
              ),
              child: InkWell(
                onTap: () {
                  Get.to(()=>SaleInvoicePreviewScreenScaffold());
                },
                child: Container(
                  height: SizeConfig.defaultSize * Dimens.size12,
                  width: SizeConfig.defaultSize * Dimens.size18,
                  decoration: BoxDecoration(
                    color: ConstantColor.lightYellowColor,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.white38,
                        offset: Offset(
                          0.0,
                          0.0,
                        ),
                        blurRadius: 0.0,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: Colors.black12,
                        offset: Offset(
                          2.5,
                          2.5,
                        ),
                        blurRadius: 5.0,
                        spreadRadius: 1.0,
                      ),
                    ],
                    borderRadius: BorderRadius.all(
                      Radius.circular(Dimens.circularRadius),
                    ),
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size1,
                        left: SizeConfig.defaultSize * Dimens.size2,
                        right: SizeConfig.defaultSize * Dimens.size2,
                      ),
                      child:Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '1 GRAM Gold Sale',
                                        style: TextStyle(
                                            color: ConstantColor.blackColor,
                                            fontFamily: ConstantFonts.poppinsMedium,
                                            fontSize: SizeConfig.defaultSize * Dimens.size1Point5),
                                      ),
                                      Text(
                                        '21 SEP 22',
                                        style: TextStyle(
                                            color: ConstantColor.greyColor,
                                            fontFamily: ConstantFonts.poppinsMedium,
                                            fontSize: SizeConfig.defaultSize * Dimens.size1Point2),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: SizeConfig.defaultSize * Dimens.size8,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(
                                        '5,480.90',
                                        style: TextStyle(
                                            color: ConstantColor.blackColor,
                                            fontFamily: ConstantFonts.poppinsMedium,
                                            fontSize: SizeConfig.defaultSize * Dimens.size1Point5),
                                      ),
                                      Text(
                                        'INV0001',
                                        style: TextStyle(
                                            color: ConstantColor.greyColor,
                                            fontFamily: ConstantFonts.poppinsMedium,
                                            fontSize: SizeConfig.defaultSize * Dimens.size1Point2),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                color: ConstantColor.miniDarkYellowColor,
                                child: Text(
                                  'Under Settlement',
                                  style: TextStyle(
                                      color: ConstantColor.secondaryColor ,
                                      fontFamily: ConstantFonts.poppinsRegular,
                                      fontSize: SizeConfig.defaultSize *
                                          Dimens.size1Point2),
                                ),
                              ),
                            ],
                          ),
                          ),
                ),
              ));
        });
  }
}







class UnderSettlementOrdersList extends StatefulWidget {
  const UnderSettlementOrdersList({Key? key}) : super(key: key);

  @override
  State<UnderSettlementOrdersList> createState() => _UnderSettlementOrdersListState();
}

class _UnderSettlementOrdersListState extends State<UnderSettlementOrdersList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, var index) {
          SizeConfig().init(context);
          return Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.defaultSize * Dimens.size1,
                left: SizeConfig.defaultSize * Dimens.size2,
                right: SizeConfig.defaultSize * Dimens.size2,
              ),
              child: InkWell(
                onTap: () {

                },
                child: Container(
                  height: SizeConfig.defaultSize * Dimens.size12,
                  width: SizeConfig.defaultSize * Dimens.size18,
                  decoration: BoxDecoration(
                    color: ConstantColor.lightYellowColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(Dimens.circularRadius),
                    ),
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size2,
                        left: SizeConfig.defaultSize * Dimens.size2,
                        right: SizeConfig.defaultSize * Dimens.size2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Order# BKS00034',
                                style: TextStyle(
                                    color: ConstantColor.secondaryColor,
                                    fontFamily: ConstantFonts.poppinsBold,
                                    fontSize:
                                    SizeConfig.defaultSize * Dimens.size2),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Assigned : ',
                                    style: TextStyle(
                                        color: ConstantColor.blackColor,
                                        fontFamily: ConstantFonts.poppinsRegular,
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.size1Point5),
                                  ),
                                  Text(
                                    'Yuvaraj',
                                    style: TextStyle(
                                        color: ConstantColor.blackColor,
                                        fontFamily: ConstantFonts.poppinsBold,
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.size1Point8),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: ConstantColor.blackColor,
                            size: 23,
                          )
                        ],
                      )),
                ),
              ));
        });
  }
}





class SettledOrdersList extends StatefulWidget {
  const SettledOrdersList({Key? key}) : super(key: key);

  @override
  State<SettledOrdersList> createState() => _SettledOrdersListState();
}

class _SettledOrdersListState extends State<SettledOrdersList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, var index) {
          SizeConfig().init(context);
          return Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.defaultSize * Dimens.size1,
                left: SizeConfig.defaultSize * Dimens.size2,
                right: SizeConfig.defaultSize * Dimens.size2,
              ),
              child: InkWell(
                onTap: () {

                },
                child: Container(
                  height: SizeConfig.defaultSize * Dimens.size20,
                  width: SizeConfig.defaultSize * Dimens.size18,
                  decoration: BoxDecoration(
                    color: ConstantColor.lightYellowColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(Dimens.circularRadius),
                    ),
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size2,
                        left: SizeConfig.defaultSize * Dimens.size2,
                        right: SizeConfig.defaultSize * Dimens.size2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(

                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Order# BKS00034',
                                style: TextStyle(
                                    color: ConstantColor.secondaryColor,
                                    fontFamily: ConstantFonts.poppinsBold,
                                    fontSize:
                                    SizeConfig.defaultSize * Dimens.size2),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Packed On: ',
                                    style: TextStyle(
                                        color: ConstantColor.blackColor,
                                        fontFamily: ConstantFonts.poppinsRegular,
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.size1Point5),
                                  ),
                                  Text(
                                    ' 30 Apr , 2022 1:40 PM',
                                    style: TextStyle(
                                        color: ConstantColor.blackColor,
                                        fontFamily: ConstantFonts.poppinsBold,
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.size1Point5),
                                  ),
                                ],
                              ),

                              Row(
                                children: [
                                  Text(
                                    'Packed By : ',
                                    style: TextStyle(
                                        color: ConstantColor.blackColor,
                                        fontFamily: ConstantFonts.poppinsRegular,
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.size1Point5),
                                  ),
                                  Text(
                                    'Yuvaraj',
                                    style: TextStyle(
                                        color: ConstantColor.blackColor,
                                        fontFamily: ConstantFonts.poppinsBold,
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.size1Point5),
                                  ),
                                ],
                              ),

                              Row(
                                children: [
                                  Text(
                                    'Docket Number:   ',
                                    style: TextStyle(
                                        color: ConstantColor.blackColor,
                                        fontFamily: ConstantFonts.poppinsRegular,
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.size1Point5),
                                  ),
                                  Text(
                                    '0581094993',
                                    style: TextStyle(
                                        color: ConstantColor.blackColor,
                                        fontFamily: ConstantFonts.poppinsBold,
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.size1Point5),
                                  ),
                                ],
                              ),

                              Row(
                                children: [
                                  Text(
                                    'BRN Number : ',
                                    style: TextStyle(
                                        color: ConstantColor.blackColor,
                                        fontFamily: ConstantFonts.poppinsRegular,
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.size1Point5),
                                  ),
                                  Text(
                                    'A303737',
                                    style: TextStyle(
                                        color: ConstantColor.blackColor,
                                        fontFamily: ConstantFonts.poppinsBold,
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.size1Point5),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: ConstantColor.blackColor,
                            size: 23,
                          )
                        ],
                      )),
                ),
              ));
        });
  }
}

