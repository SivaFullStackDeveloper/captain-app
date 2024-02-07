// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:captain_app/commonWidgets/CustomProgressIndicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../commonWidgets/VerifierCustomAppBar.dart';
import '../../../../commonWidgets/VerifierCustomTextFormFeild.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../VerifyItem/controller/VerifyItemController.dart';
import '../../verifyItemChild/VerifyItemScreenScaffold2.dart';
import '../controller/ItemDetailController.dart';

class VerifierDetailScreen extends StatefulWidget {
  VerifierDetailScreen({Key? key}) : super(key: key);

  @override
  State<VerifierDetailScreen> createState() => _VerifierDetailScreenState();
}

class _VerifierDetailScreenState extends State<VerifierDetailScreen> {
  var items = ['weight',];
  var itemDetailController = Get.put(ItemDetailController());
  var verifyItemController = Get.put(VerifyItemController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=>itemDetailController.isLoading.value?CustomProgressIndicator(): SafeArea(
        child: SingleChildScrollView(
          child:Column(
            children: [
              ///--------------------------------- App Bar  ------------------------
              VerifierCustomAppBar(
                title: 'Detail',
              ),
              ///--------------------------------- Style  DropDown Button  ------------------------
              Padding(
                padding:  EdgeInsets.only(
                  top:SizeConfig.defaultSize*Dimens.size2,
                  left:SizeConfig.defaultSize*Dimens.size1,
                  right:SizeConfig.defaultSize*Dimens.size1,

                ),
                child: SizedBox(

                  child: DropdownButtonFormField(

                    decoration: InputDecoration(
                      hintText: ConstantString.style,
                      labelText:  ConstantString.style,
                      labelStyle: TextStyle(
                        color: ConstantColor.secondaryColor,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ConstantColor.greyColor,
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ConstantColor.secondaryColor,
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ConstantColor.secondaryColor,
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ConstantColor.secondaryColor,
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)),
                      ),
                    ),
                    items: itemDetailController.itemDetailsStyleName.value.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (dynamic value) {
                      itemDetailController.styleName.value = value;
                      var a = itemDetailController.itemDetailsStyleName.indexOf(value);
                      itemDetailController.styleId.value = itemDetailController.itemDetailsId[a];
                    },),
                  ),
              ),
              ///--------------------------------- amount Applied On String  DropDown Button  ------------------------
              Padding(
                padding:  EdgeInsets.only(
                  top:SizeConfig.defaultSize*Dimens.size2,
                  left:SizeConfig.defaultSize*Dimens.size1,
                  right:SizeConfig.defaultSize*Dimens.size1,

                ),
                child: SizedBox(

                  child: DropdownButtonFormField(

                    decoration: InputDecoration(
                      hintText: ConstantString.amountAppliedOnString.toUpperCase(),
                      labelText: ConstantString.amountAppliedOnString.toUpperCase(),
                      labelStyle: TextStyle(
                        color: ConstantColor.secondaryColor,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ConstantColor.greyColor,
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ConstantColor.secondaryColor,
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ConstantColor.secondaryColor,
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ConstantColor.secondaryColor,
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)),
                      ),
                    ),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (dynamic value) {
                      itemDetailController.amountToBeApplied.value =value;
                    },),
                ),
              ),
              ///--------------------------------- number Of  Pcs  Text Filed  ------------------------
              VerifierCustomTextFormFeild3(
                controller: itemDetailController.numberOfPcs,
                labeltext: ConstantString.numberOfPCS.toUpperCase(),
                hintText: ConstantString.enterNumber.toUpperCase(),
                sufixText: ConstantString.pcs,
              ),
              ///--------------------------------- enter  Weight  Text Filed  ------------------------

              VerifierCustomTextFormFeild3(
                controller: itemDetailController.weight,
                labeltext: ConstantString.weight.toUpperCase(),
                hintText: ConstantString.enterWeight.toUpperCase(),
                sufixText: ConstantString.gram,
              ),
              ///--------------------------------- rate  Text Filed  ------------------------
              VerifierCustomTextFormFeild3(
                controller: itemDetailController.rate,
                labeltext: ConstantString.rate.toUpperCase(),
                hintText: ConstantString.enterRate.toUpperCase(),
                sufixText: ConstantString.enterRate.toUpperCase(),
              ),
              ///--------------------------------- ADD ONE MORE Button  ------------------------
              Padding(
                padding: EdgeInsets.all(SizeConfig.defaultSize * Dimens.size1),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: SizeConfig.defaultSize * Dimens.size5,
                    width: SizeConfig.defaultSize * Dimens.size20,
                    decoration: BoxDecoration(
                        color: ConstantColor.secondaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add,
                          color: ConstantColor.whiteColor,
                        ),
                        Text(
                          'ADD ONE MORE',
                          style: TextStyle(
                            color: ConstantColor.whiteColor,
                            fontFamily: ConstantFonts.poppinsMedium,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ///--------------------------------- PROCEED FURTHER Button  ------------------------
              Padding(
                padding: EdgeInsets.all(SizeConfig.defaultSize * Dimens.size8),
              ),
              Padding(
                padding: EdgeInsets.all(SizeConfig.defaultSize * Dimens.size1),
                child: InkWell(
                  onTap: () {
                    verifyItemController.allItems.clear();
                   verifyItemController.allItems.addAll(
                     [
                         {
                           "style": itemDetailController.styleId.value,
                           "amountAppliedOn": items[0].toString(),
                           "pieceCount": itemDetailController.numberOfPcs.value.text,
                         "weight":   itemDetailController.weight.value.text,
                           "rate": itemDetailController.rate.value.text }

                     ]
                   );
                    verifyItemController.verifyItem(
                      verifyItemController.packageFile,
                      verifyItemController.productName.value.text.toString(),
                      verifyItemController.grossWeight.value.text,
                      verifyItemController.purity.value.text,

                    );
                  },
                  child: Container(
                      height: SizeConfig.defaultSize * Dimens.size5,
                      width: SizeConfig.defaultSize * Dimens.size20,
                      decoration: BoxDecoration(
                          color: ConstantColor.secondaryColor,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                        child: Text(
                          'PROCEED FURTHER',
                          style: TextStyle(
                              color: ConstantColor.whiteColor,
                              fontFamily: ConstantFonts.poppinsMedium),
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
