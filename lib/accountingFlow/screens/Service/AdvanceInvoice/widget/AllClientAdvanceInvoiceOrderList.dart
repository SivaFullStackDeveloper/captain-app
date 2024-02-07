import 'package:captain_app/accountingFlow/screens/Purchase/ReleaseOfCustody/child/CustodyReleseScreen/CustodyReleaseScaffold.dart';
import 'package:captain_app/accountingFlow/screens/Service/AdvanceInvoice/child/AdvanceInvoiceDownload/AdvanceInvoiceDownloadScaffold.dart';
import 'package:captain_app/constants/ConstantAssets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../constants/ConstantColor.dart';
import '../../../../../../constants/ConstantFonts.dart';
import '../../../../../../res/Dimens.dart';
import '../../../../../../utils/SizeConfig.dart';






class AllClientAdvanceInvoiceOrderList extends StatefulWidget {
  const AllClientAdvanceInvoiceOrderList({Key? key}) : super(key: key);

  @override
  State<AllClientAdvanceInvoiceOrderList> createState() => _AllClientAdvanceInvoiceOrderListState();
}

class _AllClientAdvanceInvoiceOrderListState extends State<AllClientAdvanceInvoiceOrderList> {
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
                  Get.to(()=> AdvanceInvoiceDownloadScaffold());
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
                      top: SizeConfig.defaultSize * Dimens.size1,
                      left: SizeConfig.defaultSize * Dimens.size2,
                      right: SizeConfig.defaultSize * Dimens.size2,
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: SizeConfig.defaultSize * Dimens.size6,
                          height: SizeConfig.defaultSize * Dimens.size6,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: ConstantColor.whiteColor),

                          ///-------------------- Icons inside circle -----------------
                          child: Image.asset(ConstantAssets.userProfilePicture,
                              height: SizeConfig.defaultSize * Dimens.size1,
                              width: SizeConfig.defaultSize * Dimens.size1,
                              fit: BoxFit.scaleDown),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'VERIFY #0001',
                              style: TextStyle(
                                  color: ConstantColor.secondaryColor,
                                  fontFamily: ConstantFonts.poppinsMedium,
                                  fontSize: SizeConfig.defaultSize * Dimens.size1Point5),
                            ),
                            Text(
                              'Advance Receipts',
                              style: TextStyle(
                                  color: ConstantColor.blackColor,
                                  fontFamily: ConstantFonts.poppinsMedium,
                                  fontSize: SizeConfig.defaultSize * Dimens.size1Point2),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: SizeConfig.defaultSize * Dimens.size8,
                        ),
                        SizedBox(
                            child: SvgPicture.asset(
                              ConstantAssets.next,
                              height: SizeConfig.defaultSize * Dimens.size2,
                              color: ConstantColor.secondaryColor,
                            )
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

