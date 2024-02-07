// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:captain_app/commonWidgets/CustomProgressIndicator.dart';
import 'package:captain_app/utils/customObject/CustomObject.dart';
import 'package:captain_app/verifierFlow/screens/homeScreen/controller/ToBeVerifiedController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/ConstantColor.dart';
import '../../../constants/ConstantFonts.dart';
import '../../../res/Dimens.dart';
import '../../../utils/SizeConfig.dart';
import '../verifierFlow/screens/selectVehicle/controller/SelectVehicleController.dart';
import '../verifierFlow/screens/toBeReached/view/ToBeReachedMapScreenScaffold.dart';

class NewVerificationCard extends StatefulWidget {
  var length;
  var idNo;
  var kms;
   NewVerificationCard({Key? key,this.length,this.idNo,this.kms}) : super(key: key);

  @override
  State<NewVerificationCard> createState() => _NewVerificationCardState();
}

class _NewVerificationCardState extends State<NewVerificationCard> {
  var verifierController = Get.put(VerifierHomeScreenController());
  @override
  Widget build(BuildContext context) {
    return verifierController.requests.isNotEmpty?ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: verifierController.requests.length,
        itemBuilder: (context, var index) {
          SizeConfig().init(context);
          return Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.defaultSize * Dimens.size1,
                left: SizeConfig.defaultSize * Dimens.size2,
                right: SizeConfig.defaultSize * Dimens.size2,
              ),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              verifierController.requests[index].orderId.toString(),
                              style: TextStyle(
                                  color: ConstantColor.secondaryColor,
                                  fontFamily: ConstantFonts.poppinsBold,
                                  fontSize: SizeConfig.defaultSize *
                                      Dimens.size1Point6),
                            ),
                            Text(
                              'SHOW DIRECTIONS',
                              style: TextStyle(
                                  color: ConstantColor.secondaryColor,
                                  fontFamily: ConstantFonts.poppinsBold,
                                  fontSize: SizeConfig.defaultSize *
                                      Dimens.size1Point5),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: SizeConfig.defaultSize * Dimens.size3,
                          ),
                          child: Text(verifierController.requests[index].distance.toString()+' Kms Away',
                            style: TextStyle(
                                color: ConstantColor.blackColor,
                                fontFamily: ConstantFonts.poppinsMedium,
                                fontSize: SizeConfig.defaultSize *
                                    Dimens.size1Point8),
                          ),
                        ),
                      ],
                    )),
              ));
        }):Center(
      child: Text('No Verifications'),
    );
  }
}

class SelectVehicleCard extends StatefulWidget {
  const SelectVehicleCard({Key? key}) : super(key: key);

  @override
  State<SelectVehicleCard> createState() => _SelectVehicleCardState();
}

class _SelectVehicleCardState extends State<SelectVehicleCard> {
  var selectVehicle = Get.put(SelectVehicleController());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: selectVehicle.selectVehicle.length,
        itemBuilder: (context, var index) {
          SizeConfig().init(context);
          return Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.defaultSize * Dimens.size1,
              left: SizeConfig.defaultSize * Dimens.size2,
              right: SizeConfig.defaultSize * Dimens.size2,
            ),
            child:
            ///------------------------- Select Vehicles custom list button to select widget --------------------------------
            InkWell(
              onTap: () {
                selectVehicle.change.value = true;
                selectVehicle.selectedVehicle.value = selectVehicle.selectVehicle[index].number.toString();
                CustomObject.vechileId = selectVehicle.selectVehicle[index].id.toString();
                Get.back();
              },
              child:
              ///------------------------- Select Vehicles custom list container widget --------------------------------
              Container(
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
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ///------------------------- Select Vehicles custom list image widget --------------------------------
                        Image.network(
                          'https://etimg.etb2bimg.com/photo/85487718.cms',
                          height: SizeConfig.defaultSize * Dimens.size6,
                        ),
                        ///------------------------- Select Vehicles custom list Text widget --------------------------------
                        Padding(
                          padding: EdgeInsets.all(
                            SizeConfig.defaultSize * Dimens.size1Point8,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ///------------------------- Select Vehicles custom list vehicle Text name widget --------------------------------
                              Text(
                                selectVehicle.selectVehicle[index].number,
                                style: TextStyle(
                                    color: ConstantColor.secondaryColor,
                                    fontFamily: ConstantFonts.poppinsBold,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point8),
                              ),
                              ///------------------------- Select Vehicles custom list vehicle status text widget --------------------------------
                              Text(
                                selectVehicle.selectVehicle[index].status,
                                style: TextStyle(
                                    color: ConstantColor.blackColor,
                                    fontFamily: ConstantFonts.poppinsMedium,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point7),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
            ),
          );
        });
  }
}
