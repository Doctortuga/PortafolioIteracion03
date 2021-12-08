

import 'package:estados/models/Producto.dart';
import 'package:estados/models/cartaMenu.dart';
import 'package:estados/models/mesa.dart';
import 'package:http/http.dart' as http ;


class RemoteServices{
  static var client  = http.Client();

  static Future<List<Mesa>?> fetchMesas() async {

  var response = await http.get((Uri.parse( 'http://localhost:51950/api/Mesa' ))) ;

   if( response.statusCode ==200 ){
     var jsonString= response.body;
     return mesaFromJson(jsonString);
   } else{
     return null;
   }
   }


static Future<List<Menu>?> fetchMenus() async {

  var response = await http.get((Uri.parse( 'http://localhost:51950/api/Menu' ))) ;

   if( response.statusCode ==200 ){
     var jsonString2= response.body;
     return menuFromJson(jsonString2);
   } else{
     return null;
   }
   }

   static Future<List<Producto>?> fetchProductos() async {

  var response = await http.get((Uri.parse( 'http://localhost:51950/api/Producto' ))) ;

   if( response.statusCode ==200 ){
     var jsonString3= response.body;
     return productoFromJson(jsonString3);
   } else{
     return null;
   }
   }

  }

      
  

    
  
