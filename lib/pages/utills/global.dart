import 'package:resume_builder_app/pages/utills/heders_utills.dart';

class Globals {
  String? firstName, lastName, email, phone, address;
  File? image;

  Globals._();

  static final Globals globals = Globals._();

  void reset() {
    firstName = lastName = email = phone = address = null;
  }
}
