
class Cliente {
  
  String? idMesa;
  int? disponibilidad;
  int? cantidad;
  List<String> personas;

  Cliente({
    this.idMesa,
    this.cantidad,
    this.disponibilidad,
    this.personas = const []
  });

}