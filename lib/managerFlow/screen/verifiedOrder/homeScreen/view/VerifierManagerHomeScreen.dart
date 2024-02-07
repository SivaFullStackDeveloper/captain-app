// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:captain_app/commonWidgets/CustomProgressIndicator.dart';
import 'package:captain_app/constants/ConstantAssets.dart';
import 'package:captain_app/verifierFlow/screens/generateReports/GenerateReportsScaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../../commonWidgets/CustomAppBarBackIcon.dart';
import '../../../../../commonWidgets/VerifierCustomWidgets.dart';
import '../../../../../constants/ConstantColor.dart';
import '../../../../../constants/ConstantFonts.dart';
import '../../../../../constants/ConstantString.dart';
import '../../../../../res/Dimens.dart';
import '../../../../../utils/SizeConfig.dart';
import '../../assignToCaptain/AssignToCaptainScaffold.dart';
import '../../cancelledOrders/CancelledOrdersScaffold.dart';
import '../../putInTheBox/PutInTheBoxScaffold.dart';
import '../../rescheduleOrders/RescheduleOrdersScaffold.dart';

import '../../scanAndCheck/ScanAndCheckListScaffold.dart';
import '../../scheduleOrders/CustomerRequestsScaffold.dart';
import '../../toBeShipped/ShipOrdersScaffold.dart';
import '../controller/ToBeVerifiedController.dart';

class VerifierManagerHomeScreen extends StatefulWidget {
  const VerifierManagerHomeScreen({super.key});

  @override
  State<VerifierManagerHomeScreen> createState() =>
      _VerifierManagerHomeScreenState();
}

