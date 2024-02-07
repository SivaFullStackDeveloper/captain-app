import 'package:captain_app/accountingFlow/screens/Purchase/PurchaseInvoice/PurchaseInvoiceScaffold.dart';
import 'package:captain_app/accountingFlow/screens/Purchase/ReleaseOfCustody/ReleaseCustodyScaffold.dart';
import 'package:captain_app/accountingFlow/screens/Sale/NoteOfCustody/NoteOfCustodyScaffold.dart';
import 'package:captain_app/accountingFlow/screens/sale/saleInvoice/SaleInvoiceScaffold.dart';
import 'package:captain_app/commonWidgets/AccountingDashboardSection.dart';
import 'package:captain_app/constants/ConstantAssets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../../constants/ConstantColor.dart';
import '../../../../../constants/ConstantFonts.dart';
import '../../../../../constants/ConstantString.dart';
import '../../../../../res/Dimens.dart';
import '../../../../../utils/SizeConfig.dart';
import 'Service/AdvanceInvoice/AdvanceInvoiceScaffold.dart';
import 'Service/CommissionInvoice/CommissionInvoiceScaffold.dart';
import 'Service/ServiceInvoice/ServiceInvoiceScaffold.dart';


class AccountingCaptainScreen extends StatefulWidget {

  const AccountingCaptainScreen({Key? key}) : super(key: key);

  @override
  _AccountingCaptainScreenState createState() => _AccountingCaptainScreenState();
}

class _AccountingCaptainScreenState extends State<AccountingCaptainScreen> with RouteAware {


  @override
  Widget build(BuildContext context) {
    //loginController.translate();
    return SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: SizeConfig.defaultSize * Dimens.size2,
            left: SizeConfig.defaultSize * Dimens.size2,
            right: SizeConfig.defaultSize * Dimens.size2,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///----------------- Hi Text -----------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        ///----------------------- Hi text --------------------------
                        Text(ConstantString.hi.tr,style: TextStyle(
                          fontFamily: ConstantFonts.poppinsMedium,
                          fontSize: SizeConfig.defaultSize * Dimens.size2Point1,
                          color: ConstantColor.secondaryColor,
                        )),
                        ///--------------------- Name text -------------------------
                        Padding(
                          padding: EdgeInsets.only(
                            left: SizeConfig.defaultSize * Dimens.sizePoint5,
                          ),
                          child: Text(", ${"Suurya Prabhat"} ",
                              style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsMedium,
                                  fontSize: SizeConfig.defaultSize * Dimens.size2Point2,
                                  color: ConstantColor.secondaryColor,
                                  fontWeight: FontWeight.w900)),
                        ),
                      ]),
                      ///----------------------- Date text --------------------------
                      Text("Dec 12, 2022 ",style: TextStyle(
                        fontFamily: ConstantFonts.poppinsMedium,
                        fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                        color: ConstantColor.greyColor,
                      )),
                    ],
                  ),
                  ///------------------CircleAvatar----------------------------
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
                ],
              ),
              SizedBox(
                height: SizeConfig.defaultSize * Dimens.size2,
              ),

              ///----------------------- Toaday text --------------------------
              Row(
                children: [
                  Text("Today",style: TextStyle(
                    fontFamily: ConstantFonts.poppinsMedium,
                    fontSize: SizeConfig.defaultSize * Dimens.size2Point1,
                    color: ConstantColor.blackColor,
                  )),
                  SvgPicture.asset(
                      ConstantAssets.downArrow,
                      height: SizeConfig.defaultSize * Dimens.size3,
                      width: SizeConfig.defaultSize * Dimens.size3,
                      fit: BoxFit.scaleDown
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.defaultSize * Dimens.size1,
              ),


              ///---------------Sale Text-------------------------
              Text(ConstantString.sale.tr,style: TextStyle(
                fontFamily: ConstantFonts.poppinsBold,
                fontSize: SizeConfig.defaultSize * Dimens.size1Point4,
                color: ConstantColor.secondaryColor,
              )),
              SizedBox(
                height: SizeConfig.defaultSize * Dimens.size1,
              ),
              ///---------------sale section--------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///--------------------- SaleInvoice section ------------------------
                  InkWell(
                    onTap: ()=> {
                      Get.to(()=> const SaleInvoiceScaffold())
                    },
                    child: AccountingDashboardSections(
                      title: ConstantString.saleInvoice,
                      value: "1001",
                    ),
                  ),

                  ///--------------------- NoteOfCustody section ------------------------
                  InkWell(
                    onTap: ()=>{
                      Get.to(()=> const NoteOfCustodyScaffold())
                    },
                    child: AccountingDashboardSections(
                      title: ConstantString.noteOfCustody,
                      value: "1001",
                    ),
                  )

                ],
              ),
              SizedBox(
                height: SizeConfig.defaultSize * Dimens.size1,
              ),


              ///---------------Purchase Text-------------------------
              Text(ConstantString.purchase.tr,style: TextStyle(
                fontFamily: ConstantFonts.poppinsBold,
                fontSize: SizeConfig.defaultSize * Dimens.size1Point4,
                color: ConstantColor.secondaryColor,
              )),
              SizedBox(
                height: SizeConfig.defaultSize * Dimens.size1,
              ),
              ///---------------purchase section--------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///--------------------- purchaseInvoice section ------------------------
                  InkWell(
                    onTap: ()=> {
                      Get.to(()=> PurchaseInvoiceScaffold())
                    },
                    child: AccountingDashboardSections(
                      title: ConstantString.purchaseInvoice,
                      value: "1001",
                    ),
                  ),

                  ///--------------------- purchaseInvoice section ------------------------
                  InkWell(
                    onTap: ()=>{
                      Get.to(()=> ReleaseOfCustodyScaffold())
                    },
                    child: AccountingDashboardSections(
                      title: ConstantString.releaseOfCustody,
                      value: "1001",
                    ),
                  )

                ],
              ),
              SizedBox(
                height: SizeConfig.defaultSize * Dimens.size1,
              ),


              ///---------------Service Text-------------------------
              Text(ConstantString.service.tr,style: TextStyle(
                fontFamily: ConstantFonts.poppinsBold,
                fontSize: SizeConfig.defaultSize * Dimens.size1Point4,
                color: ConstantColor.secondaryColor,
              )),
              SizedBox(
                height: SizeConfig.defaultSize * Dimens.size1,
              ),
              ///---------------Service section--------------------
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ///--------------------- AdvanceInvoice section ------------------------
                      InkWell(
                        onTap: ()=> {
                          Get.to(()=> const AdvanceInvoiceScaffold())
                        },
                        child: AccountingDashboardSections(
                          title: ConstantString.advanceInvoice,
                          value: "1001",
                        ),
                      ),

                      ///--------------------- CommissionInvoice section ------------------------
                      InkWell(
                        onTap: ()=>{
                          Get.to(()=> const CommissionInvoiceScaffold())
                        },
                        child: AccountingDashboardSections(
                          title: ConstantString.commissionInvoice,
                          value: "1001",
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.defaultSize * Dimens.size1,
                  ),
                  ///--------------------- serviceInvoice section ------------------------
                  InkWell(
                    onTap: ()=>{
                      Get.to(()=> const ServiceInvoiceScaffold())
                    },
                    child: AccountingDashboardSections(
                      title: ConstantString.serviceInvoice,
                      value: "1001",
                    ),
                  )
                ],
              ),
            ],
          ),
        )
    );
  }
}
