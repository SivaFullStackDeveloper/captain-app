// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';
import 'dart:collection';
import 'package:captain_app/commonWidgets/CustomProgressIndicator.dart';
import 'package:captain_app/constants/ConstantAssets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../commonWidgets/ButtonWidget.dart';
import '../../../../commonWidgets/VerifierCustomAppBar.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../WeStartedScreen/VeriferWeStartedScreenScaffold.dart';
import '../../selectVehicle/SelectVehileScreenScaffold.dart';
import '../../selectVehicle/controller/SelectVehicleController.dart';
import '../controller/ToBeReachedController.dart';

class ToBeReachedMapScreen extends StatefulWidget {
  const ToBeReachedMapScreen({super.key});

  @override
  State<ToBeReachedMapScreen> createState() => _ToBeReachedMapScreenState();
}

class _ToBeReachedMapScreenState extends State<ToBeReachedMapScreen> {

 var toBeReachedController=  Get.put(ToBeReachedController());
 var selectVehicle = Get.put(SelectVehicleController());
 final CameraPosition _initialPosition =   CameraPosition(target: LatLng(17.3850, 78.4867),zoom: 10,);
 final Completer<GoogleMapController> _controller = Completer();
 final List<Marker> _markers = <Marker>[];
 final Set<Polygon> _polygon = HashSet<Polygon>();

final List<LatLng> _points = [
  LatLng(17.3850, 78.4867),
  LatLng(17.3850, 78.4867),
];

 @override
void initState(){
  super.initState();
  _polygon.add(
    Polygon(polygonId: PolygonId('marker'),
      points: _points,
      fillColor: ConstantColor.darkRedColor,
      strokeColor: ConstantColor.darkRedColor,
      geodesic: true,
      strokeWidth: 5,
    ),
  );
  _polygon.add(
    Polygon(polygonId: PolygonId('marker2'),
      points: _points,
      fillColor: ConstantColor.darkRedColor,
      strokeColor: ConstantColor.darkRedColor,
      geodesic: true,
      strokeWidth: 5,
    ),
  );
}

@override
 void dispose(){
   super.dispose();
 }
 void _onMapCreated(GoogleMapController controller) async {
   _controller.complete(controller);
   _markers.add(Marker(
       icon: await BitmapDescriptor.fromAssetImage(
         ImageConfiguration(size: Size(1500, 1500)),
         ConstantAssets.marker,
       ),
       markerId: MarkerId('marker'),
       position: LatLng(17.3850, 78.4867),
       infoWindow: InfoWindow(title: '')));

   _markers.add(Marker(
       icon: await BitmapDescriptor.fromAssetImage(
         ImageConfiguration(size: Size(1500, 1500)),
         ConstantAssets.marker1,
       ),
       markerId: MarkerId('marker1'),
       position: LatLng(17.3850, 50.4867),
       infoWindow: InfoWindow(title: '')));
 }

