import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MenuMesero extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('MENU MESERO ')),
      body: Center(child: GestureDetector(
        
        onTap: () => Get.toNamed('paginaMostrarPedidos'),
        child: Container(child: Text('MOSTRAR PANEL COCINA'),)),),
      
    );
  }
}