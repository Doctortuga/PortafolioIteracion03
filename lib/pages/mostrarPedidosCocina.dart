

import 'package:flutter/material.dart';

class MostrarPedidosCocina extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PEDIDOS ACTIVOS '),
      ),
      body:Center(child: Column(
        children: [
          SizedBox(height: 40,),
          _CrearPanel('Cazuela',2,'13:15',1),
          SizedBox(height: 40,),
          _CrearPanel('Pulpa y papas',3,'13:40',2),
          SizedBox(height: 40,),
          _CrearPanel('Carbonada',1,'14:00',3),
          SizedBox(height: 40,),
          _CrearPanel('Porotos',2,'14:25',4),

        ],
      ),)
    );
  }

  _CrearPanel(String nombrePlato,int cantidadPlatillo,String horaLlegada, int numeroOrden ) {

      return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          ListTile(
            leading: Text(numeroOrden.toString(),style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.red),),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(nombrePlato,style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold)),
                SizedBox(width: 20,),
                Text(cantidadPlatillo.toString(),style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold)),
                SizedBox(width: 20),
                Text(horaLlegada,style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold)),
                SizedBox(width: 20),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                
                onPressed: (){},
                 child: Text('Ver Preparacion ',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)))
            ],
          )
        ],
      ),
    );
  }
}