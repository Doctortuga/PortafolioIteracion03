
import 'package:get/get.dart';
import 'package:estados/models/usuario.dart';

class ClienteController extends GetxController {

  var existeMesa = false.obs;
  var mesa = new Cliente().obs;

  int get personasCount {
    return this.mesa.value.personas.length;
  }

  void cargarMesa( Cliente mesa) {
     
    this.existeMesa.value = true;
    
  }

  void cambiarCantidad( int cantidad ) {
    this.mesa.update((val) {
      val!.cantidad = cantidad;
    });
  }

  void agregarPersona( String persona ) {
    this.mesa.update((val) {
      val!.personas = [ ...val.personas, persona ];
    });
  }

}