class _VerifierManagerHomeScreenState extends State<VerifierManagerHomeScreen> {
  var toBeVerifiedController = Get.put(VerifierHomeScreenController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => toBeVerifiedController.isLoading.value
        ? CustomProgressIndicator()
        : SafeArea(
            child:

                ///------------------------------- Main Padding--------------------------------

                ///------------------- Main column ----------------------------------
                SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///------ Welcome greetings and User name and Translate Icon ----------------------------
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size1,
                    left: SizeConfig.defaultSize * Dimens.size2,
                    right: SizeConfig.defaultSize * Dimens.size2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// ------------------------------------- Custom App Bar Back Icon   ------------------------------
                      CustomAppBarBackIcon(),

                      /// ------------------------------------- Row for App Bar Text Widgets   ------------------------------
                      Row(
                        children: [
                          /// ------------------------------------- App Bar HI text widget   ------------------------------
                          Text(
                            ConstantString.hi,
                            style: TextStyle(
                                fontFamily: ConstantFonts.poppinsRegular,
                                fontSize: SizeConfig.defaultSize *
                                    Dimens.size1Point8),
                          ),

                          /// ------------------------------------- App Bar username text widget   ------------------------------
                          Text(
                            ConstantString.userName,
                            style: TextStyle(
                                fontFamily: ConstantFonts.poppinsBold,
                                fontSize: SizeConfig.defaultSize *
                                    Dimens.size1Point8),
                          ),

                          /// ------------------------------------- App Bar HI emoji text widget   ------------------------------
                          Text(
                            ConstantString.hiEmoji,
                            style: TextStyle(
                              fontFamily: ConstantFonts.poppinsMedium,
                              fontSize:
                                  SizeConfig.defaultSize * Dimens.size2Point5,
                            ),
                          ),
                        ],
                      ),

                      /// ------------------------------------- App Bar translate button   ------------------------------
                      Row(
                        children: [
                          SvgPicture.asset(
                            ConstantAssets.googleTranslate,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                ///------------------------------ Order Containers(Received, Checked, Refunded, Rejected) -----------------------
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      /// ------------------------------------- Schedule Orders widget   ------------------------------
                      InkWell(
                        onTap: () {
                          Get.to(() => CustomerRequestsScaffold());

                          // toBeVerifiedController.selected.value =
                          //     'toBeVerified';
                          // toBeVerifiedController.getRequestsVerifier();

                          toBeVerifiedController.selected.value =
                              'toBeVerified';
                          toBeVerifiedController.getRequestsVerifier();
                        },
                        child: VerifierCustomWidget(
                          iconTrue: false,
                          image: ConstantAssets.toBeShipped,
                          toBeVerified: ConstantString.scheduleOrders,
                          number: toBeVerifiedController.toBeVerified.value
                              .toString(),
                        ),
                      ),

                      /// ------------------------------------- Reschedule Orders   ------------------------------
                      InkWell(
                        onTap: () {
                          Get.to(() => RescheduleOrdersScaffold());
                          // toBeVerifiedController.selected.value =
                          //     'toBeSubmitted';
                          // toBeVerifiedController.getRequestsVerifier();
                        },
                        child: VerifierCustomWidget(
                          icon: Icons.search,
                          iconTrue: true,
                          image: ConstantAssets.toBeShipped,
                          toBeVerified: ConstantString.rescheduleOrders,
                          number: toBeVerifiedController.toBeSubmitted.value
                              .toString(),
                        ),
                      ),
                    ],
                  ),
                ),

                ///------------------------------ Order Containers(Received, Checked, Refunded, Rejected) -----------------------
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      /// ------------------------------------- Assign to captain  ------------------------------
                      InkWell(
                        onTap: () {
                          Get.to(() => AssignToCaptainScaffold());
                          // toBeVerifiedController.selected.value =
                          //     'toBeVerified';
                          // toBeVerifiedController.getRequestsVerifier();
                        },
                        child: VerifierCustomWidget(
                          iconTrue: false,
                          image: ConstantAssets.toBeShipped,
                          toBeVerified: ConstantString.assignToCaptain,
                          number: toBeVerifiedController.toBeVerified.value
                              .toString(),
                        ),
                      ),

                      /// ------------------------------------- Scan & Check   ------------------------------
                      InkWell(
                        onTap: () {
                          Get.to(() => ScanAndCheckListScaffold());
                          // toBeVerifiedController.selected.value =
                          //     'toBeSubmitted';
                          // toBeVerifiedController.getRequestsVerifier();
                        },
                        child: VerifierCustomWidget(
                          icon: Icons.search,
                          iconTrue: true,
                          image: ConstantAssets.toBeShipped,
                          toBeVerified: ConstantString.scanAndCheck,
                          number: toBeVerifiedController.toBeSubmitted.value
                              .toString(),
                        ),
                      ),
                    ],
                  ),
                ),

                ///------------------------------ Order Containers(Received, Checked, Refunded, Rejected) -----------------------
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      /// ------------------------------------- Put in the Box   ------------------------------
                      InkWell(
                        onTap: () {
                          Get.to(() => PutInTheBoxScaffold());
                          // toBeVerifiedController.selected.value =
                          //     'toBeVerified';
                          // toBeVerifiedController.getRequestsVerifier();
                        },
                        child: VerifierCustomWidget(
                          iconTrue: false,
                          image: ConstantAssets.toBeShipped,
                          toBeVerified: ConstantString.putInBox,
                          number: toBeVerifiedController.toBeVerified.value
                              .toString(),
                        ),
                      ),

                      /// ------------------------------------- to Be Shipped  ------------------------------
                      InkWell(
                        onTap: () {
                          Get.to(() => ShipOrdersScaffold());
                          // toBeVerifiedController.selected.value =
                          //     'toBeSubmitted';
                          // toBeVerifiedController.getRequestsVerifier();
                        },
                        child: VerifierCustomWidget(
                          icon: Icons.search,
                          iconTrue: true,
                          image: ConstantAssets.toBeShipped,
                          toBeVerified: ConstantString.toBeShipped,
                          number: toBeVerifiedController.toBeSubmitted.value
                              .toString(),
                        ),
                      ),
                    ],
                  ),
                ),

                ///------------------------------ Order Containers(Received, Checked, Refunded, Rejected) -----------------------
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      /// ------------------------------------- Cancelled Orders  ------------------------------
                      InkWell(
                        onTap: () {
                          Get.to(() => CancelledOrdersScaffold());
                          // toBeVerifiedController.selected.value =
                          //     'toBeVerified';
                          // toBeVerifiedController.getRequestsVerifier();
                        },
                        child: VerifierCustomWidget(
                          iconTrue: false,
                          image: ConstantAssets.toBeShipped,
                          toBeVerified: ConstantString.cancelledOrders,
                          number: toBeVerifiedController.toBeVerified.value
                              .toString(),
                        ),
                      ),

                      /// ------------------------------------- Reports   ------------------------------
                      InkWell(
                        onTap: () {
                          Get.to(() => GenerateReportsScaffold());
                          // toBeVerifiedController.selected.value =
                          //     'toBeSubmitted';
                          // toBeVerifiedController.getRequestsVerifier();
                        },
                        child: VerifierCustomWidget(
                          icon: Icons.search,
                          iconTrue: true,
                          image: ConstantAssets.toBeShipped,
                          toBeVerified: ConstantString.reports,
                          number: toBeVerifiedController.toBeSubmitted.value
                              .toString(),
                        ),
                      ),
                    ],
                  ),
                ),

                /// ------------------------------------- to Be Submitted widget   ------------------------------
                Padding(
                  padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size2,
                    left: SizeConfig.defaultSize * Dimens.size4,
                    right: SizeConfig.defaultSize * Dimens.size2,
                  ),
                  child: Text(
                    'New Verifications',
                    style: TextStyle(
                        color: ConstantColor.secondaryColor,
                        fontFamily: ConstantFonts.poppinsBold,
                        fontSize: SizeConfig.defaultSize * Dimens.size2),
                  ),
                ),

                /// ------------------------------------- to Be Verified list  widget   ------------------------------
                // Expanded(
                //   flex: 1,
                //   child: NewVerificationCard(
                //     length: toBeVerifiedController.length.value,
                //   ),
                // ),
              ],
            ),
          )));
  }
}
