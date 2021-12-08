import 'package:get/get.dart';

class SeleccionController extends GetxController{
   var listaIDS = [].obs;


addID(item) => listaIDS.add(item);
removeID(item) => listaIDS.remove(item);




}