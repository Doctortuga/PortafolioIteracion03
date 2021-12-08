
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http ;



class RutPage extends StatefulWidget {
  @override
  State<RutPage> createState() => _RutPageState();
}

class _RutPageState extends State<RutPage> {
  String _nombre = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(child: Icon(Icons.settings),
          onTap: () {_crearAlertaMesaOcupada(context);},
          ),
          SizedBox(width: 25,)
        ],
        title: Center(child: Text('Restaurant Siglo XX')),
      ),
      body: Center(
        child: 
        Column(
          children: [
          SizedBox(height: 20),
         _crearDescripcion(),
        _crearcampoRut(),
        _crearBoton()
        ],)
        ),
    );
  }

  _crearcampoRut() {

      
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0 , vertical:  10.0 ),
      child: TextField(
        autofocus: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0)
          ),
          counter: Text(_nombre.length.toString()),
          hintText: 'Ingrese su rut ',
          labelText:'Rut' ,
          helperText: 'Ingrese su rut para comenzar su atencion ',
            suffixIcon: Icon(Icons.ac_unit),
            icon: Icon(Icons.account_circle)
        ),
        onChanged: ( valor ){
          setState(() {
            
          });
          _nombre = valor;
          
        },
        
      ),
    );
  }

  _crearBoton() {

    return TextButton(
      onPressed: () => Get.toNamed('paginaMesas'), 
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all()
        ),
        
        height: 50,
        width: 150,
        child: Center(child: Text('BUSCAR RUT '),),
      ));
  }

  _crearDescripcion() {


    return
  Container(
    decoration: BoxDecoration(
      border:Border.all(color: Colors.blueAccent),
    ),
height:   250 ,
width:  350,
child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Text('Bienvenido a ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
    Text(' restaurant SIGLO XX ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25)),
    Text('Ingresar su rut porfavor... ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),



  ],
),
    );
  }

   _crearAlertaMesaOcupada(BuildContext context) {
     
     return showDialog(context: context, builder: (context) =>
      AlertDialog(
        title: Text('Acceso Restringido'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Este boton es solo para personal autorizado'),
            Text('Ingrese su clave de acceso porfavor '),
            TextFormField()

          
        ],),
        actions: [
          TextButton(onPressed: () => Get.back(), child: Text('cancelar')),

           GestureDetector (
             onTap: () => Get.toNamed('paginaMostrarmenu'),
            //  onTap: ()
             child: Text('continuar',style: TextStyle(color: Colors.blue),)),

        ],
      )
     );
  }
}

