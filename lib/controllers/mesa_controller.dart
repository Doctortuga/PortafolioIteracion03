


import 'package:estados/models/mesa.dart';
import 'package:estados/services/remote_Services.dart';
import 'package:get/get.dart';

class MesaController extends GetxController
{
  var mesasList = <Mesa>[].obs;

    @override
    void onInit() {
      fetchMesas();
      super.onInit();
      
    }


  void fetchMesas() async {
    var mesas = await RemoteServices.fetchMesas();
    if( mesas != null ){
      mesasList.value = mesas;
    }
    
  }

}