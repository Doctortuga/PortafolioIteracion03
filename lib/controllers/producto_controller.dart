


import 'package:estados/models/Producto.dart';
import 'package:estados/services/remote_Services.dart';
import 'package:get/get.dart';

class ProductoController extends GetxController
{
  var productoList = <Producto>[].obs;

    @override
    void onInit() {
      fetchProductos();
      super.onInit();
      
    }


  void fetchProductos() async {
    var productos = await RemoteServices.fetchProductos();
    if( productos != null ){
      productoList.value = productos;
    }
    
  }

}