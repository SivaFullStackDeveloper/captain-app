import 'package:captain_app/pickupFlow/pickupScreens/receivePickup/ReceivePickupScaffold.dart';
import 'package:captain_app/pickupFlow/pickupScreens/toBeChecked/ToBeCheckedScaffold.dart';
import 'package:captain_app/refinerFlow/screens/refinerDashboard/RefinerDashboardScaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import '../../../commonWidgets/ButtonWidget.dart';
import '../../../constants/ConstantColor.dart';
import '../../../constants/ConstantFonts.dart';
import '../../../constants/ConstantString.dart';
import '../../../res/Dimens.dart';
import '../../../utils/SizeConfig.dart';

import '../../../res/Dimens.dart';

class RefinerBottomNavBarScaffold extends StatefulWidget {

  const RefinerBottomNavBarScaffold({Key? key}) : super(key: key);

  @override
  State<RefinerBottomNavBarScaffold> createState() => _RefinerBottomNavBarScaffoldState();
}

class _RefinerBottomNavBarScaffoldState extends State<RefinerBottomNavBarScaffold> {
  int _selectedIndex = 0;
  static  final List<Widget> _widgetOptions = <Widget>[
    const RefinerDashboardScaffold(),
    const ReceivePickupScaffold(),
    const ToBeCheckedScaffold(),
   // MenuScaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
      // onWillPop: exitAppDialog,
      onWillPop: () async {
        // Navigator.pop(context);
        Get.back();
        // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage(index: 0,)));
        return true;
      },
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _selectedIndex,
          onTap: (i) => setState(() => {
            _selectedIndex = i
          }),
          items: [

            /// Home
            SalomonBottomBarItem(
              unselectedColor: ConstantColor.greyColor,
              icon: const Icon(Icons.home),
              title: Text(ConstantString.home.tr),
              selectedColor: ConstantColor.secondaryColor,
            ),

            /// To Be Packed
            SalomonBottomBarItem(
              unselectedColor: ConstantColor.greyColor,
              icon: const Icon(Icons.store),
              title: Text(ConstantString.toBePacked.tr),
              selectedColor: ConstantColor.secondaryColor,
            ),

            /// To Be Shipped
            SalomonBottomBarItem(
              unselectedColor: ConstantColor.greyColor,
              icon: const Icon(Icons.storefront),
              title: Text(ConstantString.toBeShipped.toUpperCase().tr),
              selectedColor: ConstantColor.secondaryColor,
            ),

          ],
        ),
      ),
    );
  }



  ///----------------------------- Exit App Dialog box -------------------------
  Future<bool> exitAppDialog() async {
    return await showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        // return object of type Dialog
        return Dialog(
            elevation: 0.0,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            child: Wrap(
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [


                    Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size4,
                      ),
                      child: Text(
                        ConstantString.exitApp.tr,
                        style: TextStyle(
                            fontFamily: ConstantFonts.poppinsMedium,
                            fontSize:
                            SizeConfig.defaultSize * Dimens.size2,
                            color: ConstantColor.blackColor,
                            fontWeight: FontWeight.w900),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size1,
                      ),
                      child: Text(
                        ConstantString.toBeReceived.tr,
                        style: TextStyle(
                            fontFamily: ConstantFonts.poppinsRegular,
                            fontSize:
                            SizeConfig.defaultSize * Dimens.size1Point5,
                            color: ConstantColor.blackColor,
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size2,
                        bottom: SizeConfig.defaultSize * Dimens.size2,

                      ),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ///--------------------- No Cancel ---------------------
                            InkWell(
                              onTap: () => {Get.back()},
                              child: Text(
                                ConstantString.no.tr,
                                style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsMedium,
                                    fontSize:
                                    SizeConfig.defaultSize * Dimens.size1Point3,
                                    color: ConstantColor.darkSecondaryColor,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),

                            ///----------------------- Yes button --------------------
                            ButtonWidget(
                                isChecked: true,
                                text: ConstantString.yes.tr,
                                fontSize: SizeConfig.defaultSize * Dimens.size1Point2,
                                minWidth: SizeConfig.defaultSize * Dimens.size10,
                                minHeight: SizeConfig.defaultSize * Dimens.size4,
                                press: (BuildContext context) =>
                                {
                                  SystemNavigator.pop()
                                }
                            ),
                          ]),
                    ),
                  ],
                ),

              ],
            )
        );
      },
    );
  }
}
