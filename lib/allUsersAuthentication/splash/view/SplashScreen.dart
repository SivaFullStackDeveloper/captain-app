import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../constants/ConstantString.dart';
import '../../../../utils/SizeConfig.dart';
import '../../../constants/ConstantAssets.dart';
import '../../../res/Dimens.dart';
import '../controller/SplashController.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> with RouteAware{


  var splashController = Get.put(SplashController());



  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         Expanded(
           flex: 10,
           child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ///----------------------------------- Logo --------------------------------------
                    SvgPicture.asset(
                      ConstantAssets.logo,
                    ),

                    ///------------------- Please login with your phone number text --------------------
                    Text(ConstantString.buyToday.tr.toUpperCase(),
                        style: TextStyle(
                          fontSize: SizeConfig.defaultSize! * Dimens.size2Point8,
                          color: ConstantColor.blackColor,
                          fontWeight: FontWeight.bold

                        )),
                    Padding(
                      padding: EdgeInsets.only(
                          top: SizeConfig.defaultSize * Dimens.size1),
                      child: Text(ConstantString.saveForTomorrow.tr.toUpperCase(),
                          style: TextStyle(
                              fontSize: SizeConfig.defaultSize * Dimens.size2Point8,
                              color: ConstantColor.blackColor,
                              fontWeight: FontWeight.bold
                          )),
                    ),

                  ],
                ),
              ),
         ),


        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            Image.asset(
            ConstantAssets.startupIndia,
          ),
              Image.asset(
                ConstantAssets.fabric,
              ),
            ],
          ),
        ),

        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(
                bottom: SizeConfig.defaultSize! * Dimens.size1),
            child: Image.asset(
              ConstantAssets.bksLogoPNG,
            ),
          ),
        )

          ]);

  }

}
