import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../constants/ConstantColor.dart';
import '../../../../../../constants/ConstantFonts.dart';
import '../../../../../../res/Dimens.dart';
import '../../../../../../utils/SizeConfig.dart';
import '../../../../otpScreenManager/view/newOrdersPakedScaffold.dart';
import '../../tobeShipped/managerShipped/view/child/transitOrderDetails/TransitOrderDetailsScaffold.dart';
import '../child/child/view/child/ReviewCancelOrderScaffold.dart';






class NewOrdersList extends StatefulWidget {
  const NewOrdersList({Key? key}) : super(key: key);

  @override
  State<NewOrdersList> createState() => _NewOrdersListState();
}

class _NewOrdersListState extends State<NewOrdersList> {
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
                              Text(
                                'Need To Assigned Or Packed',
                                style: TextStyle(
                                    color: ConstantColor.blackColor,
                                    fontFamily: ConstantFonts.poppinsRegular,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point6),
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




class TransitOrdersList extends StatefulWidget {
  const TransitOrdersList({Key? key}) : super(key: key);

  @override
  State<TransitOrdersList> createState() => _TransitOrdersListState();
}

class _TransitOrdersListState extends State<TransitOrdersList> {
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
                  Get.to(()=>TransitOrderDetailsScaffold());

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
                              Text(
                                'Need To Assigned Or Packed',
                                style: TextStyle(
                                    color: ConstantColor.blackColor,
                                    fontFamily: ConstantFonts.poppinsRegular,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point6),
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



class DeliveredOrdersList extends StatefulWidget {
  const DeliveredOrdersList({Key? key}) : super(key: key);

  @override
  State<DeliveredOrdersList> createState() => _DeliveredOrdersListState();
}

class _DeliveredOrdersListState extends State<DeliveredOrdersList> {
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




class AssignedOrdersList extends StatefulWidget {
  const AssignedOrdersList({Key? key}) : super(key: key);

  @override
  State<AssignedOrdersList> createState() => _AssignedOrdersListState();
}

class _AssignedOrdersListState extends State<AssignedOrdersList> {
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


class CancelOrdersList extends StatefulWidget {
  const CancelOrdersList({Key? key}) : super(key: key);

  @override
  State<CancelOrdersList> createState() => _CancelOrdersListState();
}

class _CancelOrdersListState extends State<CancelOrdersList> {
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

                  Get.to(()=>ReviewCancelOrderScaffold());
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


class PackedOrdersList extends StatefulWidget {
  const PackedOrdersList({Key? key}) : super(key: key);

  @override
  State<PackedOrdersList> createState() => _PackedOrdersListState();
}

class _PackedOrdersListState extends State<PackedOrdersList> {
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
                  PackedBottomSheet(context,true);

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

