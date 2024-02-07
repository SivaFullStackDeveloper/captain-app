import 'package:captain_app/deliveryFlow/screens/canceledOrder/controller/CanceledOrderController.dart';
import 'package:captain_app/deliveryFlow/screens/dashboard/controller/DashboardController.dart';
import 'package:captain_app/deliveryFlow/screens/tobePacked/controller/PackOrdersController.dart';
import 'package:captain_app/managerFlow/screen/verifiedOrder/tobeAssigned/child/toBeAssignedDetail/controller/ToBeAssignedDetailController.dart';
import 'package:captain_app/pickupFlow/pickupScreens/checkedOrder/child/checkedOrderDetail/controller/CheckedOrderDetailController.dart';
import 'package:captain_app/pickupFlow/pickupScreens/checkedOrder/controller/CheckedOrderController.dart';
import 'package:captain_app/verifierFlow/screens/homeScreen/controller/ToBeVerifiedController.dart';
import 'package:get/get.dart';
import '../../allUsersAuthentication/auth/login/controller/LoginController.dart';
import '../../allUsersAuthentication/auth/otpVerification/controller/OtpVerificationController.dart';
import '../../allUsersAuthentication/mpin/registerNewMPin/controller/RegisterNewMPinController.dart';
import '../../allUsersAuthentication/splash/controller/SplashController.dart';
import '../../utils/LocaleController/LocaleController.dart';
import '../deliveryFlow/screens/reports/controller/DeliveryReportsController.dart';
import '../deliveryFlow/screens/tobePacked/child/controller/ReviewOrdersController.dart';
import '../managerFlow/screen/dashboard/controller/ManagerDashboardController.dart';
import '../managerFlow/screen/deliveryOrders/child/cancelledOrder/child/controller/CancelledOrderDetailController.dart';
import '../managerFlow/screen/deliveryOrders/child/cancelledOrder/controller/CancelledOrderController.dart';
import '../managerFlow/screen/deliveryOrders/child/shipped/child/controller/ShippedDetailController.dart';
import '../managerFlow/screen/deliveryOrders/child/tobeShipped/child/child/child/handoverOtpVerification/controller/HandoverOtpVerificationController.dart';
import '../managerFlow/screen/deliveryOrders/child/tobeShipped/child/child/controller/ToBeShippedOrderDetailController.dart';
import '../managerFlow/screen/deliveryOrders/child/tobeShipped/controller/TobeShippedController.dart';
import '../managerFlow/screen/deliveryOrders/controller/DeliveryOrdersController.dart';
import '../managerFlow/screen/pickupOrder/controller/PickupOrdersController.dart';
import '../managerFlow/screen/pickupOrder/tobeRefunded/child/controller/TobeRefundedDetailController.dart';
import '../managerFlow/screen/pickupOrder/tobeRefunded/controller/TobeRefundedController.dart';
import '../managerFlow/screen/pickupOrder/tobeReturned/child/controller/ToBeReturnedDetailController.dart';
import '../managerFlow/screen/pickupOrder/tobeReturned/controller/ToBeReturnedController.dart';
import '../managerFlow/screen/refinedOrder/tobeDelivered/controller/TobeDeliveredController.dart';
import '../managerFlow/screen/refinedOrder/tobeReceived/controller/TobeReceivedController.dart';
import '../managerFlow/screen/verifiedOrder/sendToWarehouse/child/sendToWarehouseDetail/controller/SendToWarehouseDetailController.dart';
import '../managerFlow/screen/verifiedOrder/sendToWarehouse/controller/SendToWarehouseController.dart';
import '../managerFlow/screen/verifiedOrder/toBeHandovered/child/ToBeHandoveredDetail/controller/ToBeHandoveredDetailController.dart';
import '../managerFlow/screen/verifiedOrder/toBeHandovered/controller/ToBeHandoveredController.dart';
import '../managerFlow/screen/verifiedOrder/tobeAssigned/child/toBeAssignedDetail/child/toBeAssignedOtpVerification/controller/ToBeAssignedOtpVerificationController.dart';
import '../managerFlow/screen/verifiedOrder/tobeAssigned/controller/TobeAssignedController.dart';
import '../managerFlow/screen/verifiedOrder/tobeDelivered/child/toBeDeliveredDetail/child/sealItems/controller/SealItemController.dart';
import '../managerFlow/screen/verifiedOrder/tobeDelivered/child/toBeDeliveredDetail/controller/TobeDeliveredDetailController.dart';
import '../managerFlow/screen/verifiedOrder/tobeDelivered/controller/TobeDeliveredForVerifyController.dart';
import '../pickupFlow/pickupScreens/pickupDashboard/controller/PickupDashboardController.dart';
import '../pickupFlow/pickupScreens/receivePickup/controller/ReceivePickupOrderController.dart';
import '../pickupFlow/pickupScreens/rejectedOrders/child/rejectedOrdersDetail/controller/RejectedOrdersDetailsController.dart';
import '../pickupFlow/pickupScreens/rejectedOrders/controller/RejectedOrdersController.dart';
import '../utils/commonController/CommonController.dart';
import '../verifierFlow/screens/confirmation/controller/VerifyItemController.dart';
import '../verifierFlow/screens/detail/controller/ItemDetailController.dart';
import '../verifierFlow/screens/selectVehicle/controller/SelectVehicleController.dart';
import '../verifierFlow/screens/toBeReached/controller/ToBeReachedController.dart';
import '../verifierFlow/screens/verifyItem/controller/VerifyItemController.dart';
import '../verifierFlow/screens/verifyItemChild/controller/MeltController.dart';

