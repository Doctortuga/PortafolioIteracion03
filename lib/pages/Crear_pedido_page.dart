import 'package:estados/controllers/menu_Controller.dart';
import 'package:estados/controllers/producto_controller.dart';
import 'package:estados/models/Producto.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class PedidosPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {


  final MenuController menuController = Get.put(MenuController());
  final ProductoController productoController = Get.put(ProductoController());



    return Scaffold(
  
    appBar: AppBar(automaticallyImplyLeading: false, title: Center(child: Text('Cliente : 20.057689-6')),),
    
    body:  Center(
      child: SingleChildScrollView(
        child: Column(
             children: [
               _carrusel('Menus',menuController),
               _carrusel2('Bebesibles',productoController),
               _botonSiguiente(),
               SizedBox(width: 50,height: 50,)



             ],
           ),
      ),
    ) ,
     );
     
         
         
  }

  _carrusel(String nombreCarrusel,MenuController menuController) {


    String cantidadBebestible;
    String cantidadMeenu;

    return Container(
      height: 550,
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:50),
            child: Text(nombreCarrusel,style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: Obx(() => ListView.builder(
              
              scrollDirection: Axis.horizontal,
              itemCount: menuController.menusList.length ,
              itemBuilder: ( context , int index) {
                return Container(
                  width: 130,
                  height: 190,
                  margin: EdgeInsets.symmetric(horizontal: 10, ),
                  child: Column(
                    children:[
                         
                         GestureDetector(
                           onTap: (){print('A seleccionado el objeto');},
                           child: ClipRRect(
                             borderRadius: BorderRadius.circular(40),
                             child: FadeInImage(placeholder: AssetImage('assets/noimage.png'), 
                             image: NetworkImage('https://via.placeholder.com/300x400'),
                             height: 250,
                             width: 250,
                             fit: BoxFit.cover,
                             ),
                           ),
                         ),


                          SizedBox(
                            height: 20,
                          ),


                         Text(menuController.menusList[index].nombre,
                         maxLines: 2,
                         overflow: TextOverflow.ellipsis,
                         style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                         )
                          



                    ]
                  ),
                );
              },
            )),
          ),

        ],
      ),
    );

  }

  _botonSiguiente() {
    
    
    return GestureDetector(
      onTap: () => Get.toNamed('paginaGeneraPedidos'), 
      child: ClipRRect(
        borderRadius: BorderRadius.circular(80),
        child: Container(
          child: Center(child: Text('Añadir pedido',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30))),
          height: 80,
          width: 250,
          color: Colors.red,
        ),
      ),
    );
  }




 _carrusel2(String nombreCarrusel,ProductoController productoController) {
  
  final List<Producto> bebestiblesLista = [];

    ;

    for (var producto in productoController.productoList) {
      if (producto.categoria == 'Bebidas'  || producto.categoria ==  'Cervezas' || producto.categoria ==  'Agua' ) {
        bebestiblesLista.add(producto);
      }
      
    }

    return Container(
      height: 550,
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:50),
            child: Text(nombreCarrusel,style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: Obx(() => ListView.builder(
              
              scrollDirection: Axis.horizontal,
              itemCount: bebestiblesLista.length,
              itemBuilder: ( context , int index) {
                return Container(
                  width: 130,
                  height: 190,
                  margin: EdgeInsets.symmetric(horizontal: 10, ),
                  child: Column(
                    children:[
                         
                         GestureDetector(
                           onTap: (){print('A seleccionado el objeto');},
                           child: ClipRRect(
                             borderRadius: BorderRadius.circular(40),
                             child: FadeInImage(placeholder: AssetImage('assets/noimage.png'), 
                             image: NetworkImage(bebestiblesLista[index].nombreImagen),
                             height: 250,
                             width: 250,
                             fit: BoxFit.cover,
                             ),
                           ),
                         ),


                          SizedBox(
                            height: 20,
                          ),


                         Text(bebestiblesLista[index].nombre,
                         maxLines: 2,
                         overflow: TextOverflow.ellipsis,
                         style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                         )
                          



                    ]
                  ),
                );
              },
            )),
          ),

        ],
      ),
    );



 }}








