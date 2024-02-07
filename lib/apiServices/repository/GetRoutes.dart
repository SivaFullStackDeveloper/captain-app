import '../../utils/customObject/CustomObject.dart';
import '../url/Config.dart';
import 'package:http/http.dart' as http;


var header = {
  'Content-Type': "application/json",
  "Authorization": 'Bearer ${CustomObject.token}',

};

class GetRoutes{

  ///========================= Delivery Routes ========================================

  //--------------------- Ge logged in user data ----------------------------
  static getLoggedInUserData()async{
    var url = "${Config.BASE_URL}/users/@me";

    var response = await http.get(Uri.parse(url),headers: header);
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;

    return CustomObject.responseStatus;

  }

  //--------------------- Get Overview user data ----------------------------
  static getOverviewData()async{
    var url = "${Config.BASE_URL+Config.DELIVERY_MIDDLEWARE}/overview";
    var response = await http.get(Uri.parse(url),headers: header);
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;

    return CustomObject.responseStatus;

  }

  //--------------------- Get Overview user data ----------------------------
  static getOrders(String status)async{
    var url = "${Config.BASE_URL + Config.DELIVERY_MIDDLEWARE}/orders?offset&limit&status=$status";
    var response = await http.get(Uri.parse(url),headers: header);
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;

    return CustomObject.responseStatus;

  }

  //--------------------- Get delivery by id api ----------------------------
  static getDeliveryOrdersById(String orderId) async {
    final id = orderId;

    final url = Uri.encodeFull("${Config.BASE_URL + Config.DELIVERY_MIDDLEWARE}/orders/$id");
    var response = await http.get(Uri.parse(url), headers: {
      'Content-Type': "application/json",
      "Authorization": 'Bearer ${CustomObject.token}',
    });
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;

    return CustomObject.responseStatus;
  }

  //--------------------- Get Report data api ----------------------------
  static getSelectedStageReport(String fromDate,String toDate,String status) async {
   // final url = Uri.encodeFull("${Config.BASE_URL + Config.DELIVERY_MIDDLEWARE}/reports?from=$fromDate&to=$toDate&status=$status&offset");
    var url = "${Config.BASE_URL + Config.DELIVERY_MIDDLEWARE}/reports?from=$fromDate&to=$toDate&status=$status&offset";
    var response = await http.get(Uri.parse(url),headers: header);
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;

    return CustomObject.responseStatus;
  }


  ///=================================== Pickup Routes =====================================


  //--------------------- Get Overview data ----------------------------
  static pickupOverviewData()async{
    var url = "${Config.BASE_URL+Config.PICKUP_MIDDLEWARE}/overview";
    var response = await http.get(Uri.parse(url),headers: header);
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;

    return CustomObject.responseStatus;

  }

  //--------------------- Get Overview order data ----------------------------
  static pickupOrders(String status)async{
    var url = "${Config.BASE_URL + Config.DELIVERY_MIDDLEWARE}/pickup/orders";

    var response = await http.get(Uri.parse(url),headers: header);
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;

    return CustomObject.responseStatus;

  }


  //-------------------- Get user data ----------------------------
  static getAllOrders(String status)async{
    var url = "${Config.BASE_URL + Config.PICKUP_MIDDLEWARE}/orders?offset&limit&status=$status";
    var response = await http.get(Uri.parse(url),headers: header);
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;

    return CustomObject.responseStatus;

  }


  //--------------------- Get delivery by id api ----------------------------
  static getPickupOrdersById(String orderId) async {
    final id = orderId;

    final url = Uri.encodeFull("${Config.BASE_URL + Config.PICKUP_MIDDLEWARE}/orders/$id");
    var response = await http.get(Uri.parse(url), headers: {
      'Content-Type': "application/json",
      "Authorization": 'Bearer ${CustomObject.token}',
    });
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;

    return CustomObject.responseStatus;
  }


  //--------------------- Get user data ----------------------------
  static getAllReasons()async{
    var url = "${Config.BASE_URL + Config.PICKUP_MIDDLEWARE}/reasons";
    var response = await http.get(Uri.parse(url),headers: header);
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;

    return CustomObject.responseStatus;

  }


///========================= Verifier Routes ========================================


