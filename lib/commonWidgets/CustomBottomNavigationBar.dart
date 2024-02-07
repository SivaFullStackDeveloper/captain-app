// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../../../commonWidgets/ButtonWidget.dart';
import '../../../constants/ConstantColor.dart';
import '../../../constants/ConstantFonts.dart';
import '../constants/ConstantString.dart';
import '../../../res/Dimens.dart';
import '../../../utils/SizeConfig.dart';
import '../verifierFlow/screens/homeScreen/view/VerifierHomeScreen.dart';
import '../verifierFlow/screens/sealTheItems/view/SealTheItemScreen.dart';
import '../verifierFlow/screens/toBeReached/TobeReachedScreenScaffold.dart';
import '../verifierFlow/screens/toBeReached/view/ToBeReachedScreen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    VerifierHomeScreen(),
    TobeReachedScreenScaffold(),
    VerifierHomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: exitAppDialog,
      child: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _selectedIndex,
          onTap: (i) => setState(() => {
                _selectedIndex = i,
                if (i == 3)
                  {
                    //  print("======>>>>"),
                    //  Get.to(MenuScaffold())
                    //Scaffold.of(context).openDrawer()
                  }
              }),
          items: [
            /// Home
            SalomonBottomBarItem(
              unselectedColor: ConstantColor.greyColor,
              icon: Icon(Icons.home),
              title: Text(ConstantString.home.tr),
              selectedColor: ConstantColor.secondaryColor,
            ),

            /// To Be Reached
            SalomonBottomBarItem(
              unselectedColor: ConstantColor.greyColor,
              icon: Icon(Icons.store),
              title: Text(ConstantString.toBeReached.tr),
              selectedColor: ConstantColor.secondaryColor,
            ),

            /// Shop
            SalomonBottomBarItem(
              unselectedColor: ConstantColor.greyColor,
              icon: Icon(
                Icons.search,
              ),
              title: Text(
                ConstantString.shop.tr,
              ),
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
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
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
                            fontSize: SizeConfig.defaultSize * Dimens.size2,
                            color: ConstantColor.blackColor,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size1,
                      ),
                      child: Text(
                        ConstantString.areYouSureYouWantToLeave.tr,
                        style: TextStyle(
                          fontFamily: ConstantFonts.poppinsRegular,
                          fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
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
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point3,
                                    color: ConstantColor.darkSecondaryColor,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),

                            ///----------------------- Yes button --------------------
                            ButtonWidget(
                                isChecked: true,
                                text: ConstantString.yes.tr,
                                fontSize:
                                    SizeConfig.defaultSize * Dimens.size1Point2,
                                minWidth:
                                    SizeConfig.defaultSize * Dimens.size10,
                                minHeight:
                                    SizeConfig.defaultSize * Dimens.size4,
                                press: (BuildContext context) =>
                                    {SystemNavigator.pop()}),
                          ]),
                    ),
                  ],
                ),
              ],
            ));
      },
    );
  }
}
