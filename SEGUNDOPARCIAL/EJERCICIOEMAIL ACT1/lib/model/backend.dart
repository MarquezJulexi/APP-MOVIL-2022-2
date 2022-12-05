import 'email.dart';

class Backend {
  ///Usamos el patrón de doseño Singlenton
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  /// Creamos los correos de forma estatica en este arrglo
  final _emails = [
    Email(
      id: 1,
      desde: 'holaquehace@gmail.com',
      asunto: 'Sin Asunto',
      fechaHora: DateTime(2022, 12, 03, 9, 34),
      mensaje:
          'Bum! Hola que tal date la vuelta',
    ),
    Email(
      id: 2,
      desde: 'holaquehace@gmail.com',
      asunto: 'TesttingMyLife',
      fechaHora: DateTime(2022, 12, 03, 9, 34),
      mensaje:
          'Yer, I am a the Juan',
    ),
    Email(
      id: 3,
      desde: 'revelingpjirl@gmail.com',
      asunto: 'SuperMario?',
      fechaHora: DateTime(2022, 12, 03, 9, 34),
      mensaje:
          'OMG! Is superMario? OMG! Hi superMario!',
    ),
    Email(
      id: 3,
      desde: 'holaquehace@gmail.com',
      asunto: 'Sin Asunto',
      fechaHora: DateTime(2022, 12, 03, 9, 34),
      mensaje:
          'Bum! Hola que tal date la vuelta',
    ),
    Email(
      id: 4,
      desde: 'elonMask@gmail.com',
      asunto: 'This is Elon Mask',
      fechaHora: DateTime(2022, 12, 03, 9, 34),
      mensaje:
          'This is Elon Mask, yes I am the real Elon Mask',
    ),
    Email(
      id: 5,
      desde: 'colors@gmail.com',
      asunto: 'colors',
      fechaHora: DateTime(2022, 12, 03, 9, 34),
      mensaje:
          'Pintarse la cara color esperanza, sacar los miedos afuera.',
    ),
  ];

  ///
  /// Public API starts here :)
  ///

  /// Returns all emails.
  List<Email> getEmails() {
    return _emails;
  }

  /// Marks email identified by its id as read.
  void markEmailAsRead(int id) {
    final index = _emails.indexWhere((email) => email.id == id);
    _emails[index].leido = true;
  }

  /// Deletes email identified by its id.
  void deleteEmail(int id) {
    _emails.removeWhere((email) => email.id == id);
  }
}
