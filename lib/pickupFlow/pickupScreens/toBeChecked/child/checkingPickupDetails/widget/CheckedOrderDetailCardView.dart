import 'package:captain_app/pickupFlow/pickupScreens/toBeChecked/child/checkingPickupDetails/child/CheckItemScaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../res/Dimens.dart';
import '../../../../../../utils/SizeConfig.dart';
import '../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../constants/ConstantString.dart';
import '../controller/CheckingPickupDetailsController.dart';


class StartCheckingProcessCardView extends StatefulWidget {

  const StartCheckingProcessCardView({Key? key, this.title, this.status, this.quantity, this.image, this.itemId}) : super(key: key);
  final itemId;
  final title;
  final quantity;
  final status;
  final image;

  @override
  State<StartCheckingProcessCardView> createState() => _StartCheckingProcessCardViewState();
}

class _StartCheckingProcessCardViewState extends State<StartCheckingProcessCardView> {
  var checkingPickupDetailsController = Get.put(CheckingPickupDetailsController());


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          top: SizeConfig.defaultSize * Dimens.size1,
        ),
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  SizeConfig.defaultSize * Dimens.size1Point3,
                ),
                color: ConstantColor.miniDarkYellowColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                ///--------------------- Item Image ----------------------
                Expanded(
                    flex: 3,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: SizeConfig.defaultSize * Dimens.size1Point5,
                        right: SizeConfig.defaultSize * Dimens.size1Point5,
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


                          Padding(
                            padding: EdgeInsets.only(
                              top: SizeConfig.defaultSize * Dimens.sizePoint5,
                              bottom:
                              SizeConfig.defaultSize * Dimens.sizePoint5,
                            ),
                            child: InkWell(
                              onTap: ()=> {
                                Get.to(()=>const CheckItemScaffold(),arguments: [
                                  {"id": checkingPickupDetailsController.id.toString()},
                                  {"itemId": widget.itemId}
                                ])
                              },
                              child: Text(
                                "Start Checking Process".toUpperCase(),
                                style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsMedium,
                                    fontSize:
                                    SizeConfig.defaultSize * Dimens.size1Point3,
                                    color: ConstantColor.secondaryColor,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                          ),

                        ]),
                  ),
                ),
              ],
            )));
  }
}
