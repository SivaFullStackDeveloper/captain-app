import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/constants/ConstantFonts.dart';
import 'package:captain_app/utils/commonController/CommonController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../../../../commonWidgets/ButtonWidget.dart';
import '../../../../../../commonWidgets/ReportShareSectionWidget.dart';
import '../../../../../../commonWidgets/ReportStageListWidget.dart';
import '../../../../../../constants/ConstantAssets.dart';
import '../../../../../../constants/ConstantColor.dart';
import '../../../../../../constants/ConstantString.dart';
import '../../../../../../res/Dimens.dart';
import '../../../../../../utils/SizeConfig.dart';
import '../../../../../../verifierFlow/screens/generateReports/widget/CustomBoxForReports.dart';
import '../controller/PickupReportsDetailController.dart';
import '../widget/ReportSelectedStageListWidget.dart';

class PickupReportsDetailScreen extends StatefulWidget {
  const PickupReportsDetailScreen({Key? key}) : super(key: key);

  @override
  State<PickupReportsDetailScreen> createState() => _PickupReportsDetailScreenState();
}

class _PickupReportsDetailScreenState extends State<PickupReportsDetailScreen> {
  var isShow = false;
  var deliveryReportsController = Get.put(PickupReportsDetailController());
  var commonController = Get.put(CommonController());


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(

              left:SizeConfig.defaultSize*Dimens.size2,
              right:SizeConfig.defaultSize*Dimens.size2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                ActionBar(
                  title: ConstantString.generateReports,
                ),


                Padding(
                  padding:  EdgeInsets.only(
                    top:SizeConfig.defaultSize*Dimens.size2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ReportShareSectionWidget(
                          text:"download",
                          icon:ConstantAssets.download,
                          press:(context){

                          }
                      ),
                      ReportShareSectionWidget(
                          text:"watsapp",
                          icon:ConstantAssets.watsApp,
                          press:(context){

                          }
                      ),
                      ReportShareSectionWidget(
                          text:"share",
                          icon:ConstantAssets.share2,
                          press:(context){

                          }
                      ),
                      ReportShareSectionWidget(
                          text:"mail",
                          icon:ConstantAssets.mail,
                          press:(context){

                          }
                      ),
                    ],
                  ),),




                Padding(
                  padding:  EdgeInsets.only(
                    top:SizeConfig.defaultSize*Dimens.size2,
                    left:SizeConfig.defaultSize*Dimens.size2,
                    right:SizeConfig.defaultSize*Dimens.size2,
                  ),
                  child:Text(ConstantString.toBeVerified,style: TextStyle(
                    fontSize: SizeConfig.defaultSize*Dimens.size1Point6,
                    fontFamily: ConstantFonts.poppinsMedium,
                    color: ConstantColor.secondaryColor,
                  ),),),

               // GenerateReportsOrderList(),

              ],
            ),
          ),


           Expanded(
             flex: 8,
             child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context,index){
                    return ReportSelectedStageWidget();
                  }),
           ),
        ],
      ),
    );
  }
}