  ///---------------------get Overview Api Call ----------------------------
  static getOverview()async {
    var url = "${Config.BASE_URL + Config.VERIFIER_MIDDLEWARE}/overview";
    var response = await http.get(Uri.parse(url), headers: header);
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;
    print("=========<>>< Ststus  " + CustomObject.responseStatus.toString());

    return CustomObject.responseStatus;

  }



///=================================== Manager Routes =====================================

  //--------------------- Get Overview user data ----------------------------
  static getManagerOverviewData()async{
    var url = "${Config.BASE_URL+Config.MANAGER_MIDDLEWARE}/overview";
    var response = await http.get(Uri.parse(url),headers: header);
    CustomObject.responseStatus = response.statusCode;

    CustomObject.responseBody = response.body;

    return CustomObject.responseStatus;

  }
  ///---------------------get Requests  Api Call ----------------------------
  static getRequestsVerifier(selected)async {
    var url = "${Config.BASE_URL + Config.VERIFIER_MIDDLEWARE}/requests?status=${selected}";
    var response = await http.get(Uri.parse(url), headers: header);
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;
  }
  ///---------------------get Vehicles  Api Call ----------------------------
  static getVehicles()async{
    var url = "${Config.BASE_URL + Config.VERIFIER_MIDDLEWARE}/vehicles";
    var response = await http.get(Uri.parse(url),headers: header);
    CustomObject.responseStatus = response.statusCode;

    CustomObject.responseBody = response.body;

    return CustomObject.responseStatus;

  }

  ///---------------------get Requests Verifier2  Api Call ----------------------------
  static getRequestsVerifier2()async {
    var url = "${Config.BASE_URL + Config.VERIFIER_MIDDLEWARE}/requests";
    var response = await http.get(Uri.parse(url), headers: header);
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;
    return CustomObject.responseStatus;
  }

  ///---------------------get Item Overview  Api Call ----------------------------
  static getItemOverview()async {
    var url = "${Config.BASE_URL + Config.VERIFIER_MIDDLEWARE}/requests/${CustomObject.toBeVerifiedId}/overview";
    var response = await http.get(Uri.parse(url), headers: header);
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;
    return CustomObject.responseStatus;
  }


  ///---------------------security Guard  Api Call ----------------------------
  static securityGuard()async{
    var url = "${Config.BASE_URL + Config.VERIFIER_MIDDLEWARE}/guards";
    var response = await http.get(Uri.parse(url),headers: header);
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;
    print( response.statusCode.toString());
    return CustomObject.responseStatus;

  }
  ///---------------------get Request By Id  Api Call ----------------------------
  static getRequestById()async{
    var url = "${Config.BASE_URL + Config.VERIFIER_MIDDLEWARE}/requests/${CustomObject.toBeVerifiedId}";
    var response = await http.get(Uri.parse(url),headers: header);
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;
    return CustomObject.responseStatus;

  }
  ///---------------------get Security Bags  Api Call ----------------------------
  static getSecurityBags()async{
    var url = "${Config.BASE_URL + Config.VERIFIER_MIDDLEWARE}/bags";
    var response = await http.get(Uri.parse(url),headers: header);
    CustomObject.responseStatus = response.statusCode;
    print(response.statusCode.toString());
    CustomObject.responseBody = response.body;
    return CustomObject.responseStatus;

  }
  ///---------------------get Items Details  Api Call ----------------------------
  static getItemsDetails()async{
    var url = "${Config.BASE_URL + Config.VERIFIER_MIDDLEWARE}/styles";
    var response = await http.get(Uri.parse(url),headers: header);
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;
    return CustomObject.responseStatus;
  }
  ///---------------------get All Manager Handovers  Api Call ----------------------------
  static getAllManagerHandovers()async{
    var url = "${Config.BASE_URL+Config.MANAGER_MIDDLEWARE}/delivery?offset&limit";
    var response = await http.get(Uri.parse(url),headers: header);
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;
    return CustomObject.responseStatus;
  }
  ///---------------------get Delivery Overview Orders  Api Call ----------------------------
  static getDeliveryOverviewOrders()async{
    var url = "${Config.BASE_URL+Config.MANAGER_MIDDLEWARE}/delivery/overview";
    var response = await http.get(Uri.parse(url),headers: header);
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;
    return CustomObject.responseStatus;
  }
  ///---------------------get All Delivery Orders   Api Call ----------------------------
  static getAllDeliveryOrders(String status)async{
    var url = "${Config.BASE_URL+Config.MANAGER_MIDDLEWARE}/delivery?status=$status&offset=0&limit=0";
    var response = await http.get(Uri.parse(url),headers: header);
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;
    return CustomObject.responseStatus;
  }

