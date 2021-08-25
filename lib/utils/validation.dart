part of 'utils.dart';

class Validation with ChangeNotifier {
  String? stringValidation(String value) {
    if (value.isEmpty || value == '') {
      return 'This field is required';
    } else {
      return null;
    }
  }
}
