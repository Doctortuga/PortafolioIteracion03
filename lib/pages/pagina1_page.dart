import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:estados/controllers/usuario_controller.dart';
import 'package:estados/models/usuario.dart';

class Pagina1Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final mesaCtrl = Get.put( ClienteController() );

    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 1'),
      ),
      body: Obx( 
        () => mesaCtrl.existeMesa.value 
              ? InformacionMesa( mesa: mesaCtrl.mesa.value )
              : NoInfo()
      ),

     floatingActionButton: FloatingActionButton(
       child: Icon( Icons.accessibility_new ),
      //  onPressed: () => Navigator.pushNamed(context, 'pagina2')
       onPressed: () => Get.toNamed('pagina2', arguments: {
         'idMesa':'123',
         'cantidad': 5,
         'disponibilidad': 1
       })
     ),
   );
  }
}


class NoInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('No hay Informacion Disponible'),
      ),
    );
  }
}


class InformacionMesa extends StatelessWidget {

  final Cliente mesa;

  const InformacionMesa({
    Key? key,
    required this.mesa
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.count(
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        crossAxisCount: 3,
        children: <Widget> [ 
            _crearMesa(mesa),
            _crearMesa(mesa),
            _crearMesa(mesa),
            _crearMesa(mesa),
            _crearMesa(mesa),
            _crearMesa(mesa),


        ],
      ),
    );
    
    
  }

  _crearMesa( Cliente mesa ) {

    return Container(
      width: 50,
      height: 50,
      color: Colors.red,
      child: Center(
              child: Text(mesa.idMesa.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
            ), 
    );
  }

}

 
  

