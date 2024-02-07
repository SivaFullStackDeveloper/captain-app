import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../../commonWidgets/MySeparator.dart';
import '../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../res/Dimens.dart';
import '../../../../../../../utils/SizeConfig.dart';
import '../child/customerNotified/CustomerNotifiedRescheduleScaffold.dart';
import '../child/selectTime/ReselectTimeScaffold.dart';
import '../controller/RescheduleAppointmentController.dart';


class RescheduleAppointment extends StatefulWidget {
  const RescheduleAppointment({Key? key}) : super(key: key);

  @override
  State<RescheduleAppointment> createState() => _RescheduleAppointmentState();
}

class _RescheduleAppointmentState extends State<RescheduleAppointment> {
  var rescheduleAppointmentController =
      Get.put(RescheduleAppointmentController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: SizeConfig.defaultSize * Dimens.size5,
          left: SizeConfig.defaultSize * Dimens.size2,
          right: SizeConfig.defaultSize * Dimens.size2,
          bottom: SizeConfig.defaultSize * Dimens.size6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () => Get.back(),
                    child: Container(
                      width: SizeConfig.defaultSize * Dimens.size5,
                      height: SizeConfig.defaultSize * Dimens.size5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          SizeConfig.defaultSize * Dimens.size1Point1,
                        ),
                        border: Border.all(
                          color: ConstantColor
                              .greyColor, //                   <--- border color
                          width: SizeConfig.defaultSize * Dimens.sizePoint2,
                        ),
                      ),
                      child: SvgPicture.asset(ConstantAssets.backArrow,
                          fit: BoxFit.scaleDown),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: SizeConfig.defaultSize * Dimens.size1,
                      right: SizeConfig.defaultSize * Dimens.size2,
                    ),
                    child: Text(
                      'Re-Scedhule Appointment',
                      style: TextStyle(
                          color: ConstantColor.secondaryColor,
                          fontFamily: ConstantFonts.poppinsBold,
                          fontSize:
                              SizeConfig.defaultSize * Dimens.size1Point8),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(ConstantAssets.googleTranslate,
                      fit: BoxFit.scaleDown),
                  //Image.asset(ConstantAssets.startupIndia.toString(),height: 30,),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: SizeConfig.defaultSize * Dimens.size2),
            child: Text(
              'Customer Request',
              style: TextStyle(
                  fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                  fontFamily: ConstantFonts.poppinsMedium),
            ),
          ),
          Container(
            padding: EdgeInsets.all(SizeConfig.defaultSize * Dimens.size2),
            decoration:
                BoxDecoration(color: ConstantColor.extraLightYellowColor),
            child: Column(
              children: [
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            'APPROX WEIGHT',
                            style: TextStyle(
                                color: ConstantColor.secondaryColor,
                                fontSize: SizeConfig.defaultSize *
                                    Dimens.size1Point6),
                          ),
                          Text(
                            '50',
                            style: TextStyle(
                                fontFamily: ConstantFonts.poppinsBold,
                                fontSize:
                                    SizeConfig.defaultSize * Dimens.size5),
                          ),
                          Text(
                            'GRAM',
                            style: TextStyle(
                                color: ConstantColor.lightGreyColor,
                                fontSize: SizeConfig.defaultSize *
                                    Dimens.size1Point6),
                          ),
                        ],
                      ),
                      VerticalDivider(
                        thickness: SizeConfig.defaultSize * Dimens.sizePoint2,
                        color: ConstantColor.secondaryColor,
                      ),
                      Column(
                        children: [
                          Text(
                            'METAL GROUP',
                            style: TextStyle(
                                color: ConstantColor.secondaryColor,
                                fontSize: SizeConfig.defaultSize *
                                    Dimens.size1Point6),
                          ),
                          Text(
                            '50',
                            style: TextStyle(
                                fontFamily: ConstantFonts.poppinsBold,
                                fontSize:
                                    SizeConfig.defaultSize * Dimens.size5),
                          ),
                          Text(
                            'KARAT',
                            style: TextStyle(
                                color: ConstantColor.lightGreyColor,
                                fontSize: SizeConfig.defaultSize *
                                    Dimens.size1Point6),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: SizeConfig.defaultSize * Dimens.size2),
                  child: const MySeparator(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Request Type',
                      style: TextStyle(
                          fontFamily: ConstantFonts.poppinsMedium,
                          fontSize:
                              SizeConfig.defaultSize * Dimens.size1Point4),
                    ),
                    Text(
                      'SELL OLD GOLD',
                      style: TextStyle(
                          fontFamily: ConstantFonts.poppinsRegular,
                          fontSize:
                              SizeConfig.defaultSize * Dimens.size1Point4),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rejected Schedule',
                      style: TextStyle(
                          fontFamily: ConstantFonts.poppinsMedium,
                          fontSize:
                              SizeConfig.defaultSize * Dimens.size1Point4),
                    ),
                    Text(
                      '20-02-2022, 5.30PM',
                      style: TextStyle(
                          fontFamily: ConstantFonts.poppinsRegular,
                          fontSize:
                              SizeConfig.defaultSize * Dimens.size1Point4),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Request Schedule',
                      style: TextStyle(
                          fontFamily: ConstantFonts.poppinsMedium,
                          fontSize:
                              SizeConfig.defaultSize * Dimens.size1Point4),
                    ),
                    Text(
                      '18-02-2022, 5.30PM',
                      style: TextStyle(
                          fontFamily: ConstantFonts.poppinsRegular,
                          fontSize:
                              SizeConfig.defaultSize * Dimens.size1Point4),
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: SizeConfig.defaultSize * Dimens.size2),
            child: Text(
              'Re-Schedule Appointment',
              style: TextStyle(
                  fontFamily: ConstantFonts.poppinsMedium,
                  fontSize: SizeConfig.defaultSize * Dimens.size1Point8),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: SizeConfig.defaultSize * Dimens.size18,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        SizeConfig.defaultSize * Dimens.size1),
                    border: Border.all(color: ConstantColor.greyColor)),
                padding: EdgeInsets.all(SizeConfig.defaultSize * Dimens.size1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '27/09/22',
                      style: TextStyle(
                          fontSize: SizeConfig.defaultSize * Dimens.size1Point4,
                          color: ConstantColor.secondaryColor,
                          fontFamily: ConstantFonts.poppinsRegular),
                    ),
                    Icon(
                      Icons.calendar_month_outlined,
                      color: ConstantColor.secondaryColor,
                    )
                  ],
                ),
              ),
              Container(
                width: SizeConfig.defaultSize * Dimens.size18,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        SizeConfig.defaultSize * Dimens.size1),
                    border: Border.all(color: ConstantColor.greyColor)),
                padding: EdgeInsets.all(SizeConfig.defaultSize * Dimens.size1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '10.00 AM',
                      style: TextStyle(
                          fontSize: SizeConfig.defaultSize * Dimens.size1Point4,
                          color: ConstantColor.secondaryColor,
                          fontFamily: ConstantFonts.poppinsRegular),
                    ),
                    Icon(
                      Icons.schedule,
                      color: ConstantColor.secondaryColor,
                    )
                  ],
                ),
              )
            ],
          ),
          Expanded(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ButtonWidget(
                  text: 'ACCEPT CUSTOMER REQUEST',
                  fontSize: SizeConfig.defaultSize * Dimens.size1Point6,
                  minWidth: SizeConfig.defaultSize * Dimens.size40,
                  minHeight: SizeConfig.defaultSize * Dimens.size5,
                  isChecked: true,
                  press: (context) {
                    showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(
                            SizeConfig.defaultSize * Dimens.size1Point5,
                          )),
                        ),
                        context: context,
                        builder: (context) {
                          return Padding(
                            padding: EdgeInsets.all(
                                SizeConfig.defaultSize * Dimens.size3),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Reschedule Appointment',
                                  style: TextStyle(
                                      fontSize: SizeConfig.defaultSize *
                                          Dimens.size1Point8,
                                      fontFamily: ConstantFonts.poppinsMedium),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: SizeConfig.defaultSize *
                                          Dimens.size2),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: TextFormField(
                                          onTap: () {
                                            Get.back();
                                            rescheduleAppointmentController
                                                .selectDate(context);
                                          },
                                          // enabled: false,
                                          cursorColor:
                                              ConstantColor.secondaryColor,
                                          decoration: InputDecoration(
                                            labelStyle: TextStyle(
                                                color: ConstantColor
                                                    .secondaryColor),
                                            suffixIcon: Icon(
                                              Icons.calendar_month_outlined,
                                              size: SizeConfig.defaultSize *
                                                  Dimens.size2,
                                              color: ConstantColor.greyColor,
                                            ),
                                            hintText: 'Select Date',
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    ConstantColor.darkRedColor,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      Dimens.circularRadius)),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: ConstantColor
                                                    .secondaryColor,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      Dimens.circularRadius)),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    ConstantColor.darkRedColor,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      Dimens.circularRadius)),
                                            ),
                                            disabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: ConstantColor.greyColor,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      Dimens.circularRadius)),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: ConstantColor.greyColor,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      Dimens.circularRadius)),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: SizeConfig.defaultSize *
                                            Dimens.size1,
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: TextFormField(
                                          onTap: () {
                                            Get.to(() =>
                                                const ReselectTimeScaffold());
                                          },
                                          cursorColor:
                                              ConstantColor.secondaryColor,
                                          decoration: InputDecoration(
                                            labelStyle: TextStyle(
                                                color: ConstantColor
                                                    .secondaryColor),
                                            suffixIcon:
                                                const Icon(Icons.schedule),
                                            // SvgPicture.asset(
                                            //   ConstantAssets.schedule,
                                            // ),
                                            hintText: 'Select Time',
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    ConstantColor.darkRedColor,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      Dimens.circularRadius)),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: ConstantColor
                                                    .secondaryColor,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      Dimens.circularRadius)),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    ConstantColor.darkRedColor,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      Dimens.circularRadius)),
                                            ),
                                            disabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: ConstantColor.greyColor,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      Dimens.circularRadius)),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: ConstantColor.greyColor,
                                              ),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      Dimens.circularRadius)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: SizeConfig.defaultSize *
                                          Dimens.size10),
                                  child: ButtonWidget(
                                    text: 'RE-SCHEDULE APPOINTMENT',
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point6,
                                    minWidth:
                                        SizeConfig.defaultSize * Dimens.size40,
                                    minHeight:
                                        SizeConfig.defaultSize * Dimens.size5,
                                    isChecked: true,
                                    press: (context) {},
                                  ),
                                )
                              ],
                            ),
                          );
                        });
                  }),
              SizedBox(
                height: SizeConfig.defaultSize * Dimens.size1,
              ),
              InkWell(
                onTap: () => Get.to(() => CustomerNotifiedRescheduleScaffold()),
                child: Text(
                  'RESCHEDULE',
                  style: TextStyle(
                      fontFamily: ConstantFonts.poppinsMedium,
                      color: ConstantColor.secondaryColor,
                      fontSize: SizeConfig.defaultSize * Dimens.size1Point8),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
