import 'package:captain_app/commonWidgets/ActionBar.dart';
import 'package:captain_app/constants/ConstantFonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../constants/ConstantAssets.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../widget/ManagerCustomBoxForReports.dart';
import '../widget/ManagerGenerateReportsOrderList.dart';





class ManagerGenerateReports extends StatefulWidget {
  const ManagerGenerateReports({Key? key}) : super(key: key);

  @override
  State<ManagerGenerateReports> createState() => _ManagerGenerateReportsState();
}

class _ManagerGenerateReportsState extends State<ManagerGenerateReports> {
  var isShow = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(
                top:SizeConfig.defaultSize*Dimens.size2,
                left:SizeConfig.defaultSize*Dimens.size2,
                right:SizeConfig.defaultSize*Dimens.size2,
              ),
              child: ActionBar(
                title: ConstantString.generateReports,
              ),
            ),

    Padding(
    padding:  EdgeInsets.only(
    top:SizeConfig.defaultSize*Dimens.size2,
    left:SizeConfig.defaultSize*Dimens.size2,
    right:SizeConfig.defaultSize*Dimens.size2,
    ),
    child:


                SvgPicture.asset(ConstantAssets.filter),),



    Padding(
    padding:  EdgeInsets.only(
    top:SizeConfig.defaultSize*Dimens.size2,
    left:SizeConfig.defaultSize*Dimens.size2,
    right:SizeConfig.defaultSize*Dimens.size2,
    ),
    child: DropdownButtonFormField(
        onChanged: (val){},
                decoration: InputDecoration(
                  labelText: ConstantString.selectStageOfDelivery.toUpperCase(),
                  labelStyle: TextStyle(
                    color: ConstantColor.secondaryColor,
                    fontFamily: ConstantFonts.poppinsRegular,
                  ),
                  hintText: ConstantString.selectOption,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ConstantColor.secondaryColor,
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(SizeConfig.defaultSize*Dimens.size1)),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ConstantColor.secondaryColor,
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(SizeConfig.defaultSize*Dimens.size1)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ConstantColor.secondaryColor,
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(SizeConfig.defaultSize*Dimens.size1)),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ConstantColor.secondaryColor,
                    ),
                    borderRadius: BorderRadius.all(
                        Radius.circular(SizeConfig.defaultSize*Dimens.size1)),
                  ),
                ),
                items: <DropdownMenuItem<String>>[
                  DropdownMenuItem(
    onTap:(){

    setState(() {
      isShow  == true;
    });
    },
                    child:  Text('SELECT STAGE OF DELIVERY',style: TextStyle(

                    ),),

                  ),]),),




        Padding(
          padding:  EdgeInsets.only(
            top:SizeConfig.defaultSize*Dimens.size2,
            left:SizeConfig.defaultSize*Dimens.size2,
            right:SizeConfig.defaultSize*Dimens.size2,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ManagerCustomBoxForReports(
                  text:"download",
                  icon:ConstantAssets.download,
                  press:(context){

                  }
              ),
              ManagerCustomBoxForReports(
                  text:"watsapp",
                  icon:ConstantAssets.watsApp,
                  press:(context){

                  }
              ),
              ManagerCustomBoxForReports(
                  text:"share",
                  icon:ConstantAssets.share2,
                  press:(context){

                  }
              ),
              ManagerCustomBoxForReports(
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
            fontSize: SizeConfig.defaultSize*Dimens.size1Point8,
            fontFamily: ConstantFonts.poppinsMedium,
            color: ConstantColor.secondaryColor,
          ),),),

        ManagerGenerateReportsOrderList(),






          ],
        ),

    );
  }
}
