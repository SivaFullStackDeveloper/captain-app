import 'package:captain_app/constants/ConstantString.dart';
import 'package:captain_app/deliveryFlow/screens/bottomNavBar/BottomNavBarScaffold.dart';
import 'package:captain_app/managerFlow/screen/dashboard/ManagerDashboardScaffold.dart';
import 'package:captain_app/pickupFlow/pickupScreens/pickupBottomNavBar/PickupBottomNavBarScaffold.dart';
import 'package:captain_app/refinerFlow/ScreensByParthosh/RefinerHomeScreen/RefinerHomeScreenScaffold.dart';
// import 'package:captain_app/refinerFlow/screens/refinerBottomNavBar/RefinerBottomNavBarScaffold.dart';
//import 'package:captain_app/verifierFlow/VerifierScreens/homeScreen/VerifierManagerHomeScreenScaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../constants/ConstantAssets.dart';
import '../../../constants/ConstantColor.dart';
import '../../../constants/ConstantFonts.dart';
import '../../../deliveryFlow/screens/dashboard/DashboardScaffold.dart';
import '../../../managerFlow/screen/verifiedOrder/homeScreen/VerifierManagerHomeScreenScaffold.dart';
import '../../../pickupFlow/pickupScreens/pickupDashboard/PickupDashboardScaffold.dart';
import '../../../res/Dimens.dart';
import '../../../utils/SizeConfig.dart';
import '../../../verifierFlow/screens/homeScreen/VerifierHomeScreenScaffold.dart';

class SelectModuleCards extends StatelessWidget {
  const SelectModuleCards({Key? key, this.type}) : super(key: key);

  final type;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        if (type == "delivery")
          // {Get.to(() => const BottomNavBarScaffold())}
          {Get.to(() => const DashboardScaffold())}
        else if (type == "pickup")
          // {Get.to(() => const PickupBottomNavBarScaffold())}
          {Get.to(() => const PickupDashboardScaffold())}
        else if (type == "verifier")
          {Get.to(() => const VerifierHomeScreenScaffold())}
        else if (type == "manager")
          {Get.to(() => const ManagerDashboardScaffold())}
        else
          {Get.to(() => const RefinerHomeScreenScaffold())}
          // {Get.to(() => const RefinerBottomNavBarScaffold())}
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              SizeConfig.defaultSize * Dimens.size1Point3,
            ),
            border: Border.all(color: ConstantColor.miniDarkYellowColor),
            color: ConstantColor.lightYellowColor),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          if (type == "delivery")
            Image.asset(ConstantAssets.deliveredImage,
                height: SizeConfig.defaultSize * Dimens.size15,
                width: SizeConfig.defaultSize * Dimens.size15)
          else if (type == "pickup")
            Image.asset(
              ConstantAssets.delay,
              height: SizeConfig.defaultSize * Dimens.size15,
              width: SizeConfig.defaultSize * Dimens.size15,
            )
          else if (type == "verifier")
            Image.asset(
              ConstantAssets.cancelOrder,
              height: SizeConfig.defaultSize * Dimens.size15,
              width: SizeConfig.defaultSize * Dimens.size15,
            )
          else
            Image.asset(
              ConstantAssets.cancelOrder,
              height: SizeConfig.defaultSize * Dimens.size15,
              width: SizeConfig.defaultSize * Dimens.size15,
            ),
          Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.defaultSize * Dimens.size1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(type,
                    style: TextStyle(
                      fontFamily: ConstantFonts.poppinsRegular,
                      fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                      color: ConstantColor.secondaryColor,
                    )),
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size1,
                  ),
                  child: Text(ConstantString.toPackOrdersAndShipToCustomer.tr,
                      style: TextStyle(
                        fontFamily: ConstantFonts.poppinsMedium,
                        fontSize: SizeConfig.defaultSize * Dimens.size1Point3,
                        color: ConstantColor.greyColor,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size3,
                    bottom: SizeConfig.defaultSize * Dimens.size3,
                  ),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Click to proceed",
                            style: TextStyle(
                              fontFamily: ConstantFonts.poppinsMedium,
                              fontSize:
                                  SizeConfig.defaultSize * Dimens.size1Point2,
                              color: ConstantColor.secondaryColor,
                            )),
                        Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.defaultSize * Dimens.size1,
                          ),
                          child: RotatedBox(
                              quarterTurns: 2,
                              child: SvgPicture.asset(
                                ConstantAssets.backArrow,
                                color: ConstantColor.secondaryColor,
                                width:
                                    SizeConfig.defaultSize * Dimens.size1Point7,
                                height:
                                    SizeConfig.defaultSize * Dimens.size1Point7,
                              )),
                        )
                      ]),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