class ControllerBinding implements Bindings{
  @override
  void dependencies() {

    ///===================== Auth Controllers ==========================
    Get.lazyPut<SplashController>(() => SplashController());
    Get.lazyPut<LoginController>(() => LoginController());
    Get.lazyPut<OtpVerificationController>(() => OtpVerificationController());
    Get.lazyPut<RegisterNewMPinController>(() => RegisterNewMPinController());


    ///========================= Delivery Controllers ========================
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<LocaleController>(() => LocaleController());
    Get.lazyPut<ToBePackedOrdersController>(() => ToBePackedOrdersController());
    Get.lazyPut<ReviewOrdersController>(() => ReviewOrdersController());
    Get.lazyPut<DeliveryReportsController>(() => DeliveryReportsController());


    ///====================== Pickup Controllers ========================
    Get.lazyPut<PickupDashboardController>(() => PickupDashboardController());
    Get.lazyPut<CheckedOrderDetailController>(() => CheckedOrderDetailController());
    Get.lazyPut<CheckedOrderController>(() => CheckedOrderController());
    Get.lazyPut<ReceivePickupController>(() => ReceivePickupController());
    Get.lazyPut<RejectedOrdersController>(() => RejectedOrdersController());
    Get.lazyPut<RejectedOrdersDetailsController>(() => RejectedOrdersDetailsController());


    ///========================== Manager Controllers ============================

    Get.lazyPut<ManagerDashboardController>(() => ManagerDashboardController());
    Get.lazyPut<DeliveryOrdersController>(() => DeliveryOrdersController());
    Get.lazyPut<TobeShippedController>(() => TobeShippedController());
    Get.lazyPut<CanceledOrderController>(() => CanceledOrderController());
    Get.lazyPut<ToBeReturnedController>(() => ToBeReturnedController());
    Get.lazyPut<ToBeReturnedDetailController>(() => ToBeReturnedDetailController());
    Get.lazyPut<TobeRefundedDetailController>(() => TobeRefundedDetailController());
    Get.lazyPut<TobeAssignedController>(() => TobeAssignedController());
    Get.lazyPut<ToBeAssignedDetailController>(() => ToBeAssignedDetailController());
    Get.lazyPut<ToBeAssignedOtpVerificationController>(() => ToBeAssignedOtpVerificationController());
    Get.lazyPut<TobeReceivedController>(() => TobeReceivedController());
    Get.lazyPut<CancelledOrderController>(() => CancelledOrderController());
    Get.lazyPut<CancelledOrderDetailController>(() => CancelledOrderDetailController());
    Get.lazyPut<ShippedDetailController>(() => ShippedDetailController());
    Get.lazyPut<ToBeShippedOrderDetailController>(() => ToBeShippedOrderDetailController());
    Get.lazyPut<HandoverOtpVerificationController>(() => HandoverOtpVerificationController());
    Get.lazyPut<TobeRefundedController>(() => TobeRefundedController());
    Get.lazyPut<TobeDeliveredForVerifyController>(() => TobeDeliveredForVerifyController());
    Get.lazyPut<TobeDeliveredForVerifierDetailController>(() => TobeDeliveredForVerifierDetailController());
    Get.lazyPut<SealItemController>(() => SealItemController());
    Get.lazyPut<SendToWarehouseController>(() => SendToWarehouseController());
    Get.lazyPut<SendToWarehouseDetailController>(() => SendToWarehouseDetailController());
    Get.lazyPut<ToBeHandoveredController>(() => ToBeHandoveredController());
    Get.lazyPut<ToBeHandoveredDetailController>(() => ToBeHandoveredDetailController());


    Get.lazyPut<PickupOrdersController>(() => PickupOrdersController());

    ///========================= Common Controller ================================
    Get.lazyPut<CommonController>(() => CommonController());

    ///====================== Verifier Controllers ========================

    Get.lazyPut<VerifierHomeScreenController>(() => VerifierHomeScreenController());
    Get.lazyPut<SelectVehicleController>(() => SelectVehicleController());
    Get.lazyPut<ToBeReachedController>(() => ToBeReachedController());
    Get.lazyPut<ItemDetailController>(() => ItemDetailController());
    Get.lazyPut<VerifyItemController>(() => VerifyItemController());
    Get.lazyPut<VerifyConfirmationItemController>(() => VerifyConfirmationItemController());
    Get.lazyPut<MeltController>(() => MeltController());

  }

}