import 'package:captain_app/allUsersAuthentication/selectModule/SelectModuleScaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../commonWidgets/DashboardSections.dart';
import '../../../../constants/ConstantAssets.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../child/ForPurityCheck/ForPurityCheckScaffold.dart';
import '../child/PostRefining/PostRefiningScaffold.dart';
import '../child/ProfileScreen/ProfileScaffold.dart';
import '../child/ToBeRefined/ToBeRefinedScaffold.dart';
import '../child/issueGoldBalls/IssueGoldBallsScaffold.dart';
import '../child/reports/RefinedReportsScaffold.dart';
import '../child/toManager/ToManagerScaffold.dart';


class RefinerHomeScreen extends StatefulWidget {
  const RefinerHomeScreen({super.key});

  @override
  _RefinerHomeScreenState createState() => _RefinerHomeScreenState();
}

class _RefinerHomeScreenState extends State<RefinerHomeScreen> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: SizeConfig.defaultSize * Dimens.size2,
          right: SizeConfig.defaultSize * Dimens.size2,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * Dimens.size1Point6,
                  bottom: SizeConfig.defaultSize * Dimens.size2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    // onTap: ()=> Get.back(),
                    onTap: ()=> Get.to(()=> const SelectModuleScaffold()),
                    child: Container(
                        padding: EdgeInsets.all(
                          SizeConfig.defaultSize * Dimens.size1,
                        ),
                        width: SizeConfig.defaultSize * Dimens.size4
                        ,
                        height: SizeConfig.defaultSize * Dimens.size4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            SizeConfig.defaultSize * Dimens.size1,
                          ),
                          border: Border.all(
                            color: ConstantColor.greyColor, //                   <--- border color
                            width: SizeConfig.defaultSize * Dimens.sizePoint1,
                          ),
                        ),
                        child: SvgPicture.asset(
                          ConstantAssets.backArrow,
                          height: SizeConfig.defaultSize * Dimens.sizePoint1,
                          color: ConstantColor.blackColor,
                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: SizeConfig.defaultSize * Dimens.size1,
                    ),
                    child: Row(children: [
                      Text(ConstantString.hi.tr,
                          style: TextStyle(
                            fontFamily: ConstantFonts.poppinsRegular,
                            fontSize: SizeConfig.defaultSize *
                                Dimens.size1Point8,
                            color: ConstantColor.greyColor,
                          )),

                      ///--------------------- Name text -------------------------

                        Padding(
                          padding: EdgeInsets.only(
                            left:
                            SizeConfig.defaultSize * Dimens.sizePoint5,
                          ),
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                             maxHeight:SizeConfig.defaultSize * Dimens.size10,
                             maxWidth: SizeConfig.defaultSize * Dimens.size20,
                            ),
                            child: Text("${"Suurya"} 👋",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsMedium,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point8,
                                    color: ConstantColor.blackColor,
                                    fontWeight: FontWeight.w900)),
                          ),
                        ),
                      /*  Padding(
                                padding: EdgeInsets.only(
                                    right: SizeConfig.defaultSize * Dimens.size2),
                                child: GoogleTranslateWidget()),*/
                    ]),
                  ),
                  SizedBox(
                    width: SizeConfig.defaultSize * Dimens.size13,
                  ),
                  InkWell(
                    onTap: (){},
                    child:  SvgPicture.asset(
                        ConstantAssets.googleTranslate,
                        height: SizeConfig.defaultSize * Dimens.size3,
                        width: SizeConfig.defaultSize * Dimens.size3,
                        fit: BoxFit.scaleDown
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.defaultSize * Dimens.size1Point5,
                  ),
                  InkWell(
                    onTap: (){
                      Get.to(()=> const ProfileScaffold());
                    },
                    child:  SvgPicture.asset(
                        ConstantAssets.profileIcon1,
                        height: SizeConfig.defaultSize * Dimens.size3,
                        width: SizeConfig.defaultSize * Dimens.size3,
                        fit: BoxFit.scaleDown
                    ),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => {
                        Get.to(() => const ForPurityCheckScaffold()),
                      },
                      child: DashboardSections(
                        image: ConstantAssets.car,
                        title: "For Purity Check",
                        value: "60",
                      ),
                    ),
                    InkWell(
                      onTap: () => {
                        Get.to(() => const ToBeRefinedScaffold()),
                      },
                      child: DashboardSections(
                        image: ConstantAssets.search,
                        title: "To Be Refined",
                        value: "56",
                      ),
                    )
                  ],
                ),

                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size2Point5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => {
                          Get.to(() => const PostRefiningScaffold()),
                        },
                        child: DashboardSections(
                          image: ConstantAssets.markas,
                          title: "Post Refining",
                          value: "45",
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => IssueGoldBallsScaffold());
                        },
                        child: DashboardSections(
                          image: ConstantAssets.markas,
                          title: "Issue Gold \nBalls for Bar",
                          value: "45",
                        ),
                      )
                    ],
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size2Point5,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(() => ToManagerScaffold());
                        },
                        child: DashboardSections(
                          image: ConstantAssets.markas,
                          title: "To Manager",
                          value: "45",
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(() => RefinedReportsScaffold());
                        },
                        child: DashboardSections(
                          image: ConstantAssets.markas,
                          title: "Reports",
                          value: "45",
                        ),
                      )
                    ],
                  ),
                ),


              ],
            ),
          ],
        ),
      ),
    );
  }
}
