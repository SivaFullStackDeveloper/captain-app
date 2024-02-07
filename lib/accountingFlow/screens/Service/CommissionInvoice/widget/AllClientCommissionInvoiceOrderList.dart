import 'package:captain_app/constants/ConstantAssets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../../../../constants/ConstantColor.dart';
import '../../../../../../constants/ConstantFonts.dart';
import '../../../../../../res/Dimens.dart';
import '../../../../../../utils/SizeConfig.dart';
import '../child/CommissionInvoiceDownload/CommissionInvoiceDownloadScaffold.dart';






class AllClientCommissionInvoiceOrderList extends StatefulWidget {
  const AllClientCommissionInvoiceOrderList({Key? key}) : super(key: key);

  @override
  State<AllClientCommissionInvoiceOrderList> createState() => _AllClientCommissionInvoiceOrderListState();
}

class _AllClientCommissionInvoiceOrderListState extends State<AllClientCommissionInvoiceOrderList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                onTap: () {
                  Get.to(()=> CommissionInvoiceDownloadScaffold());
                },
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
                      top: SizeConfig.defaultSize * Dimens.size1,
                      left: SizeConfig.defaultSize * Dimens.size2,
                      right: SizeConfig.defaultSize * Dimens.size2,
                    ),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: SizeConfig.defaultSize * Dimens.size6,
                          height: SizeConfig.defaultSize * Dimens.size6,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: ConstantColor.whiteColor),

                          ///-------------------- Icons inside circle -----------------
                          child: Image.asset(ConstantAssets.userProfilePicture,
                              height: SizeConfig.defaultSize * Dimens.size1,
                              width: SizeConfig.defaultSize * Dimens.size1,
                              fit: BoxFit.scaleDown),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'BAR 3456979',
                              style: TextStyle(
                                  color: ConstantColor.secondaryColor,
                                  fontFamily: ConstantFonts.poppinsMedium,
                                  fontSize: SizeConfig.defaultSize * Dimens.size1Point5),
                            ),
                            Text(
                              'Refinery Done',
                              style: TextStyle(
                                  color: ConstantColor.blackColor,
                                  fontFamily: ConstantFonts.poppinsMedium,
                                  fontSize: SizeConfig.defaultSize * Dimens.size1Point2),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: SizeConfig.defaultSize * Dimens.size8,
                        ),
                        SizedBox(
                            child: SvgPicture.asset(
                              ConstantAssets.next,
                              height: SizeConfig.defaultSize * Dimens.size2,
                              color: ConstantColor.secondaryColor,
                            )
                        ),
                      ],
                    ),
                  ),
                ),
              ));
        });
  }
}






