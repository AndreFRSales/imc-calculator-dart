import 'package:imc_calculator/models/person.dart';

class IMCCalculator {
  Person _person;
  static final Map<double, String> _imcScale = {
    16: "Magreza grave",
    17: "Magreza moderada",
    18.5: "Saudável",
    25: "Sobrepeso",
    30: "Obesidade Grau I",
    35: "Obesidade Grau II",
    40: "Obesidade Mórbida"
  };

  IMCCalculator(this._person);

  double _calculate() {
    var personHeight = _person.getHeight();
    var height = personHeight * personHeight;
    var imc = (_person.getWeight() / height);

    return imc;
  }

  String getScale() {
    var imc = _calculate();
    String scale = _imcScale[_imcScale.keys.first] ?? "";
    for (var key in _imcScale.keys) {
      if (imc >= key) {
        scale = _imcScale[key] ?? "";
      } else {
        break;
      }
    }
    return scale;
  }
}
