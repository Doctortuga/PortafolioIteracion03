
import 'package:estados/controllers/mesa_controller.dart';
import 'package:estados/models/mesa.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';


class MesasPage extends StatelessWidget {
  final MesaController mesaController = Get.put(MesaController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mesas disponibles')),
      body: Container(
        child: Center(
          child: _crearMesas(context,mesaController),
        ),
      ),
    );
  }
}



_crearMesas(context ,MesaController mesaController) {

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child:  Obx(()=> StaggeredGridView.countBuilder(
        crossAxisSpacing: 5,
        itemCount: mesaController.mesasList.length,
        mainAxisSpacing: 5,
        crossAxisCount: 3,
        itemBuilder: (context , index ){ 
          
           return  GestureDetector(
                    onTap: (){ 
                      if (mesaController.mesasList[index].disponibilidad == 'Y') {
                        
                          Get.toNamed('paginaPedidos');
                        
                      }else return _crearAlertaMesaOcupada(context);
                       },
                     child: Container(
    
                        height: 50,
                        width: 50,
                        color: _condicionColor(mesaController,index),
                        child: Center(
                          child: Text(mesaController.mesasList[index].nroMesa.toString(), style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),
              ),
            ),
  );
       

      
      },
        staggeredTileBuilder: (index) => StaggeredTile.fit(1),
      )),
      
    );
    
  }
 Color _condicionColor(MesaController mesaController,index) {
  if (mesaController.mesasList[index].disponibilidad == 'Y' ) {
    return Colors.green;
    
  } if (mesaController.mesasList[index].disponibilidad == 'R' ) {
    return Colors.yellow;
  } return Colors.red;
}


  
_crearAlertaMesaOcupada(context){
  return  showDialog(context: context, builder: (context){
   return AlertDialog(
     
     title: Text('Mesa Reservada'),
     content: Column(
       mainAxisSize: MainAxisSize.min,
       children: [
         Text('Esta mesa ya se encuentra reservada,favor seleccione otra '),
         FlutterLogo(
           size: 100.0,
         )
       ],
     ),
     actions: [
       TextButton(onPressed: () => Get.back() , child: Text('Cancelar')),
       TextButton(onPressed: () => Get.back() , child: Text('Solicitar ayuda'))

     ],
   );
  });
}




