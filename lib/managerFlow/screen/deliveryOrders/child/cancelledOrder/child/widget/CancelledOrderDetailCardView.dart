import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../res/Dimens.dart';
import '../../../../../../../utils/SizeConfig.dart';
import '../controller/CancelledOrderDetailController.dart';

class CancelledOrderDetailView extends StatefulWidget {
  CancelledOrderDetailView(
      {Key? key, this.title, this.quantity, this.image, this.index})
      : super(key: key);
  final index;
  final title;
  final quantity;
  final image;

  var indexValue;

  @override
  State<CancelledOrderDetailView> createState() => _CancelledOrderDetailViewState();
}

class _CancelledOrderDetailViewState extends State<CancelledOrderDetailView> {
  var cancelledOrderDetailController = Get.put(CancelledOrderDetailController());

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
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.defaultSize * Dimens.size1,
                      ),
                      child: Checkbox(
                        activeColor: ConstantColor.secondaryColor,
                        value: cancelledOrderDetailController.value.value,
                        onChanged: (value) {
                          setState(() {
                            cancelledOrderDetailController.value.value = value!;
                            if (cancelledOrderDetailController.allDeliveryItemsList.length - 1 ==
                                widget.index) {
                              cancelledOrderDetailController.isAllItemsChecked.value = true;
                            }
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
                          width: SizeConfig.defaultSize * Dimens.size7,
                          height: SizeConfig.defaultSize * Dimens.size7,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(widget.image),
                                    fit: BoxFit.cover))
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
