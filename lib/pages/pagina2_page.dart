import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:estados/controllers/usuario_controller.dart';
import 'package:estados/models/usuario.dart';

class Pagina2Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    // print( Get.arguments['edad'] );
    final mesaCtrl = Get.find<ClienteController>();


    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MaterialButton(
              child: Text('Establecer Usuario', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {
                mesaCtrl.cargarMesa( Cliente(idMesa: '123', cantidad: 5 , disponibilidad: 1 ) );
                Get.snackbar(
                  'Usuario establecido', 
                  'Fernando es el nombre del usuario',
                  backgroundColor: Colors.white,
                  boxShadows: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 10
                    )
                  ]
                );
              }
            ),

            MaterialButton(
              child: Text('Cambiar Edad', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {
                mesaCtrl.cambiarCantidad(25);
              }
            ),

            MaterialButton(
              child: Text('Añadir Profesion', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {
                // usuarioCtrl.agregarProfesion( 'Profesión #${ usuarioCtrl.usuario.value.profesiones.length + 1 }' );
                mesaCtrl.agregarPersona( 'Pedidos #${ mesaCtrl.personasCount + 1 }' );
              }
            ),

            MaterialButton(
              child: Text('Cambair tema', style: TextStyle( color: Colors.white ) ),
              color: Colors.blue,
              onPressed: () {
                Get.changeTheme( Get.isDarkMode ? ThemeData.light() : ThemeData.dark() );
              }
            ),

          ],
        )
     ),
   );
  }
}