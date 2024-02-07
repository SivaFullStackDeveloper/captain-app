import 'package:captain_app/accountingFlow/screens/Purchase/PurchaseInvoice/child/PurchaseInvoicePreviewScreen/widget/PurchaseInvoiceTemplate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../../utils/SizeConfig.dart';
import '../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../../constants/ConstantString.dart';
import '../child/PurchaseInvoiceDownload/PurchaseInvoiceDownloadScaffold.dart';
import '../widget/PurchaseZigZagClip.dart';



class PurchaseInvoicePreviewScreen extends StatefulWidget {
  const PurchaseInvoicePreviewScreen({Key? key}) : super(key: key);

  @override
  State<PurchaseInvoicePreviewScreen> createState() => _PurchaseInvoicePreviewScreenState();
}

class _PurchaseInvoicePreviewScreenState extends State<PurchaseInvoicePreviewScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding:  EdgeInsets.only(
                    top: SizeConfig.defaultSize*Dimens.size2,
                    left: SizeConfig.defaultSize*Dimens.size2,
                    right: SizeConfig.defaultSize*Dimens.size2,

                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: ()=> Get.back(),
                        child: Container(
                            width: SizeConfig.defaultSize * Dimens.size5,
                            height: SizeConfig.defaultSize * Dimens.size5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                SizeConfig.defaultSize * Dimens.size1,
                              ),
                              border: Border.all(
                                color: ConstantColor.secondaryColor, //                   <--- border color
                                width: SizeConfig.defaultSize * Dimens.sizePoint1,
                              ),
                            ),
                            child: Icon(
                              Icons.arrow_back,
                              size: SizeConfig.defaultSize * Dimens.size3,
                              color: ConstantColor.secondaryColor,
                            )
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.defaultSize * Dimens.size1,
                      ),
                      Text(ConstantString.invoiceNumber.tr,style: TextStyle(
                        fontFamily: ConstantFonts.poppinsMedium,
                        fontSize: SizeConfig.defaultSize * Dimens.size2,
                        color: ConstantColor.secondaryColor,
                      )),
                    ],
                  )
              ),
              Container(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * Dimens.size1,
                  bottom: SizeConfig.defaultSize * Dimens.size1,
                  left: SizeConfig.defaultSize*Dimens.size2,
                  right: SizeConfig.defaultSize*Dimens.size2,
                ),
                width: SizeConfig.screenWidth,
                height: SizeConfig.defaultSize * Dimens.size55,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        ConstantColor.whiteScreenBackgroundColor,
                        ConstantColor.secondaryColor.withOpacity(0.5),
                      ],
                      stops: const [
                        0.1,1.0
                      ]

                  ),
                ),
                child: const Center(
                  child: PurchaseInvoiceTemplate(),
                ),
              ),
            ],
          ),
          Padding(
              padding:  EdgeInsets.only(
                top: SizeConfig.defaultSize*Dimens.size25,
              ),
              child: Column(
                children: [
                  RotationTransition(
                    turns: const AlwaysStoppedAnimation(180 / 360),
                    child: SizedBox(
                      height: SizeConfig.defaultSize*Dimens.size4,
                      width: SizeConfig.screenWidth,
                      child: ClipPath(
                          clipper: PurchaseZigZagClipper(),
                          child: Container(
                            color: ConstantColor.whiteScreenBackgroundColor,
                          )),
                    ),
                  ),
                  Container(
                    padding:  EdgeInsets.only(
                      left: SizeConfig.defaultSize*Dimens.size3,
                      right: SizeConfig.defaultSize*Dimens.size3,
                    ),
                    color: ConstantColor.whiteScreenBackgroundColor,
                    width: SizeConfig.screenWidth,
                    height: SizeConfig.defaultSize * Dimens.size55,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Total Amount",style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsMedium,
                                    fontSize: SizeConfig.defaultSize * Dimens.size2Point1,
                                    color: ConstantColor.greyColor,
                                  )),
                                  Text("₹ 5,480.90",style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsMedium,
                                    fontSize: SizeConfig.defaultSize * Dimens.size3Point2,
                                    color: ConstantColor.blackColor,
                                  )),
                                ],
                              ),
                              Container(
                                padding:  EdgeInsets.all(
                                  SizeConfig.defaultSize*Dimens.sizePoint8,
                                ),
                                decoration: BoxDecoration(
                                  color: ConstantColor.greenColor,
                                  borderRadius: BorderRadius.circular(
                                    SizeConfig.defaultSize * Dimens.size1Point3,
                                  ),
                                ),
                                child: Text("TO BE SETTLED",style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsBold,
                                  fontSize: SizeConfig.defaultSize * Dimens.size1Point2,
                                  color: ConstantColor.whiteColor,
                                )),
                              )
                            ],
                          ),
                          SizedBox(
                            height: SizeConfig.defaultSize * Dimens.size2,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: (){},
                                child: SvgPicture.asset('assets/icons/download.svg',
                                  height:SizeConfig.defaultSize * Dimens.size3,
                                ),
                              ),
                              InkWell(
                                onTap: (){},
                                child: SvgPicture.asset('assets/icons/whatsapp.svg',
                                  height:SizeConfig.defaultSize * Dimens.size3,
                                ),
                              ),
                              InkWell(
                                onTap: (){},
                                child: SvgPicture.asset('assets/icons/share.svg',
                                  height:SizeConfig.defaultSize * Dimens.size3,),
                              ),
                              InkWell(
                                onTap: (){},
                                child: SvgPicture.asset('assets/icons/mail.svg',
                                  height:SizeConfig.defaultSize * Dimens.size3,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: SizeConfig.defaultSize * Dimens.size2Point5,
                          ),
                          Row(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Deepak Soni",style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsMedium,
                                    fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                                    color: ConstantColor.blackColor,
                                  )),
                                  Text("INV# INV00001",style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsMedium,
                                    fontSize: SizeConfig.defaultSize * Dimens.sizePoint9,
                                    color: ConstantColor.greyColor,
                                  )),
                                ],
                              ),
                              Text("GST INVOICE",style: TextStyle(
                                fontFamily: ConstantFonts.poppinsMedium,
                                fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                                color: ConstantColor.blackColor,
                              ))
                            ],
                          ),
                          SizedBox(
                            height: SizeConfig.defaultSize * Dimens.size2Point5,
                          ),
                          Row(crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Invoice Date:",style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsMedium,
                                    fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                                    color: ConstantColor.blackColor,
                                  )),
                                  Text("24 Sep 2022",style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsMedium,
                                    fontSize: SizeConfig.defaultSize * Dimens.sizePoint9,
                                    color: ConstantColor.greyColor,
                                  )),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text("Settlement Date:",style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsMedium,
                                    fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                                    color: ConstantColor.blackColor,
                                  )),
                                  Text("24 Sep 2022",style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsMedium,
                                    fontSize: SizeConfig.defaultSize * Dimens.sizePoint9,
                                    color: ConstantColor.greyColor,
                                  )),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: SizeConfig.defaultSize * Dimens.size2Point5,
                          ),
                          Divider(
                            color: ConstantColor.greyColor,
                            thickness: 0.5,
                          ),
                          Text("24 KT GOLD 999.9 FINENESS",style: TextStyle(
                            fontFamily: ConstantFonts.poppinsBold,
                            fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                            color: ConstantColor.blackColor,
                          )),
                          SizedBox(
                            height: SizeConfig.defaultSize * Dimens.size1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("1 X ₹ 5,580.90 :",style: TextStyle(
                                fontFamily: ConstantFonts.poppinsMedium,
                                fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                                color: ConstantColor.blackColor,
                              )),
                              Text("₹ 5,580.90 ",style: TextStyle(
                                fontFamily: ConstantFonts.poppinsMedium,
                                fontSize: SizeConfig.defaultSize * Dimens.size1Point5,
                                color: ConstantColor.greyColor,
                              )),
                            ],
                          ),
                          Divider(
                            color: ConstantColor.greyColor,
                            thickness: 0.5,
                          ),
                          SizedBox(
                            height: SizeConfig.defaultSize * Dimens.size2,
                          ),
                          Center(
                            child: InkWell(
                              onTap: ()=> Get.to(()=>PurchaseInvoiceDownloadScaffold()),
                              child: Container(
                                  width: SizeConfig.defaultSize * Dimens.size30,
                                  height: SizeConfig.defaultSize * Dimens.size7,
                                  decoration: BoxDecoration(
                                    color:ConstantColor.secondaryColor,
                                    borderRadius: BorderRadius.circular(
                                      SizeConfig.defaultSize * Dimens.size1,
                                    ),
                                    border: Border.all(
                                      color: ConstantColor.secondaryColor, //                   <--- border color
                                      width: SizeConfig.defaultSize * Dimens.sizePoint1,
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "MARK AS PAID",
                                      style: TextStyle(
                                        color: ConstantColor.whiteColor,
                                        fontFamily: ConstantFonts.poppinsBold,
                                        fontSize: SizeConfig.defaultSize * Dimens.size2Point3,
                                      ),

                                    ),
                                  )
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )
          ),
        ],
      ),
    );
  }
}
