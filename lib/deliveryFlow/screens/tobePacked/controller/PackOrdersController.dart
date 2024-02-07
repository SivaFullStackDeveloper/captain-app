import 'package:get/get.dart';
import '../../../../apiServices/repository/GetRoutes.dart';
import '../../../../utils/customObject/CustomObject.dart';
import '../../dashboard/model/OrdersModel.dart';

class ToBePackedOrdersController extends FullLifeCycleController{
  var isLoading = false.obs;
  List<OrdersModel> allOrders = <OrdersModel>[].obs;
  var allOrdersLength = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getAllShippedOrder("");
  }

  ///-------------------- Get All shipped order api call function -------------------------
  void getAllShippedOrder(String status)async{
    try{
      isLoading.value = true;
      await GetRoutes.getOrders(status);
      switch(CustomObject.responseStatus){
        case 200:
          var result  = ordersModelFromMap(CustomObject.responseBody);
          allOrders =  result;
          allOrdersLength.value = allOrders.length;
      }
    }finally{
      isLoading.value = false;
    }
  }


}