import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../../service/home/service_home.dart';

class ControllerHome extends GetxController{
  final ServiceHome serviceHome = ServiceHome();
  RxBool isOpenDropDown = false.obs;
  RxString selectName = "Semua Toko".obs;
  RxString selectCustID = "".obs;
  RxList filter = [].obs;

  void initData(){
    getCustomerTTH();
    getCustomer();
  }

  Map<String, dynamic> jsonCustomerTTH = {};
  RxBool isLoadingCustomerTTH = true.obs;
  Future getCustomerTTH()async{
    isLoadingCustomerTTH.value = true;

    jsonCustomerTTH = await serviceHome.getCustomerTTH();
    isLoadingCustomerTTH.value = false;
  }


  Map<String, dynamic> jsonCustomer = {};
  RxBool isLoadingCustomer = true.obs;
  Future getCustomer()async{
    isLoadingCustomer.value = true;

    jsonCustomer = await serviceHome.getCustomer();
    jsonCustomer["result"].insert(
      0,
      {
        "CustID":  "",
        "Name": "Semua Toko",
        "Address": "",
        "BranchCode": "",
        "PhoneNo": ""
      }
    );
    isLoadingCustomer.value = false;
  }
  
}