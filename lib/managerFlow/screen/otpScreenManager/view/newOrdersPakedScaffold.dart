import 'package:captain_app/commonWidgets/ButtonWidget.dart';
import 'package:flutter/material.dart';
import '../../../../constants/ConstantAssets.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import 'SucessScreenScaffold2.dart';



PackedBottomSheet(BuildContext context, bool close) {
  print(close.toString());
  return showModalBottomSheet<void>(
    isScrollControlled:true,
    useRootNavigator: close,
    context: context,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )),
    builder: (BuildContext context) {
      return Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          height: SizeConfig.defaultSize * Dimens.size50,
          width: SizeConfig.defaultSize * Dimens.size40,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Padding(
                padding: EdgeInsets.all(
                  SizeConfig.defaultSize * Dimens.size1,
                ),
                child: Text(
                  'Please Enter Logistic Information ',
                  style: TextStyle(
                    color: ConstantColor.secondaryColor,
                    fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontFamily: ConstantFonts.poppinsBold,
                  ),
                ),
              ),




      SizedBox(
      width: SizeConfig.defaultSize * Dimens.size1,
      ),

        Padding(
          padding: EdgeInsets.all(
            SizeConfig.defaultSize * Dimens.size1,
          ),
          child: CustomTextFormFeild(
              sufixText:"",
              labeltext:"Name of Delivery Agent",
              hintText:"Name of Delivery Agent"
          ),
        ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: SizeConfig.defaultSize *
                              Dimens.size1Point5,
                          bottom: SizeConfig.defaultSize *
                              Dimens.size1Point5,
                        ),
                        child: Container(
                          width:
                          SizeConfig.defaultSize * Dimens.size8,
                          height:
                          SizeConfig.defaultSize * Dimens.size8,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ConstantColor
                                  .miniDarkYellowColor),
                          child: Icon(
                            Icons.camera_alt,
                            size: SizeConfig.defaultSize *
                                Dimens.size2Point5,
                            color: ConstantColor.secondaryColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top:
                          SizeConfig.defaultSize * Dimens.size1,
                        ),
                        child: Text("Click To Sign",
                            style: TextStyle(
                              fontFamily:
                              ConstantFonts.poppinsRegular,
                              fontSize: SizeConfig.defaultSize *
                                  Dimens.size1Point2,
                              color: ConstantColor.secondaryColor,
                            )),
                      ),
                    ],
                  ),

                  Expanded(
                    flex: 5,
                    child: Container(
                      height: SizeConfig.defaultSize * Dimens.size20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            SizeConfig.defaultSize * Dimens.size1Point3,
                          ),
                          color: ConstantColor.lightYellowColor),
                      child: InkWell(
                        onTap: ()=>{
                          print("--------------"),
                          //_selectOptionBottomSheet(),

                          //Navigator.pop(context)
                        },
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: SizeConfig.defaultSize * Dimens.size1,
                                ),
                                child: Text("Id Of Agent",
                                    style: TextStyle(
                                      fontFamily: ConstantFonts.poppinsBold,
                                      fontSize: SizeConfig.defaultSize *
                                          Dimens.size1Point6,
                                      color: ConstantColor.secondaryColor,
                                    )),
                              ),


                              Column(
                                children: [
                                  ///---------------- Camera Icon ---------------------
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: SizeConfig.defaultSize *
                                          Dimens.size1Point5,
                                      bottom: SizeConfig.defaultSize *
                                          Dimens.size1Point5,
                                    ),
                                    child: Container(
                                      width:
                                      SizeConfig.defaultSize * Dimens.size8,
                                      height:
                                      SizeConfig.defaultSize * Dimens.size8,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                          ConstantColor.miniDarkYellowColor),
                                      child: Icon(
                                        Icons.camera_alt,
                                        size: SizeConfig.defaultSize *
                                            Dimens.size2Point5,
                                        color: ConstantColor.secondaryColor,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: SizeConfig.defaultSize * Dimens.size1,
                                    ),
                                    child: Text("Click To Capture",
                                        style: TextStyle(
                                          fontFamily:
                                          ConstantFonts.poppinsRegular,
                                          fontSize: SizeConfig.defaultSize *
                                              Dimens.size1Point2,
                                          color: ConstantColor.secondaryColor,
                                        )),
                                  ),
                                ],
                              )


                            ]),
                      ),
                    ),
                  ),

                ],
              ),

              Padding(
                padding: EdgeInsets.all(
                  SizeConfig.defaultSize * Dimens.size1,
                ),
                child: ButtonWidget(
                    text:"HANDOVER TO SHIPMENT PARTNER",
                   fontSize:14,
                   minWidth:60,
                    minHeight:40,
                   isChecked:true,
                    press:(context){
                      SucessScreenScaffold2();
                    }
                )
                ),

            ],
          ),
        ),
      );
    },
  );
}


