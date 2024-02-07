import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../res/Dimens.dart';
import '../../../../../../../../utils/SizeConfig.dart';
import '../controller/ToBeShippedOrderDetailController.dart';

class ToBeShippedOrderDetailCardView extends StatefulWidget {
  ToBeShippedOrderDetailCardView(
      {Key? key, this.title, this.quantity, this.image, this.index})
      : super(key: key);
  final index;
  final title;
  final quantity;
  final image;

  var indexValue;

  @override
  State<ToBeShippedOrderDetailCardView> createState() => _ToBeShippedOrderDetailCardViewState();
}

class _ToBeShippedOrderDetailCardViewState extends State<ToBeShippedOrderDetailCardView> {
  var toBeShippedOrderDetailController = Get.put(ToBeShippedOrderDetailController());


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          top: SizeConfig.defaultSize * Dimens.size1,
        ),
        child: InkWell(
          onTap: () => {},
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
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.defaultSize * Dimens.size1,
                      ),
                      child: Checkbox(
                        activeColor: ConstantColor.secondaryColor,
                        value: toBeShippedOrderDetailController.value.value,
                        onChanged: (value) {
                          setState(() {
                            toBeShippedOrderDetailController.value.value = value!;
                            if (toBeShippedOrderDetailController.allDeliveryItemsList.length - 1 ==
                                widget.index) {
                              toBeShippedOrderDetailController.isAllItemsChecked.value =
                                  true;
                            }
                          });
                        },
                      ),
                    ),
                  ),

                  Expanded(
                      flex: 4,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: SizeConfig.defaultSize * Dimens.size1,
                          right: SizeConfig.defaultSize * Dimens.size1,
                        ),
                        child: Container(
                          width: SizeConfig.defaultSize * Dimens.size6,
                          height: SizeConfig.defaultSize * Dimens.size6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(widget.image),
                                  fit: BoxFit.cover)),
                        ),
                      )),
                  Expanded(
                    flex: 8,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size2,
                        bottom: SizeConfig.defaultSize * Dimens.size2,
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${widget.title}",
                              style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsMedium,
                                  fontSize: SizeConfig.defaultSize *
                                      Dimens.size1Point4,
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
                                "Quantity: ${widget.quantity}",
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
