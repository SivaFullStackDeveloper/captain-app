import 'package:captain_app/constants/ConstantAssets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../../../../../../commonWidgets/ZigZagClipper.dart';
import '../../../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../../../constants/ConstantString.dart';
import '../../../../../../../../../res/Dimens.dart';
import '../../../../../../../../../utils/SizeConfig.dart';
import '../../../../controller/SaleToggleController.dart';




class CustodyGivenInvoiceDownloadScreen extends StatefulWidget {
  const CustodyGivenInvoiceDownloadScreen({Key? key}) : super(key: key);

  @override
  State<CustodyGivenInvoiceDownloadScreen> createState() => _CustodyGivenInvoiceDownloadScreenState();
}

class _CustodyGivenInvoiceDownloadScreenState extends State<CustodyGivenInvoiceDownloadScreen> {

  var saleToggleController = Get.put(SaleToggleController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Obx(()=> Stack(
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
                      Text(!saleToggleController.isToggled.value? "Custody Given to Yuvaraj":ConstantString.invoiceNumber.tr,style: TextStyle(
                        fontFamily: ConstantFonts.poppinsMedium,
                        fontSize: SizeConfig.defaultSize * Dimens.size2,
                        color: ConstantColor.secondaryColor,
                      )),
                    ],
                  )
              ),
              Padding(
                padding:  EdgeInsets.all(
                  SizeConfig.defaultSize*Dimens.size2,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Custody Certificate",style: TextStyle(
                      fontFamily: !saleToggleController.isToggled.value? ConstantFonts.poppinsBold:ConstantFonts.poppinsMedium,
                      fontSize: SizeConfig.defaultSize * Dimens.size1Point4,
                      color: ConstantColor.blackColor,
                    )),
                    Switch(
                      onChanged: (value){
                        saleToggleController.isToggled.value = !saleToggleController.isToggled.value;
                      },
                      value: saleToggleController.isToggled.value,
                      activeColor: ConstantColor.secondaryColor,
                      activeTrackColor: ConstantColor.secondaryColor.withOpacity(0.5),
                      inactiveThumbColor: ConstantColor.whiteColor,
                      inactiveTrackColor: ConstantColor.greyColor.withOpacity(0.5),
                    ),
                    Text("Sale Invoice",style: TextStyle(
                      fontFamily: saleToggleController.isToggled.value? ConstantFonts.poppinsBold:ConstantFonts.poppinsMedium,
                      fontSize: SizeConfig.defaultSize * Dimens.size1Point4,
                      color: ConstantColor.blackColor,
                    )),
                  ],
                ),
              ),


              Container(
                padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * Dimens.size1,
                  bottom: SizeConfig.defaultSize * Dimens.size10,
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
                child:  Center(
                  child: Image.asset(ConstantAssets.bksInvoice1),
                ),
              ),
            ],
          ),
          Padding(
              padding:  EdgeInsets.only(
                top: SizeConfig.defaultSize*Dimens.size65,
              ),
              child: Column(
                children: [
                  RotationTransition(
                    turns: const AlwaysStoppedAnimation(180 / 360),
                    child: SizedBox(
                      height: SizeConfig.defaultSize*Dimens.size4,
                      width: SizeConfig.screenWidth,
                      child: ClipPath(
                          clipper: ZigZagClipper(),
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
                    height: SizeConfig.defaultSize * Dimens.size12,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                        ],
                      ),
                    ),
                  )
                ],
              )
          ),
        ],
      ),)
    );
  }
}
