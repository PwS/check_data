import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';

class MainTaskNotifier with ChangeNotifier {
  ///DECLAREVARIABLE
  TextEditingController _controllerBBM = TextEditingController();

  ///GETTER SETTER
  TextEditingController get controllerBBM => _controllerBBM;
}
