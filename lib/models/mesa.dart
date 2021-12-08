// To parse this JSON data, do
//
//     final mesa = mesaFromJson(jsonString);

import 'dart:convert';

List<Mesa> mesaFromJson(String str) => List<Mesa>.from(json.decode(str).map((x) => Mesa.fromJson(x)));

String mesaToJson(List<Mesa> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Mesa {
    Mesa({
        required this.nroMesa,
        required this.disponibilidad,
        required this.idReserva,
        required this.capacidad,
    });

    int nroMesa;
    String disponibilidad;
    int idReserva;
    int capacidad;

    factory Mesa.fromJson(Map<String, dynamic> json) => Mesa(
        nroMesa: json["Nro_mesa"],
        disponibilidad: json["Disponibilidad"],
        idReserva: json["Id_reserva"],
        capacidad: json["Capacidad"],
    );

    Map<String, dynamic> toJson() => {
        "Nro_mesa": nroMesa,
        "Disponibilidad": disponibilidad,
        "Id_reserva": idReserva,
        "Capacidad": capacidad,
    };
}













