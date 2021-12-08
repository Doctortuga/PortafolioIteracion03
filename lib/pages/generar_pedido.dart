

import 'package:flutter/material.dart';

class GenerarPedidoPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalle de su pedido'),),
      

      body:ListView(
        children: [
          SizedBox(height: 20),
          _crearTarjetas('pollito','papas fritas','helado','Sprite'),
          _crearTarjetas('carne','pure','jalea','cerveza'),
          _crearTarjetas('pescado','arroz','muss','coca cola'),
          _crearTarjetas('tortilla','','bananSplit','fanta'),
          _crearTarjetas('tortilla','','bananSplit','fanta'),
          _crearTarjetas('tortilla','','bananSplit','fanta'),
          _crearTarjetas('tortilla','','bananSplit','fanta'),
             SizedBox(height: 50,),
          _enviarPedido()


        ],
      ),
    
    
    
    );
  }

  _crearTarjetas(String principal , String acompanante ,String postre,String bebestible) {
  

    
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          ListTile(
            leading: Text('1',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            title: Row(
              children: [
                Text(principal),
                SizedBox(width: 20),
                Text(acompanante),
                SizedBox(width: 20),
                Text(postre),
                SizedBox(width: 20),
                Text(bebestible)
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                
                onPressed: (){},
                 child: Text('Añadir comentario'))
            ],
          )
        ],
      ),
    );
  }

  _enviarPedido() {


    return MaterialButton(onPressed: (){
      print('Su orden se a enviado a la cocina correctamente');
    },
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Card(color: Colors.blueAccent,
            child: Center(child: Text('Enviar orden a la cocina',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30) ,),),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 15.0,
      ),
    ),
    );
  }
}