  @override
  Widget build(BuildContext context) {
    return Obx(() => toBeReachedController.isLoading.value ? CustomProgressIndicator()
        : SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
   ///------------------------------------------------- App bar-------------------------------------------
            VerifierCustomAppBar(
              title: ConstantString.toBeReached,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.defaultSize * Dimens.size2,
                left: SizeConfig.defaultSize * Dimens.size2,
                right: SizeConfig.defaultSize * Dimens.size2,
              ),
              child: Container(
                height: SizeConfig.defaultSize * Dimens.size25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
 ///------------------------------------------------- Google maps widget -------------------------------------------
                child: GoogleMap(
                  mapType: MapType.normal,
                  myLocationEnabled: true,
                  myLocationButtonEnabled: true,
                  markers: Set<Marker>.from(_markers),
                  onMapCreated: (GoogleMapController controller){
                  _controller.complete(controller);
    },
                  initialCameraPosition: _initialPosition,
                ),
              ),
            ),
///------------------------------------------------- Container for select vehicle and distance -------------------------------------------
            Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.defaultSize * Dimens.size1,
                left: SizeConfig.defaultSize * Dimens.size2,
                right: SizeConfig.defaultSize * Dimens.size2,
              ),
              child: Container(
                height:
                    SizeConfig.defaultSize * Dimens.size10,
                decoration: BoxDecoration(
                  color: ConstantColor.lightYellowColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(Dimens.circularRadius),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: SizeConfig.defaultSize * Dimens.size2,
                    right: SizeConfig.defaultSize * Dimens.size2,
                  ),
                  child: Column(
///------------------------------------------------- Container for select vehicle and distance -------------------------------------------
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
///------------------------------------------------- Container for select vehicle and distance Text widget -------------------------------------------
                              Text(
                                '8.7',
                                style: TextStyle(
                                    color: ConstantColor.blackColor,
                                    fontFamily: ConstantFonts.poppinsRegular,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size2Point1),
                              ),
 ///-------------------------------------------------  distance Text widget -------------------------------------------
                              Text(
                                ConstantString.kilometers,
                                style: TextStyle(
                                    color: ConstantColor.secondaryColor,
                                    fontFamily: ConstantFonts.poppinsRegular,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point8),
                              ),
                            ],
                          ),
///-------------------------------------------------  select Vehicle  widget -------------------------------------------
                          Container(
                            height: SizeConfig.defaultSize * Dimens.size8,
                            width: 2,
                            color: ConstantColor.secondaryColor,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(() => SelectVehicleScreenScaffold());
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                selectVehicle.change.value==false?SvgPicture.asset(
                                  ConstantAssets.toBeShipped,
                                  color: ConstantColor.blackColor,
                                ):Text(
                                  selectVehicle.selectedVehicle.value.toString(),
                                  style: TextStyle(
                                      color: ConstantColor.blackColor,
                                      fontFamily: ConstantFonts.poppinsMedium,
                                      fontSize: SizeConfig.defaultSize *
                                          Dimens.size1Point8),
                                ),
                                selectVehicle.change.value==false?Text(
                                 'Select Vehicle',
                                  style: TextStyle(
                                      color: ConstantColor.secondaryColor,
                                      fontFamily: ConstantFonts.poppinsRegular,
                                      fontSize: SizeConfig.defaultSize *
                                          Dimens.size1Point8),
                                ):Text(
                                  'Vehicle',
                                  style: TextStyle(
                                      color: ConstantColor.secondaryColor,
                                      fontFamily: ConstantFonts.poppinsRegular,
                                      fontSize: SizeConfig.defaultSize *
                                          Dimens.size1Point8),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: SizeConfig.defaultSize * Dimens.size8,
                            width: 2,
                            color: ConstantColor.secondaryColor,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '40',
                                style: TextStyle(
                                    color: ConstantColor.blackColor,
                                    fontFamily: ConstantFonts.poppinsMedium,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point8),
                              ),
                              Text(
                                ConstantString.minutes,
                                style: TextStyle(
                                    color: ConstantColor.secondaryColor,
                                    fontFamily: ConstantFonts.poppinsRegular,
                                    fontSize: SizeConfig.defaultSize *
                                        Dimens.size1Point8),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
///-------------------------------------------------  Dropdown Button Form Field  widget -------------------------------------------
        Padding(
          padding: EdgeInsets.only(
            top: SizeConfig.defaultSize * Dimens.size1,
            left: SizeConfig.defaultSize * Dimens.size2,
            right: SizeConfig.defaultSize * Dimens.size2,
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
          Container(
          height: SizeConfig.defaultSize*Dimens.size8,
            width: SizeConfig.defaultSize*Dimens.size30,
            child:
          DropdownButtonFormField(

                      isExpanded: true,
                      decoration: InputDecoration(
                        hintText: ConstantString.selectOption,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ConstantColor.greyColor,
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(10)),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ConstantColor.greyColor,
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(10)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ConstantColor.greyColor,
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(10)),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: ConstantColor.greyColor,
                          ),
                          borderRadius: BorderRadius.all(
                              Radius.circular(10)),
                        ),
                      ),
                      items: toBeReachedController.totalSecurityGuards.value.map((String value) {
                        return  DropdownMenuItem(
                          child:  Text(
                                value
                            ),
                        );
                      }).toList(),
                      onChanged: (dynamic value) {
                        toBeReachedController.securityGuardValue.value = value;
                      },
                    )),
                SizedBox(
                  width: 1,
                ),
 ///-------------------------------------------------  Add button  widget -------------------------------------------
                ButtonWidget4(
                  icon: Icons.add,
                  minHeight: 60,
                  minWidth: 0,
                  isChecked: true,
                  press: (context) {
                    toBeReachedController.selectedSecurityGuards.add(toBeReachedController.securityGuardValue.value);
                    print( toBeReachedController.selectedSecurityGuards[0].toString());

                  },
                ),
              ],
            ),),
