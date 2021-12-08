// To parse this JSON data, do
//
//     final menu = menuFromJson(jsonString);

import 'dart:convert';

List<Menu> menuFromJson(String str) => List<Menu>.from(json.decode(str).map((x) => Menu.fromJson(x)));

String menuToJson(List<Menu> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Menu {
    Menu({
       required  this.idMenu,
       required  this.nombre,
       required  this.precio,
       required  this.recetaIdReceta,
    });

    int idMenu;
    String nombre;
    int precio;
    int recetaIdReceta;

    factory Menu.fromJson(Map<String, dynamic> json) => Menu(
        idMenu: json["Id_menu"],
        nombre: json["Nombre"],
        precio: json["Precio"],
        recetaIdReceta: json["Receta_id_receta"],
    );

    Map<String, dynamic> toJson() => {
        "Id_menu": idMenu,
        "Nombre": nombre,
        "Precio": precio,
        "Receta_id_receta": recetaIdReceta,
    };
}
