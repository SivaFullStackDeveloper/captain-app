import 'package:get/get.dart';



class RefinedReportsDetailController extends FullLifeCycleController{
  var isLoading = false.obs;
  var value = false.obs;


  List reportItem = ['Assigned','Packed','Canceled','Shipped'];

  @override
  void onInit() {
    super.onInit();
  }


}