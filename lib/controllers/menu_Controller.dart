import 'package:estados/models/cartaMenu.dart';
import 'package:estados/services/remote_Services.dart';
import 'package:get/get.dart';

class MenuController extends GetxController
{
  var menusList = <Menu>[].obs;

    @override
    void onInit() {
      fetchMenus();
      super.onInit();
      
    }


  void fetchMenus() async {
    var menus = await RemoteServices.fetchMenus();
    if( menus != null ){
      menusList.value = menus;
    }
    
  }

}