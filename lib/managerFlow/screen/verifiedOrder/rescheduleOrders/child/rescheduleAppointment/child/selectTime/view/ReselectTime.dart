import 'package:captain_app/constants/ConstantColor.dart';
import 'package:flutter/material.dart';

import '../../../../../../../../../commonWidgets/VerifierCustomAppBar.dart';
import '../../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../utils/SizeConfig.dart';

class ReselectTime extends StatefulWidget {
  const ReselectTime({Key? key}) : super(key: key);

  @override
  State<ReselectTime> createState() => _ReselectTimeState();
}

class _ReselectTimeState extends State<ReselectTime> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          VerifierCustomAppBar(title: 'Schedule Appointment'),
          Expanded(
            child: GridView.builder(
                padding: EdgeInsets.symmetric(
                    vertical: SizeConfig.defaultSize * Dimens.size6,
                    horizontal: SizeConfig.defaultSize * Dimens.size3),
                itemCount: 17,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio:
                        (SizeConfig.defaultSize * Dimens.sizePoint2),
                    crossAxisCount: 4,
                    crossAxisSpacing:
                        SizeConfig.defaultSize * Dimens.sizePoint3,
                    mainAxisSpacing: SizeConfig.defaultSize * Dimens.size2),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          color: ConstantColor.secondaryColor,
                          borderRadius: BorderRadius.circular(
                              SizeConfig.defaultSize * Dimens.size1)),
                      child: Center(
                        child: Text(
                          '10 AM',
                          style: TextStyle(
                              color: ConstantColor.whiteColor,
                              fontSize:
                                  SizeConfig.defaultSize * Dimens.size1Point6,
                              fontFamily: ConstantFonts.poppinsMedium),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