  //--------------------- Get delivery by id api ----------------------------
  static getManagerDeliveryOrderById(String orderId) async {
    final id = orderId;

    final url = Uri.encodeFull("${Config.BASE_URL + Config.MANAGER_MIDDLEWARE}/delivery/$id");
    var response = await http.get(Uri.parse(url), headers: {
      'Content-Type': "application/json",
      "Authorization": 'Bearer ${CustomObject.token}',
    });
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;

    return CustomObject.responseStatus;
  }


  //--------------------- Get delivery by id api ----------------------------
  static getAllCaptains(String captainType)async{
    var url = "${Config.BASE_URL+Config.MANAGER_MIDDLEWARE}/captains?type=$captainType";
    var response = await http.get(Uri.parse(url),headers: header);
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;
    return CustomObject.responseStatus;
  }


  //--------------------- Get pickup Overview user data ----------------------------
  static getManagerPickupOverviewData()async {
    var url = "${Config.BASE_URL + Config.MANAGER_MIDDLEWARE}/pickups/overview";
    var response = await http.get(Uri.parse(url), headers: header);
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;
    return CustomObject.responseStatus;
  }

  //--------------------- Get pickup Overview user data ----------------------------
  static getManagerReturnedOrders(String status)async{
    var url = "${Config.BASE_URL+Config.MANAGER_MIDDLEWARE}/pickups?status=$status&offset=0&limit=0";
    var response = await http.get(Uri.parse(url),headers: header);
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;
    return CustomObject.responseStatus;
  }

  //--------------------- Get delivery by id api ----------------------------
  static getManagerPickupOrderById(String id) async {

    final url = Uri.encodeFull("${Config.BASE_URL + Config.MANAGER_MIDDLEWARE}/pickups/$id");
    var response = await http.get(Uri.parse(url), headers: {
      'Content-Type': "application/json",
      "Authorization": 'Bearer ${CustomObject.token}',
    });
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;
    return CustomObject.responseStatus;
  }


  //--------------------- Get pickup Overview user data ----------------------------
  static getManagerVerifyOverviewData()async{
    var url = "${Config.BASE_URL+Config.MANAGER_MIDDLEWARE}/verifier/overview";
    var response = await http.get(Uri.parse(url),headers: header);
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;
    return CustomObject.responseStatus;
  }

  static getAllVerifierOrders(String status)async{
    var url = "${Config.BASE_URL+Config.MANAGER_MIDDLEWARE}/verifier/requests?offset=0&limit=0&status=$status";
    var response = await http.get(Uri.parse(url),headers: header);
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;

    return CustomObject.responseStatus;
  }

  static getAllBoxes(String status)async{
    var url = "${Config.BASE_URL+Config.MANAGER_MIDDLEWARE}/verifier/boxes?status=$status";
    var response = await http.get(Uri.parse(url),headers: header);
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;
    return CustomObject.responseStatus;
  }

  //--------------------- Get delivery by id api ----------------------------
  static getVerifyBoxesById(String orderId) async {
    final id = orderId;

    final url = Uri.encodeFull("${Config.BASE_URL + Config.MANAGER_MIDDLEWARE}/verifier/boxes/$id");
    var response = await http.get(Uri.parse(url), headers: {
      'Content-Type': "application/json",
      "Authorization": 'Bearer ${CustomObject.token}',
    });
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;

    return CustomObject.responseStatus;
  }


  //--------------------- Get delivery by id api ----------------------------
  static getManagerVerifierOrder(String orderId) async {
    final id = orderId;

    final url = Uri.encodeFull("${Config.BASE_URL + Config.MANAGER_MIDDLEWARE}/verifier/boxes/$id");
    var response = await http.get(Uri.parse(url), headers: {
      'Content-Type': "application/json",
      "Authorization": 'Bearer ${CustomObject.token}',
    });
    CustomObject.responseStatus = response.statusCode;
    CustomObject.responseBody = response.body;

    return CustomObject.responseStatus;
  }


}