FilterBottomSheet(BuildContext context, bool close) {
  print(close.toString());
  return showModalBottomSheet<void>(
    isScrollControlled:true,
    useRootNavigator: close,
    context: context,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )),
    builder: (BuildContext context) {
      return Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            height: SizeConfig.defaultSize * Dimens.size35,
            width: SizeConfig.defaultSize * Dimens.size40,
            child: InkWell(
              onTap: (){


              },
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Padding(
                    padding: EdgeInsets.all(
                      SizeConfig.defaultSize * Dimens.size1,
                    ),
                    child: Text(
                      'Filter',
                      style: TextStyle(
                        color: ConstantColor.blackColor,
                        fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                        fontFamily: ConstantFonts.poppinsBold,
                      ),
                    ),
                  ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            Padding(
            padding: EdgeInsets.all(
            SizeConfig.defaultSize * Dimens.size1,
            ),
                  child:Text(
                  'Show Self Assigned',
                  style: TextStyle(
                    color: ConstantColor.blackColor,
                    fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontFamily: ConstantFonts.poppinsRegular,
                  ),
                  ),
            ),

          Switch(
            onChanged: (val){

            },
            value: true,
            activeColor: Colors.grey,
            activeTrackColor: Colors.grey,
            inactiveThumbColor: Colors.grey,
            inactiveTrackColor: Colors.grey,
          ),


      ],
            ),
          CustomTextFormFeild(
               labeltext:"Select One or more Captains",
               hintText:"Select One or more Captains",

          ),
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Padding(
      padding: EdgeInsets.all(
        SizeConfig.defaultSize * Dimens.size1,
      ),
      child:Text(
        'Filtered Orders : 548 ',
        style: TextStyle(
          color: ConstantColor.blackColor,
          fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
          fontFamily: ConstantFonts.poppinsRegular,
        ),
      ),
    ),
  ],
),


            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Padding(
                      padding: EdgeInsets.only(
                        top:SizeConfig.defaultSize * Dimens.size4,
                      ),
                      child: ButtonWidget(
                          text:"SHOW RESULTS",
                          fontSize:14,
                          minWidth:60,
                          minHeight:40,
                          isChecked:true,
                          press:(context){

                          }
                      )
                  ),]),

                ],
              ),
            ),
          ));
    },
  );


}

DatePickerBottomSheet(BuildContext context, bool close) {
  print(close.toString());
  return showModalBottomSheet<void>(
    isScrollControlled:true,
    useRootNavigator: close,
    context: context,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )),
    builder: (BuildContext context) {
      return Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          height: SizeConfig.defaultSize * Dimens.size35,
          width: SizeConfig.defaultSize * Dimens.size40,
          child: InkWell(
      onTap: (){

        FilterBottomSheet(context,true);

      },
      child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding: EdgeInsets.all(
                  SizeConfig.defaultSize * Dimens.size1,
                ),
                child: Text(
                  'Select Date Range',
                  style: TextStyle(
                    color: ConstantColor.blackColor,
                    fontSize: SizeConfig.defaultSize * Dimens.size1Point8,
                    fontFamily: ConstantFonts.poppinsBold,
                  ),
                ),
              ),

              Expanded(
                  child: ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (BuildContext context,index){
                        var i = list.length-1;
                    return InkWell(
                        onTap: (){
                          FilterBottomSheet(context,true);
                        },
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(
                                SizeConfig.defaultSize * Dimens.size1,
                              ),
                              child: Text(
                                list[index].toString(),
                                style: TextStyle(
                                  color: ConstantColor.blackColor,
                                  fontSize: SizeConfig.defaultSize * Dimens.size1Point4,
                                  fontFamily: ConstantFonts.poppinsRegular,
                                ),
                              ),

                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.all(
                            SizeConfig.defaultSize * Dimens.size1,
                          ),
                          child: Container(
                            height: 1,
                            decoration: BoxDecoration(
                              color: Colors.grey
                            ),
                          ),
                        ),
                      ],
                    ));
                  })
              ),
        InkWell(
          onTap: (){

          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.all(
                      SizeConfig.defaultSize * Dimens.size1,
                    ),
                    child: Text(
                      'Select Date Range',
                      style: TextStyle(
                        color: ConstantColor.blackColor,
                        fontSize: SizeConfig.defaultSize * Dimens.size1Point4,
                        fontFamily: ConstantFonts.poppinsRegular,
                      ),
                    ),

                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              Padding(
                padding: EdgeInsets.all(
                  SizeConfig.defaultSize * Dimens.size1,
                ),
                child: Container(
                  height: 1,
                  decoration: BoxDecoration(
                      color: Colors.grey
                  ),
                ),
              ),
            ],
          ),
        ),
            ],
          ),
        ),
        ));
    },
  );


}
List list = [
  'Today, 24 September',
  'Yesterday, 23 September',
  'This Week, 19-24 September',
  'This Month, September',
];
class CustomTextFormFeild extends StatefulWidget {
  var controller;
  var sufixText;
  var labeltext;
  var hintText;
  CustomTextFormFeild({
    Key? key,
    this.controller,
    this.sufixText,
    this.labeltext,
    this.hintText,
  }) : super(key: key);

  @override
  State<CustomTextFormFeild> createState() =>
      _CustomTextFormFeildState();
}

class _CustomTextFormFeildState
    extends State<CustomTextFormFeild> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(SizeConfig.defaultSize * Dimens.size1Point2),
      child: TextFormField(
        controller:widget.controller,
        cursorColor: ConstantColor.secondaryColor,
        decoration: InputDecoration(
          labelStyle: TextStyle(color: ConstantColor.secondaryColor),
          labelText: widget.labeltext,
          suffixText: widget.sufixText,
          hintText: widget.hintText,
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ConstantColor.darkRedColor,
            ),
            borderRadius:
            BorderRadius.all(Radius.circular(Dimens.circularRadius)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ConstantColor.secondaryColor,
            ),
            borderRadius:
            BorderRadius.all(Radius.circular(Dimens.circularRadius)),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ConstantColor.darkRedColor,
            ),
            borderRadius:
            BorderRadius.all(Radius.circular(Dimens.circularRadius)),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ConstantColor.greyColor,
            ),
            borderRadius:
            BorderRadius.all(Radius.circular(Dimens.circularRadius)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: ConstantColor.secondaryColor,
            ),
            borderRadius:
            BorderRadius.all(Radius.circular(Dimens.circularRadius)),
          ),
        ),
      ),
    );
  }


}




