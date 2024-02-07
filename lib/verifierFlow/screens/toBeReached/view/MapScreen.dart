// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'dart:async';
import 'dart:collection';
import 'package:captain_app/commonWidgets/CustomProgressIndicator.dart';
import 'package:captain_app/constants/ConstantAssets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../../../commonWidgets/ButtonWidget.dart';
import '../../../../commonWidgets/VerifierCustomAppBar.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantFonts.dart';
import '../../../../constants/ConstantString.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../../../res/Dimens.dart';
import '../../../../utils/SizeConfig.dart';
import '../../WeStartedScreen/VeriferWeStartedScreenScaffold.dart';
import '../../selectVehicle/SelectVehileScreenScaffold.dart';
import '../../selectVehicle/controller/SelectVehicleController.dart';
import '../controller/ToBeReachedController.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {

/* var toBeReachedController=  Get.put(ToBeReachedController());
 var selectVehicle = Get.put(SelectVehicleController());*/

 Completer<GoogleMapController> _controller = Completer();
 // on below line weconst set the camera position
  final CameraPosition _kGoogle = const CameraPosition(
   target: LatLng(19.0759837, 72.8776559),
   zoom: 14,
 );


 // created list of locations to display polygon
 List<LatLng> points = [
   LatLng(19.0759837, 72.8776559),
   LatLng(28.679079, 77.069710),

 ];


/*

 CameraPosition _initialPosition = CameraPosition(target: LatLng(38.123, 35.123));
  Completer<GoogleMapController> _controller = Completer();
*/


  void _onMapCreated(GoogleMapController controller) async {
    _controller.complete(controller);
    _markers.add(Marker(
        icon: await BitmapDescriptor.fromAssetImage(
          ImageConfiguration(size: Size(50, 50)),
          ConstantAssets.sealingVideo,
        ),
        markerId: MarkerId('SomeId'),
        position: LatLng(38.123, 35.123),
        infoWindow: InfoWindow(title: 'The title of the marker')));
  }

  getCurrentLocation() async {
    var permission = await Geolocator.requestPermission();

    if (permission == LocationPermission.denied) {
      print(
          'permission denied+++++++++++++++++++++++++++++++++++++++++++++++++');
    } else if (permission == LocationPermission.always) {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      print(
          'this is current postion ${position.latitude}++++++++++++++++++++++++++++++++++++++');
    }
  }

  List<Marker> _markers = <Marker>[];

  var items = [
    'Select Security Gaurd',
    'Surya Prabhat',
    "pawan yadav",
  ];

  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      DropdownMenuItem<String>(
        child: Text(
            "Select Security Gaurd"),
      ),

    ];
    return menuItems;
  }



  //Set<Polygon> _polygon = HashSet<Polygon>();

  GoogleMapController? mapController; //contrller for Google map
  PolylinePoints polylinePoints = PolylinePoints();

  String googleAPiKey = "AIzaSyBD2d4tjlMxmu7x1fmiGn-a-TPjVfRd64U";

  Set<Marker> markers = Set(); //markers for google map
  Map<PolylineId, Polyline> polylines = {}; //polylines to show direction

  LatLng startLocation = LatLng(27.6683619, 85.3101895);
  LatLng endLocation = LatLng(27.6688312, 85.3077329);


  @override
  void initState() {

    markers.add(Marker( //add start location marker
      markerId: MarkerId(startLocation.toString()),
      position: startLocation, //position of marker
      infoWindow: InfoWindow( //popup info
        title: 'Starting Point ',
        snippet: 'Start Marker',
      ),
      icon: BitmapDescriptor.defaultMarker, //Icon for Marker
    ));

    markers.add(Marker( //add distination location marker
      markerId: MarkerId(endLocation.toString()),
      position: endLocation, //position of marker
      infoWindow: InfoWindow( //popup info
        title: 'Destination Point ',
        snippet: 'Destination Marker',
      ),
      icon: BitmapDescriptor.defaultMarker, //Icon for Marker
    ));

    /*_polygon.add(
        Polygon(
          // given polygonId
          polygonId: PolygonId('1'),
          // initialize the list of points to display polygon
          points: points,
          // given color to polygon
          fillColor: Colors.green.withOpacity(0.3),
          // given border color to polygon
          strokeColor: Colors.black,
          geodesic: true,
          // given width of border
          strokeWidth: 4,
        )
    );*/

    getDirections();
   // getCurrentLocation();
    super.initState();

  }

  getDirections() async {
    List<LatLng> polylineCoordinates = [];

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      googleAPiKey,
      PointLatLng(startLocation.latitude, startLocation.longitude),
      PointLatLng(endLocation.latitude, endLocation.longitude),
      travelMode: TravelMode.driving,
    );

    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
      print("===========>>>>POINTS   "+ result.points.toString());

    } else {
      print("===========>>>>POINTS ERROR   "+ result.points.toString());

      print(result.errorMessage);
    }
    addPolyLine(polylineCoordinates);
  }


  addPolyLine(List<LatLng> polylineCoordinates) {
    PolylineId id = PolylineId("poly");
    Polyline polyline = Polyline(
      polylineId: id,
      color: Colors.deepPurpleAccent,
      points: polylineCoordinates,
      width: 8,
    );
    polylines[id] = polyline;
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          VerifierCustomAppBar(
            title: "Map Screen",
          ),
          Padding(
            padding: EdgeInsets.only(
              top: SizeConfig.defaultSize * Dimens.size2,
              left: SizeConfig.defaultSize * Dimens.size2,
              right: SizeConfig.defaultSize * Dimens.size2,
            ),
            child: Container(
              height: SizeConfig.defaultSize * Dimens.size55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: GoogleMap( //Map widget from google_maps_flutter package
                zoomGesturesEnabled: true, //enable Zoom in, out on map
                initialCameraPosition: CameraPosition( //innital position in map
                  target: startLocation, //initial position
                  zoom: 16.0, //initial zoom level
                ),
                markers: markers, //markers to show on map
                polylines: Set<Polyline>.of(polylines.values), //polylines
                mapType: MapType.normal, //map type
                onMapCreated: (controller) { //method called when map is created
                  setState(() {
                    mapController = controller;
                  });
                },
              ),
            ),
            ),
    ]);
  }
}
