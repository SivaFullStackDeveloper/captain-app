import 'package:captain_app/commonWidgets/ButtonWidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../commonWidgets/VerifierCustomAppBar.dart';
import '../../../../../constants/ConstantColor.dart';
import '../../../../../constants/ConstantFonts.dart';
import '../../../../../res/Dimens.dart';
import '../../../../../utils/SizeConfig.dart';
import '../child/scheduleToCaptain/ScheduleToCaptainScaffold.dart';
import '../child/verifyOtp/VerifyOtpVerifierScaffold.dart';

class AssignToCaptain extends StatefulWidget {
  const AssignToCaptain({Key? key}) : super(key: key);

  @override
  State<AssignToCaptain> createState() => _AssignToCaptainState();
}

class _AssignToCaptainState extends State<AssignToCaptain> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerifierCustomAppBar(title: 'Assign To Captain'),
        Expanded(
            flex: 2,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                itemBuilder: (context, var index) {
                  SizeConfig().init(context);
                  return Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size1,
                        left: SizeConfig.defaultSize * Dimens.size2,
                        right: SizeConfig.defaultSize * Dimens.size2,
                      ),
                      child: InkWell(
                        onTap: () {},
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
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Checkbox(
                                    value: true,
                                    onChanged: (context) {},
                                    activeColor: ConstantColor.secondaryColor,
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Request# BKS00034',
                                        style: TextStyle(
                                            color: ConstantColor.secondaryColor,
                                            fontFamily:
                                                ConstantFonts.poppinsBold,
                                            fontSize: SizeConfig.defaultSize *
                                                Dimens.size2),
                                      ),
                                      Text(
                                        'Requested On: 14-02-22',
                                        style: TextStyle(
                                            color: ConstantColor.blackColor,
                                            fontFamily:
                                                ConstantFonts.poppinsRegular,
                                            fontSize: SizeConfig.defaultSize *
                                                Dimens.size1Point6),
                                      ),
                                      Text(
                                        'Requested Time: 8.00PM',
                                        style: TextStyle(
                                            color: ConstantColor.blackColor,
                                            fontFamily:
                                                ConstantFonts.poppinsRegular,
                                            fontSize: SizeConfig.defaultSize *
                                                Dimens.size1Point6),
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    onPressed: () => Get.to(
                                        () => ScheduleToCaptainScaffold()),
                                    icon: Icon(
                                      Icons.arrow_forward_ios,
                                      color: ConstantColor.blackColor,
                                      size: 23,
                                    ),
                                  )
                                ],
                              )),
                        ),
                      ));
                })),
        Padding(
          padding:
              EdgeInsets.only(bottom: SizeConfig.defaultSize * Dimens.size2),
          child: ButtonWidget(
              text: 'ASSIGN TO CAPTAIN',
              fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
              minWidth: SizeConfig.defaultSize * Dimens.size30,
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
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'Bulk Assign',
                                  style: TextStyle(
                                      fontSize:
                                          SizeConfig.defaultSize * Dimens.size2,
                                      fontFamily: ConstantFonts.poppinsBold,
                                      color: ConstantColor.secondaryColor),
                                ),
                                DropdownButtonFormField(
                                  hint: Text('Select Captain to Assign'),
                                  items: [
                                    DropdownMenuItem(
                                        onTap: () {},
                                        value: '',
                                        child: Text('Select Captain to Assign'))
                                  ],
                                  onChanged: (context) {},
                                ),
                                SizedBox(
                                  height: SizeConfig.defaultSize * Dimens.size2,
                                ),
                                ButtonWidget(
                                    text: 'NOTIFY CAPTAIN',
                                    fontSize:
                                        SizeConfig.defaultSize * Dimens.size2,
                                    minWidth:
                                        SizeConfig.defaultSize * Dimens.size40,
                                    minHeight:
                                        SizeConfig.defaultSize * Dimens.size5,
                                    isChecked: true,
                                    press: (context) {
                                      Get.to(() => VerifyOtpVerifierScaffold());
                                    })
                              ]));
                    });
              }),
        )
      ],
    );
  }
}
