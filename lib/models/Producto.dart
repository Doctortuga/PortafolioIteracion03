// To parse this JSON data, do
//
//     final producto = productoFromJson(jsonString);

import 'dart:convert';

List<Producto> productoFromJson(String str) => List<Producto>.from(json.decode(str).map((x) => Producto.fromJson(x)));

String productoToJson(List<Producto> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Producto {
    Producto({
        required this.idProducto,
        required this.nombre,
        required this.precio,
        required this.categoria,
        required this.formato,
        required this.nombreImagen,
        required this.imagenProducto,
    });

    int idProducto;
    String nombre;
    int precio;
    String categoria;
    String formato;
    String nombreImagen;
    int imagenProducto;

    factory Producto.fromJson(Map<String, dynamic> json) => Producto(
        idProducto: json["Id_Producto"],
        nombre: json["Nombre"],
        precio: json["Precio"],
        categoria: json["Categoria"],
        formato: json["Formato"],
        nombreImagen: json["NombreImagen"],
        imagenProducto: json["ImagenProducto"],
    );

    Map<String, dynamic> toJson() => {
        "Id_Producto": idProducto,
        "Nombre": nombre,
        "Precio": precio,
        "Categoria": categoria,
        "Formato": formato,
        "NombreImagen": nombreImagen,
        "ImagenProducto": imagenProducto,
    };
}
