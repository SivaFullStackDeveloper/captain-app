import 'package:get/get.dart';

import '../../../../apiServices/repository/GetRoutes.dart';
import '../../../../constants/ConstantColor.dart';
import '../../../../constants/ConstantString.dart';
import '../../../../utils/AnimationMessage.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../../submitted/SubmittedScaffold.dart';
import '../../toBeVerified/ToBeVerifiedScaffold.dart';
import '../model/overviewModel/GetRequestVerifier.dart';
import '../model/overviewModel/OverViewModel.dart';

class VerifierHomeScreenController extends GetxController {
  var toBeVerified = 0.obs;
  var toBeSubmitted = 0.obs;
  var isLoading = false.obs;
  var length = 0.obs;
  var animMessage = AnimationMessage();
  var selected  = ''.obs;
  List<GetVerifierRequests> requests = <GetVerifierRequests>[].obs;

  @override
  void onInit() {
    super.onInit();
    print('started *************************');
    overview();
    getRequestsVerifierForList();

  }


  /// ------------------------------------- Overview Api Function   ------------------------------

  void overview() async {
    try {
      isLoading.value = true;

      await GetRoutes.getOverview();

      switch (CustomObject.responseStatus) {
        case 200:
          var responseData = getOverViewFromJson(CustomObject.responseBody);
          toBeVerified.value = responseData.toBeVerified;
          toBeSubmitted.value = responseData.toBeSubmitted;
          isLoading.value = false;
          break;

        case 400:
          animMessage.toast(ConstantString.in400, ConstantColor.darkRedColor);
          break;
        case 401:
          animMessage.toast(ConstantString.in401, ConstantColor.darkRedColor);
          break;
        case 422:
          animMessage.toast(ConstantString.in422, ConstantColor.darkRedColor);
          break;
        case 500:
          animMessage.toast(ConstantString.in500, ConstantColor.darkRedColor);
          break;
      }
    } finally {
      isLoading.value = false;
    }
  }



  /// ------------------------------------- get Requests Verifier Api Function   ------------------------------


  void getRequestsVerifier() async {
    try {
      isLoading.value = true;

      await GetRoutes.getRequestsVerifier(selected.value);

      switch (CustomObject.responseStatus) {
        case 200:
          var responseData =
              getVerifierRequestsFromJson(CustomObject.responseBody);
          requests = responseData;
          length.value = responseData.length;
          isLoading.value = false;
          if(selected == 'toBeVerified'){
            Get.to(()=>const ToBeVerifiedScaffold());

          }else if(selected == 'toBeSubmitted'){
            Get.to(() => const  SubmittedScaffold());
          }
          break;
        case 201:
          var responseData = getOverViewToJson(CustomObject.responseBody);
          length.value = responseData.length;
          print(responseData.length.toString());
          isLoading.value = false;
          // print("------------->>>Token    "+ result.mpinToken);
          break;
        case 400:
          animMessage.toast(ConstantString.in400, ConstantColor.darkRedColor);
          break;
        case 401:
          animMessage.toast(ConstantString.in401, ConstantColor.darkRedColor);
          break;
        case 422:
          animMessage.toast(ConstantString.in422, ConstantColor.darkRedColor);
          break;
        case 500:
          animMessage.toast(ConstantString.in500, ConstantColor.darkRedColor);
          break;
      }
    } finally {
      isLoading.value = false;
    }
  }









  /// ------------------------------------- get Requests Verifier for home screen bottom list Api Function   -------------------


  void getRequestsVerifierForList() async {
    try {
      isLoading.value = true;

      await GetRoutes.getRequestsVerifier2();

      switch (CustomObject.responseStatus) {
        case 200:
          var responseData =
          getVerifierRequestsFromJson(CustomObject.responseBody);
          requests = responseData;
          length.value = responseData.length;
          isLoading.value = false;
          break;
        case 400:
          animMessage.toast(ConstantString.in400, ConstantColor.darkRedColor);
          break;
        case 401:
          animMessage.toast(ConstantString.in401, ConstantColor.darkRedColor);
          break;
        case 422:
          animMessage.toast(ConstantString.in422, ConstantColor.darkRedColor);
          break;
        case 500:
          animMessage.toast(ConstantString.in500, ConstantColor.darkRedColor);
          break;
      }
    } finally {
      isLoading.value = false;
    }
  }
}
