import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../../../constants/ConstantColor.dart';
import '../../../../../../../constants/ConstantFonts.dart';
import '../../../../../../../res/Dimens.dart';
import '../../../../../../../utils/SizeConfig.dart';


class SaleInvoiceTemplate extends StatefulWidget {
  const SaleInvoiceTemplate({Key? key}) : super(key: key);

  @override
  State<SaleInvoiceTemplate> createState() => _SaleInvoiceTemplateState();
}

class _SaleInvoiceTemplateState extends State<SaleInvoiceTemplate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: ConstantColor.lightYellowColor),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.size3,
                    left: SizeConfig.defaultSize * Dimens.size3,
                    right: SizeConfig.defaultSize * Dimens.size3),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('assets/images/Logo.svg',
                          height: SizeConfig.defaultSize * Dimens.size3,
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'B.K.Saraf Jewellers',
                              style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsMedium,
                                  fontSize: SizeConfig.defaultSize *
                                      Dimens.size1Point1),
                            ),
                            SizedBox(
                              width: SizeConfig.defaultSize * Dimens.size13,
                              child: Text(
                                'M-13, Gole Market, Mahanagar,  Lucknow, Uttar Pradesh 226006',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsRegular,
                                    color: ConstantColor.greyColor,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.sizePoint7),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'Commission Invoice',
                              style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsMedium,
                                  fontSize: SizeConfig.defaultSize *
                                      Dimens.sizePoint9),
                            ),
                            Text(
                              'Original for Customer',
                              style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsRegular,
                                  color: ConstantColor.greyColor,
                                  fontSize: SizeConfig.defaultSize *
                                      Dimens.sizePoint7),
                            ),
                            Text(
                              'Date 21-09-2022',
                              style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsRegular,
                                  color: ConstantColor.greyColor,
                                  fontSize: SizeConfig.defaultSize *
                                      Dimens.sizePoint7),
                            ),
                            Text(
                              'Invoice No: INV00001',
                              style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsRegular,
                                  color: ConstantColor.greyColor,
                                  fontSize: SizeConfig.defaultSize *
                                      Dimens.sizePoint7),
                            )
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: SizeConfig.defaultSize * Dimens.sizePoint8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bill To',
                            style: TextStyle(
                                fontFamily: ConstantFonts.poppinsBold,
                                fontSize:
                                SizeConfig.defaultSize * Dimens.sizePoint8),
                          ),
                          Text(
                            'MyGold Pvt Ltd',
                            style: TextStyle(
                                fontFamily: ConstantFonts.poppinsRegular,
                                color: ConstantColor.greyColor,
                                fontSize:
                                SizeConfig.defaultSize * Dimens.sizePoint7),
                          ),
                          Text(
                            'Ph: +91-7673925340',
                            style: TextStyle(
                                fontFamily: ConstantFonts.poppinsRegular,
                                color: ConstantColor.greyColor,
                                fontSize:
                                SizeConfig.defaultSize * Dimens.sizePoint7),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Settlement Date',
                          style: TextStyle(
                              fontFamily: ConstantFonts.poppinsBold,
                              fontSize:
                              SizeConfig.defaultSize * Dimens.sizePoint8),
                        ),
                        Text(
                          ' 24-09-2022',
                          style: TextStyle(
                              fontFamily: ConstantFonts.poppinsRegular,
                              fontSize:
                              SizeConfig.defaultSize * Dimens.sizePoint8),
                        ),
                        SizedBox(
                          width: SizeConfig.defaultSize * Dimens.size2,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'PAN No. : AAGCD1057K',
                              style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsRegular,
                                  fontSize:
                                  SizeConfig.defaultSize * Dimens.sizePoint8),
                            ),
                            Text(
                              'GSTIN : 27AAGCD1057K1ZL',
                              style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsRegular,
                                  fontSize:
                                  SizeConfig.defaultSize * Dimens.sizePoint8),
                            ),
                            Text(
                              'CIN No : U74999MH2017PTC293205',
                              style: TextStyle(
                                  fontFamily: ConstantFonts.poppinsRegular,
                                  fontSize:
                                  SizeConfig.defaultSize * Dimens.sizePoint8),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: SizeConfig.defaultSize * Dimens.sizePoint8),
                child: Container(
                  decoration:
                  BoxDecoration(color: ConstantColor.boxBorderGreyColor),
                  child: Padding(
                    padding: EdgeInsets.all(
                        SizeConfig.defaultSize * Dimens.sizePoint5),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: SizeConfig.defaultSize * Dimens.size16,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: SizeConfig.defaultSize * Dimens.size6,
                                child: Text('S.No',
                                    style: TextStyle(
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.sizePoint8,
                                        fontFamily:
                                        ConstantFonts.poppinsRegular)),
                              ),
                              SizedBox(
                                width: SizeConfig.defaultSize * Dimens.size10,
                                child: Text('Item Description',
                                    style: TextStyle(
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.sizePoint8,
                                        fontFamily:
                                        ConstantFonts.poppinsRegular)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: SizeConfig.defaultSize * Dimens.size16,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: SizeConfig.defaultSize * Dimens.size7,
                                child: Text('Qty',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.sizePoint8,
                                        fontFamily:
                                        ConstantFonts.poppinsRegular)),
                              ),
                              SizedBox(
                                width: SizeConfig.defaultSize * Dimens.size4,
                                child: Text('Rate',
                                    // textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.sizePoint8,
                                        fontFamily:
                                        ConstantFonts.poppinsRegular)),
                              ),
                              SizedBox(
                                width: SizeConfig.defaultSize * Dimens.size5,
                                child: Text('Amount',
                                    style: TextStyle(
                                        fontSize: SizeConfig.defaultSize *
                                            Dimens.sizePoint8,
                                        fontFamily:
                                        ConstantFonts.poppinsRegular)),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                EdgeInsets.all(SizeConfig.defaultSize * Dimens.sizePoint5),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: SizeConfig.defaultSize * Dimens.size16,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: SizeConfig.defaultSize * Dimens.size6,
                            child: Text('1',
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.sizePoint8,
                                    fontFamily: ConstantFonts.poppinsRegular)),
                          ),
                          SizedBox(
                            width: SizeConfig.defaultSize * Dimens.size10,
                            child: Text(
                              'Commission on Gold Verified',
                              style: TextStyle(
                                  fontSize: SizeConfig.defaultSize *
                                      Dimens.sizePoint8,
                                  fontFamily: ConstantFonts.poppinsRegular),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: SizeConfig.defaultSize * Dimens.size16,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: SizeConfig.defaultSize * Dimens.size7,
                            child: Text('10 GRAM',
                                style: TextStyle(
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.sizePoint8,
                                    fontFamily: ConstantFonts.poppinsRegular)),
                          ),
                          SizedBox(
                            width: SizeConfig.defaultSize * Dimens.size4,
                            child: Text('500',
                                style: TextStyle(
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.sizePoint8,
                                    fontFamily: ConstantFonts.poppinsRegular)),
                          ),
                          SizedBox(
                            width: SizeConfig.defaultSize * Dimens.size5,
                            child: Text('5000',
                                style: TextStyle(
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.sizePoint8,
                                    fontFamily: ConstantFonts.poppinsRegular)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                color: ConstantColor.greyColor,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: SizeConfig.defaultSize * Dimens.size3,
                    right: SizeConfig.defaultSize * Dimens.size3),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Payment Details',
                            style: TextStyle(
                                fontFamily: ConstantFonts.poppinsBold,
                                fontSize:
                                SizeConfig.defaultSize * Dimens.sizePoint8),
                          ),
                          Text(
                            'Tax ID : TXN00000131ICICI',
                            style: TextStyle(
                                fontFamily: ConstantFonts.poppinsRegular,
                                color: ConstantColor.greyColor,
                                fontSize:
                                SizeConfig.defaultSize * Dimens.sizePoint7),
                          ),
                          Text(
                            'Txn Date : 10-02-2022',
                            style: TextStyle(
                                fontFamily: ConstantFonts.poppinsRegular,
                                color: ConstantColor.greyColor,
                                fontSize:
                                SizeConfig.defaultSize * Dimens.sizePoint7),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 7,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sub total',
                                style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsBold,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.sizePoint6),
                              ),
                              Text(
                                '5,000.90',
                                style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsRegular,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.sizePoint8),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total Amount',
                                style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsBold,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.sizePoint6),
                              ),
                              Text(
                                '5,000',
                                style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsBold,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point2),
                              )
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Total Amount in Words',
                                style: TextStyle(
                                    fontFamily: ConstantFonts.poppinsBold,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.sizePoint6),
                              ),
                              SizedBox(
                                width: SizeConfig.defaultSize * Dimens.size9,
                                child: Text(
                                  '  Five Thousand Four Hundred and Eighty Rupees Ninety Paisa Only',
                                  style: TextStyle(
                                      fontFamily: ConstantFonts.poppinsRegular,
                                      fontSize: SizeConfig.defaultSize *
                                          Dimens.sizePoint6),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.defaultSize * Dimens.size3,
                vertical: SizeConfig.defaultSize * Dimens.size4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // SvgPicture.asset('assets/icons/signature.svg'),
                    Image.asset(
                      'assets/images/signature.png',
                      // color: ConstantColor.blackColor,
                    ),
                    Text(
                      'Authorised Signature',
                      style: TextStyle(
                          fontFamily: ConstantFonts.poppinsRegular,
                          fontSize: SizeConfig.defaultSize * Dimens.sizePoint7),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}