import 'package:estados/pages/Crear_pedido_page.dart';
import 'package:estados/pages/generar_pedido.dart';
import 'package:estados/pages/menuMesero.dart';
import 'package:estados/pages/mesas_page.dart';
import 'package:estados/pages/mostrarPedidosCocina.dart';
import 'package:estados/pages/rut_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:estados/pages/pagina1_page.dart';
import 'package:estados/pages/pagina2_page.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'paginaRut',
      // routes: {
      //   'pagina1': ( _ ) => Pagina1Page(),
      //   'pagina2': ( _ ) => Pagina2Page(),
      // },
      getPages: [
        GetPage(name: 'pagina1', page: () => Pagina1Page() ),
        GetPage(name: 'pagina2', page: () => Pagina2Page() ),
        GetPage(name: 'paginaRut', page: () => RutPage() ),
        GetPage(name: 'paginaMesas', page: () => MesasPage() ),
        GetPage(name: 'paginaPedidos', page: () => PedidosPage() ),
        GetPage(name: 'paginaGeneraPedidos', page: () => GenerarPedidoPage() ),
        GetPage(name: 'paginaMostrarPedidos', page: () => MostrarPedidosCocina() ),
        GetPage(name: 'paginaMostrarmenu', page: () => MenuMesero() )
      ],
    );
  }
}