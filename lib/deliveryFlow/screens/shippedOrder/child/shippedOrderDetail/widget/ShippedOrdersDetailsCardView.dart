import 'package:captain_app/constants/ConstantString.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../constants/ConstantColor.dart';
import '../../../../../../constants/ConstantFonts.dart';
import '../../../../../../res/Dimens.dart';
import '../../../../../../utils/SizeConfig.dart';
import '../controller/ShippedOrderDetailController.dart';


class ShippedOrdersDetailsCardView extends StatefulWidget {

  const ShippedOrdersDetailsCardView({Key? key, this.title, this.quantity, this.image}) : super(key: key);
  final title;
  final quantity;
  final image;

  @override
  State<ShippedOrdersDetailsCardView> createState() => _ShippedOrdersDetailsCardViewState();
}

class _ShippedOrdersDetailsCardViewState extends State<ShippedOrdersDetailsCardView> {
  var shippedOrderDetailController = Get.put(ShippedOrderDetailController());


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
                  ///---------------------------- Item Image -----------------------------
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
                                  image: AssetImage(widget.image),
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

                            ///---------------------------- title -----------------------------
                            Text(
                              widget.title,
                              style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsMedium,
                                  fontSize:
                                  SizeConfig.defaultSize * Dimens.size1Point5,
                                  color: ConstantColor.secondaryColor,
                                  fontWeight: FontWeight.w900),
                            ),

                            ///---------------------------- Quantity -----------------------------
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
