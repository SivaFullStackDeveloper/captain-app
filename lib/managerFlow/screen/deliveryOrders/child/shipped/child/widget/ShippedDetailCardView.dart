import 'package:captain_app/constants/ConstantString.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../res/Dimens.dart';
import '../../../../../../../utils/SizeConfig.dart';


class ShippedDetailCardView extends StatefulWidget {

  const ShippedDetailCardView({Key? key, this.title, this.quantity, this.image}) : super(key: key);
  final title;
  final quantity;
  final image;

  @override
  State<ShippedDetailCardView> createState() => _ShippedDetailCardViewState();
}

class _ShippedDetailCardViewState extends State<ShippedDetailCardView> {

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
                  ///---------------------------- Image -----------------------------

                  Expanded(
                      flex: 2,
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
                                    fit: BoxFit.cover))),
                        ),
                      ),
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

                            ///-------------------------- Title text ------------------------------
                            Text(
                              widget.title,
                              style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsMedium,
                                  fontSize:
                                  SizeConfig.defaultSize * Dimens.size1Point5,
                                  color: ConstantColor.secondaryColor,
                                  fontWeight: FontWeight.w900),
                            ),

                            ///-------------------------- Quantity text ------------------------------

                            Padding(
                              padding: EdgeInsets.only(
                                top: SizeConfig.defaultSize * Dimens.sizePoint5,
                                bottom:
                                SizeConfig.defaultSize * Dimens.sizePoint5,
                              ),
                              child: Text(
                                "${ConstantString.quantity.tr} ${widget.quantity}",
                                style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsMedium,
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
