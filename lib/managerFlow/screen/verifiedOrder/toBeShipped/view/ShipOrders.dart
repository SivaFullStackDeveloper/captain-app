import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../commonWidgets/VerifierCustomAppBar.dart';
import '../../../../../constants/ConstantColor.dart';
import '../../../../../constants/ConstantFonts.dart';
import '../../../../../res/Dimens.dart';
import '../../../../../utils/SizeConfig.dart';
import '../child/handOverToPartner/ToBeShippedScaffold.dart';


class ShipOrders extends StatefulWidget {
  const ShipOrders({Key? key}) : super(key: key);

  @override
  State<ShipOrders> createState() => _ShipOrdersState();
}

class _ShipOrdersState extends State<ShipOrders> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerifierCustomAppBar(title: 'Ship Orders'),
        Expanded(
            child: ListView.builder(
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
                        onTap: () {},
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Baf# BKS00034',
                                        style: TextStyle(
                                            color: ConstantColor.secondaryColor,
                                            fontFamily:
                                                ConstantFonts.poppinsBold,
                                            fontSize: SizeConfig.defaultSize *
                                                Dimens.size2),
                                      ),
                                      Text(
                                        'Pickup Agent: Arshit R',
                                        style: TextStyle(
                                            color: ConstantColor.blackColor,
                                            fontFamily:
                                                ConstantFonts.poppinsRegular,
                                            fontSize: SizeConfig.defaultSize *
                                                Dimens.size1Point6),
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    onPressed: () => Get.to(
                                        () => const ToBeShippedScaffold()),
                                    icon: Icon(
                                      Icons.arrow_forward_ios,
                                      color: ConstantColor.blackColor,
                                      size: 23,
                                    ),
                                  )
                                ],
                              )),
                        ),
                      ));
                }))
      ],
    );
  }
}
