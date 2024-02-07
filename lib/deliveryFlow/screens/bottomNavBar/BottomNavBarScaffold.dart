import 'package:captain_app/deliveryFlow/screens/toBeShipped/ToBeShippedScaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../../../../utils/SizeConfig.dart';
import '../../../commonWidgets/ButtonWidget.dart';
import '../../../constants/ConstantColor.dart';
import '../../../constants/ConstantFonts.dart';
import '../../../constants/ConstantString.dart';
import '../../../res/Dimens.dart';
import '../dashboard/DashboardScaffold.dart';
import '../tobePacked/ToBePackedScaffold.dart';

class BottomNavBarScaffold extends StatefulWidget {

  const BottomNavBarScaffold({Key? key}) : super(key: key);

  @override
  State<BottomNavBarScaffold> createState() => _BottomNavBarScaffoldState();
}

class _BottomNavBarScaffoldState extends State<BottomNavBarScaffold> {
  int _selectedIndex = 0;
  static  final List<Widget> _widgetOptions = <Widget>[
    const DashboardScaffold(),
    const ToBePackedOrdersScaffold(),
    const ToBeShippedOrderScaffold(),
   // MenuScaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
      onWillPop: exitAppDialog,
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


                    ///--------------------- exitApp text -----------------------------
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

                    ///--------------------- Are you sure you want leave text -----------------------------
                    Padding(
                      padding: EdgeInsets.only(
                        top: SizeConfig.defaultSize * Dimens.size1,
                      ),
                      child: Text(
                        ConstantString.areYouSureYouWantLeave.tr,
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
