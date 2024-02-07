import 'package:captain_app/commonWidgets/CameraCaptureMessage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../../../../../commonWidgets/ActionBar.dart';
import '../../../../../../../../constants/ConstantAssets.dart';
import '../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../res/Dimens.dart';
import '../../../../../../../../utils/SizeConfig.dart';
import 'MeltingGoldProcesScaffold.dart';





class MeltingGoldBallsScreen extends StatefulWidget {
  const MeltingGoldBallsScreen({super.key});

  @override
  _MeltingGoldBallsScreenState createState() => _MeltingGoldBallsScreenState();
}

class _MeltingGoldBallsScreenState extends State<MeltingGoldBallsScreen>
{
  // var pickupDetailsController = Get.put(PickupDetailsController());
  // var commonController = Get.put(CommonController());

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.defaultSize * Dimens.size2,
              right: SizeConfig.defaultSize * Dimens.size2,
            ),
            child: Column(
              children: [
                ///-------------------- Action Bar ------------------
                ActionBar(title: 'Pickup #BKS00034'),

                ///-------------------------- Take a photo of package image ----------------------
                Container(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size8,
                    left: SizeConfig.defaultSize * Dimens.size2,
                    right: SizeConfig.defaultSize * Dimens.size2,
                  ),
                  height: SizeConfig.defaultSize * Dimens.size50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        SizeConfig.defaultSize * Dimens.size1Point3,
                      ),
                      color: ConstantColor.lightYellowColor),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Scan QR code on the package",
                          style: TextStyle(
                            fontFamily:
                            ConstantFonts.poppinsBold,
                            fontSize: SizeConfig.defaultSize *
                                Dimens.size2,
                            color: ConstantColor.secondaryColor,
                          ),
                        ),

                        InkWell(onTap: (){
                          Get.to(()=> const MeltingGoldProcessScaffold());
                          customBottomSheet(context,false);
                        }, child:
                        Padding(
                          padding: EdgeInsets.only(
                            top: SizeConfig.defaultSize * Dimens.size4,
                            left: SizeConfig.defaultSize * Dimens.size2,
                            right: SizeConfig.defaultSize * Dimens.size2,
                          ),
                          child: SvgPicture.asset(ConstantAssets.qrCodeScan,
                            height:SizeConfig.defaultSize * Dimens.size15,
                          ),
                        ))
                      ]),
                ),
              ],
            ),
          ),
        ));
  }


  customBottomSheet(BuildContext context, bool close) {
    return showModalBottomSheet<void>(
      useRootNavigator: close,
      context: context,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: SizeConfig.defaultSize * Dimens.size30,
            width: SizeConfig.defaultSize * Dimens.size40,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(
                    SizeConfig.defaultSize * Dimens.size2,
                  ),
                  child: SvgPicture.asset(ConstantAssets.qrCodeScan),
                ),
                Padding(
                  padding: EdgeInsets.all(
                    SizeConfig.defaultSize * Dimens.size1,
                  ),
                  child: Text(
                    'Scanning in Process',
                    style: TextStyle(
                      color: ConstantColor.secondaryColor,
                      fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                      fontFamily: ConstantFonts.poppinsBold,
                    ),
                  ),
                ),
                const Expanded(
                  child: SizedBox(),
                ),
                Padding(
                  padding: EdgeInsets.all(
                    SizeConfig.defaultSize * Dimens.size1,
                  ),
                  child: Text(
                    'Scanning in progress, please don’t close the app',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ConstantColor.blackColor,
                      fontSize: SizeConfig.defaultSize * Dimens.size2,
                      fontFamily: ConstantFonts.poppinsRegular,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}






