class Email {
  final int id;
  final String desde;
  final String asunto;
  final DateTime fechaHora;
  final String mensaje;
  bool leido;

  Email({
    required this.id,
    required this.desde,
    required this.asunto,
    required this.fechaHora,
    required this.mensaje,
    this.leido = false,
  });
}