///------------------------------------------------- New after adding Dropdown Button Form Field  widget -------------------------------------------
            toBeReachedController.selectedSecurityGuards.value.isNotEmpty? ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
              itemCount: toBeReachedController.selectedSecurityGuards.value.length,
                itemBuilder: (BuildContext context,index){
              return  Padding(
                  padding: EdgeInsets.only(
                  top: SizeConfig.defaultSize * Dimens.size1,
                  left: SizeConfig.defaultSize * Dimens.size2,
                  right: SizeConfig.defaultSize * Dimens.size2,
              ),
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      height: SizeConfig.defaultSize*Dimens.size8,
                      width: SizeConfig.defaultSize*Dimens.size30,
                      child: DropdownButtonFormField(

                        decoration: InputDecoration(
                          hintText: ConstantString.selectOption,
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ConstantColor.greyColor,
                            ),
                            borderRadius: BorderRadius.all(
                                Radius.circular(10)),
                          ),
                          disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ConstantColor.greyColor,
                            ),
                            borderRadius: BorderRadius.all(
                                Radius.circular(10)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ConstantColor.greyColor,
                            ),
                            borderRadius: BorderRadius.all(
                                Radius.circular(10)),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: ConstantColor.greyColor,
                            ),
                            borderRadius: BorderRadius.all(
                                Radius.circular(10)),
                          ),
                        ),
                        items:<DropdownMenuItem<String>>[
                           DropdownMenuItem(
                            child:  Text(toBeReachedController.selectedSecurityGuards[index].toString(),style: TextStyle(

                            ),),

                          ),

                        ], onChanged: (String? value) {  },

                      )),

                  SizedBox(
                    width: 1,
                  ),
///------------------------------------------------- remove Dropdown Button Form Field button widget -------------------------------------------
                  ButtonWidget4(
                    icon: Icons.remove,
                    minHeight: 60,
                    minWidth: 0,
                    isChecked: true,
                    press: (context) {
                      toBeReachedController.selectedSecurityGuards.remove(toBeReachedController.securityGuardValue.value);
                    },
                  ),
                ],
              ));
            }):SizedBox(),
///-------------------------------------------------  customer details   widget -------------------------------------------
            Padding(
              padding: EdgeInsets.only(
                left: SizeConfig.defaultSize * Dimens.size2,
                right: SizeConfig.defaultSize * Dimens.size2,
              ),
              child: Container(
                height: SizeConfig.defaultSize * Dimens.size16,
                width: SizeConfig.defaultSize * Dimens.size40,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ConstantString.customerDetails,
                        style: TextStyle(
                            color: ConstantColor.secondaryColor,
                            fontFamily: ConstantFonts.poppinsBold,
                            fontSize:
                                SizeConfig.defaultSize * Dimens.size1Point8),
                      ),
///-------------------------------------------------  customer Name Text   widget -------------------------------------------
                      Text(
                        toBeReachedController.customerName.value,
                        style: TextStyle(
                            color: ConstantColor.blackColor,
                            fontFamily: ConstantFonts.poppinsMedium,
                            fontSize:
                                SizeConfig.defaultSize * Dimens.size1Point4),
                      ),
///-------------------------------------------------  customer Address   widget -------------------------------------------
                      Text(
                        toBeReachedController.customerAddress.value,
                        style: TextStyle(
                            color: ConstantColor.blackColor,
                            fontFamily: ConstantFonts.poppinsRegular,
                            fontSize:
                                SizeConfig.defaultSize * Dimens.size1Point4),
                      ),
///-------------------------------------------------  call widget -------------------------------------------
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ButtonWidget2(
                            icon: Icons.call,
                            text: ConstantString.call,
                            fontSize: 16,
                            minWidth: 20,
                            minHeight: 20,
                            isChecked: true,
                            press: (BuildContext context) {
                              toBeReachedController.callToCustomer();
                            },
                          ),
 ///-------------------------------------------------  directions  widget -------------------------------------------
                          CustomOutlineBorder(
                            icon: Icons.directions,
                            text: ConstantString.needDirections,
                            color: ConstantColor.secondaryColor,
                            height: 40.0,
                            width: 180.0,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
///-------------------------------------------------  we started and we reached button widget -------------------------------------------
            toBeReachedController.isChecked.value== false?ButtonWidget3(
              minHeight: 30,
              minWidth: 200,
              text: ConstantString.weStarted,
              fontSize: 18,
              isChecked: true,
              press: (BuildContext context) {

                var addedList = [];
                addedList.add(toBeReachedController.securityGuards[0].id);
                print(addedList);
                toBeReachedController.verify(addedList);
                toBeReachedController.isChecked.value = true;
                setState(() {

                });
                }
            ):ButtonWidget3(
              minHeight: 30,
              minWidth: 200,
              text: 'We Reached',
              fontSize: 18,
              isChecked: true,
              press: (BuildContext context) {
                toBeReachedController.otpWeReached();


              },
            ),
          ],
        ),
      ),
    ));
  }
}
