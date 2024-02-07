import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../res/Dimens.dart';
import '../../../../../../../utils/SizeConfig.dart';
import '../controller/CheckItemController.dart';


class CheckItemCardView extends StatefulWidget {

  const CheckItemCardView({Key? key, this.title, this.value, this.quantity, this.image}) : super(key: key);
  final title;
  final quantity;
  final value;
  final image;

  @override
  State<CheckItemCardView> createState() => _CheckItemCardViewState();
}

class _CheckItemCardViewState extends State<CheckItemCardView> {
  var reviewOrdersController = Get.put(CheckItemController());


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
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.defaultSize * Dimens.size1,
                      ),
                      child: Checkbox(
                        activeColor: ConstantColor.secondaryColor,
                        value: reviewOrdersController.value.value,
                        onChanged: (value) {
                          setState(() {
                            reviewOrdersController.value.value = value!;
                            //reviewOrdersController.whatsapp.value = value;

                          });
                        },
                      ),
                    ),
                  ),

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
                                "Quantity: "+ widget.quantity.toUpperCase(),
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
