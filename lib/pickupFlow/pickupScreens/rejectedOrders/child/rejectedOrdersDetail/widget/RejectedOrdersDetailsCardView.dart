import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../res/Dimens.dart';
import '../../../../../../utils/SizeConfig.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../constants/ConstantString.dart';


class RejectedOrdersDetailsCardView extends StatefulWidget {

  const RejectedOrdersDetailsCardView({Key? key, this.title, this.status, this.quantity, this.image}) : super(key: key);
  final title;
  final quantity;
  final status;
  final image;

  @override
  State<RejectedOrdersDetailsCardView> createState() => _RejectedOrdersDetailsCardViewState();
}

class _RejectedOrdersDetailsCardViewState extends State<RejectedOrdersDetailsCardView> {
  //var reviewOrdersController = Get.put(ReviewOrdersController());


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          top: SizeConfig.defaultSize * Dimens.size1,
        ),
        child: InkWell(
          onTap: ()=>{

          },
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    SizeConfig.defaultSize * Dimens.size1Point3,
                  ),
                  color: ConstantColor.miniDarkYellowColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ///---------------------------- CheckBox -----------------------------

                  Expanded(
                      flex: 3,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.defaultSize * Dimens.size1,
                          right: SizeConfig.defaultSize * Dimens.size1,
                        ),
                        child: Container(
                          width: SizeConfig.defaultSize * Dimens.size8,
                          height: SizeConfig.defaultSize * Dimens.size8,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(widget.image),
                                  fit: BoxFit.cover)),
                        ),
                      )),
                  Expanded(
                    flex: 6,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size2,
                        bottom: SizeConfig.defaultSize * Dimens.size2,
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.title,
                              style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsMedium,
                                  fontSize:
                                  SizeConfig.defaultSize * Dimens.size1Point5,
                                  color: ConstantColor.secondaryColor,
                                  fontWeight: FontWeight.w900),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: SizeConfig.defaultSize * Dimens.sizePoint5,
                                bottom:
                                SizeConfig.defaultSize * Dimens.sizePoint5,
                              ),
                              child: Text(
                                "Quantity: "+ widget.quantity.toString(),
                                style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsMedium,
                                    fontSize:
                                    SizeConfig.defaultSize * Dimens.size1,
                                    color: ConstantColor.greyColor,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.only(
                                top: SizeConfig.defaultSize * Dimens.sizePoint5,
                                bottom:
                                SizeConfig.defaultSize * Dimens.sizePoint5,
                              ),
                              child: Text(
                                "Status: "+ widget.status.toUpperCase(),
                                style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsRegular,
                                    fontSize:
                                    SizeConfig.defaultSize * Dimens.size1,
                                    color: ConstantColor.greyColor,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),

                          ]),
                    ),
                  ),
                ],
              )),
        ));
  }
}
